#!/usr/bin/env python3
"""Create a reverse-engineering bundle from an ESP32-family firmware binary."""

from __future__ import annotations

import argparse
import hashlib
import re
import shutil
import subprocess
from pathlib import Path

from esp32_firmware_mapper import EspImage, find_partition_table, parse_esp_image


DEFAULT_OBJDUMP = (
    "/Users/beegee/Library/Arduino15/packages/esp32/tools/esp-x32/2511/bin/"
    "xtensa-esp32s3-elf-objdump"
)


def is_executable_addr(addr: int) -> bool:
    return (
        0x40000000 <= addr <= 0x40FFFFFF
        or 0x42000000 <= addr <= 0x42FFFFFF
        or 0x40370000 <= addr <= 0x403FFFFF
    )


def load_ascii_strings(data: bytes, min_len: int = 6) -> list[tuple[int, str]]:
    out: list[tuple[int, str]] = []
    pattern = re.compile(rb"[\x20-\x7E]{%d,}" % min_len)
    for m in pattern.finditer(data):
        out.append((m.start(), m.group().decode("ascii", "ignore")))
    return out


def choose_objdump(explicit: str | None) -> str | None:
    if explicit:
        return explicit
    if Path(DEFAULT_OBJDUMP).exists():
        return DEFAULT_OBJDUMP
    found = shutil.which("xtensa-esp32s3-elf-objdump")
    return found


def write_text(path: Path, content: str) -> None:
    path.write_text(content, encoding="utf-8")


def extract_image_bytes(data: bytes, image: EspImage) -> bytes:
    return data[image.offset : image.offset + image.total_size]


def main() -> int:
    parser = argparse.ArgumentParser(description="Build an ESP firmware recon bundle.")
    parser.add_argument("binary", type=Path, help="Input firmware .bin")
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=None,
        help="Output directory (default: reports/firmware/<name>_recon)",
    )
    parser.add_argument(
        "--objdump",
        type=str,
        default=None,
        help="Path to xtensa-esp32s3-elf-objdump (auto-detected if omitted)",
    )
    args = parser.parse_args()

    data = args.binary.read_bytes()
    stem = args.binary.stem
    out_dir = (
        args.out_dir
        if args.out_dir is not None
        else Path(__file__).resolve().parents[1] / "reports" / "firmware" / f"{stem}_recon"
    )
    out_dir.mkdir(parents=True, exist_ok=True)

    objdump = choose_objdump(args.objdump)

    table = find_partition_table(data)
    boot_limit = table.offset if table else len(data)
    bootloader = parse_esp_image(data, 0, boot_limit)

    summary_lines: list[str] = []
    summary_lines.append(f"Input: {args.binary}")
    summary_lines.append(f"File SHA256: {hashlib.sha256(data).hexdigest()}")
    summary_lines.append(f"Output: {out_dir}")
    summary_lines.append("")

    if bootloader is not None:
        boot_bytes = extract_image_bytes(data, bootloader)
        (out_dir / "bootloader.bin").write_bytes(boot_bytes)
        summary_lines.append(
            f"bootloader.bin: offset=0x{bootloader.offset:08X} size=0x{bootloader.total_size:08X}"
        )
    else:
        summary_lines.append("bootloader: not parsed")

    if table is not None:
        table_len = 0x1000
        table_end = min(table.offset + table_len, len(data))
        (out_dir / "partitions.bin").write_bytes(data[table.offset:table_end])
        summary_lines.append(
            f"partitions.bin: offset=0x{table.offset:08X} size=0x{table_end - table.offset:08X}"
        )
    else:
        summary_lines.append("partition table: not found")
        write_text(out_dir / "RECON_SUMMARY.txt", "\n".join(summary_lines) + "\n")
        return 0

    app_images: list[tuple[str, int, EspImage]] = []
    for entry in table.entries:
        if entry.p_type != 0x00:
            continue
        if entry.offset >= len(data):
            continue
        limit = min(len(data), entry.offset + entry.size)
        image = parse_esp_image(data, entry.offset, limit)
        if image is not None:
            app_images.append((entry.label, entry.offset, image))

    if not app_images:
        summary_lines.append("application images: none parsed")
        write_text(out_dir / "RECON_SUMMARY.txt", "\n".join(summary_lines) + "\n")
        return 0

    # Prioritize app0, then first valid app image.
    app_images.sort(key=lambda item: (0 if item[0] == "app0" else 1, item[1]))
    label, _, app_image = app_images[0]
    app_bytes = extract_image_bytes(data, app_image)
    app_path = out_dir / f"{label}.bin"
    app_path.write_bytes(app_bytes)
    summary_lines.append(
        f"{label}.bin: offset=0x{app_image.offset:08X} size=0x{app_image.total_size:08X}"
    )

    seg_dir = out_dir / "segments"
    seg_dir.mkdir(exist_ok=True)
    disasm_dir = out_dir / "disasm"
    disasm_dir.mkdir(exist_ok=True)

    string_index_lines = ["# Strings (segment offset + runtime address + text)"]
    keyword_lines = ["# Behavior anchors"]
    anchor_words = (
        "SEEK",
        "ETM",
        "Waterfall",
        "Mono",
        "Stereo",
        "Firmware",
        "SIGNAL",
        "MENU",
        "Scan",
        "Sleep",
    )

    for seg in app_image.segments:
        seg_bytes = data[seg.data_offset : seg.data_offset + seg.size]
        seg_name = f"seg{seg.index}_0x{seg.load_addr:08X}.bin"
        seg_path = seg_dir / seg_name
        seg_path.write_bytes(seg_bytes)

        summary_lines.append(
            f"segment {seg.index}: file=0x{seg.data_offset:08X} size=0x{seg.size:08X} "
            f"load=0x{seg.load_addr:08X} -> {seg_path.name}"
        )

        if is_executable_addr(seg.load_addr) and objdump:
            asm_path = disasm_dir / f"{seg_path.stem}.S"
            cmd = [
                objdump,
                "-D",
                "-b",
                "binary",
                "-m",
                "xtensa",
                f"--adjust-vma=0x{seg.load_addr:08X}",
                str(seg_path),
            ]
            try:
                proc = subprocess.run(cmd, check=True, capture_output=True, text=True)
                asm_path.write_text(proc.stdout, encoding="utf-8")
                summary_lines.append(f"  disasm: {asm_path.name}")
            except subprocess.CalledProcessError as exc:
                summary_lines.append(
                    f"  disasm failed for segment {seg.index}: exit={exc.returncode}"
                )

        # Create string/address index for all segments.
        for off, text in load_ascii_strings(seg_bytes, min_len=6):
            runtime = seg.load_addr + off
            string_index_lines.append(f"0x{off:08X} 0x{runtime:08X} {text}")
            if any(word in text for word in anchor_words):
                keyword_lines.append(f"0x{runtime:08X} {text}")

    write_text(out_dir / "strings_index.txt", "\n".join(string_index_lines) + "\n")
    write_text(out_dir / "behavior_anchors.txt", "\n".join(keyword_lines) + "\n")

    if objdump:
        summary_lines.append(f"objdump used: {objdump}")
    else:
        summary_lines.append("objdump used: not found (disassembly skipped)")

    summary_lines.append("")
    summary_lines.append("Next step:")
    summary_lines.append("1) Open disasm/*.S and behavior_anchors.txt together.")
    summary_lines.append("2) Trace anchor strings back to nearby call sites.")
    summary_lines.append("3) Build function tags (UI, seek engine, radio I/O, storage).")

    write_text(out_dir / "RECON_SUMMARY.txt", "\n".join(summary_lines) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
