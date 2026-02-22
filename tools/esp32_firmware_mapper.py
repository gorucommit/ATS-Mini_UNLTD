#!/usr/bin/env python3
"""Map ESP32-family firmware binaries without external dependencies."""

from __future__ import annotations

import argparse
import hashlib
import re
import struct
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ESP_IMAGE_MAGIC = 0xE9
PARTITION_MAGIC = 0x50AA
PARTITION_MD5_MAGIC = 0xEBEB

CHIP_ID_NAMES = {
    0x0000: "ESP32",
    0x0002: "ESP32-S2",
    0x0005: "ESP32-C3",
    0x0006: "ESP32-H4",
    0x0009: "ESP32-S3",
    0x000A: "ESP32-C5",
    0x000C: "ESP32-C2",
    0x000D: "ESP32-C6",
    0x0010: "ESP32-H2",
    0x0012: "ESP32-P4",
}

SPI_MODE_NAMES = {
    0x00: "QIO",
    0x01: "QOUT",
    0x02: "DIO",
    0x03: "DOUT",
    0x04: "FAST_READ",
    0x05: "SLOW_READ",
}

SPI_SPEED_NAMES = {
    0x0: "40MHz",
    0x1: "26.7MHz",
    0x2: "20MHz",
    0xF: "80MHz",
}

SPI_SIZE_NAMES = {
    0x0: "1MB",
    0x1: "2MB",
    0x2: "4MB",
    0x3: "8MB",
    0x4: "16MB",
    0x5: "32MB",
    0x6: "64MB",
    0x7: "128MB",
}

APP_SUBTYPE_NAMES = {
    0x00: "factory",
    0x20: "test",
}
for i in range(16):
    APP_SUBTYPE_NAMES[0x10 + i] = f"ota_{i}"

DATA_SUBTYPE_NAMES = {
    0x00: "ota",
    0x01: "phy",
    0x02: "nvs",
    0x03: "coredump",
    0x04: "nvs_keys",
    0x05: "efuse",
    0x06: "undefined",
    0x80: "esphttpd",
    0x81: "fat",
    0x82: "spiffs",
    0x83: "littlefs",
}


@dataclass(frozen=True)
class EspSegment:
    index: int
    header_offset: int
    data_offset: int
    load_addr: int
    size: int


@dataclass(frozen=True)
class EspImage:
    offset: int
    total_size: int
    entry_addr: int
    segment_count: int
    spi_mode: int
    spi_speed_code: int
    spi_size_code: int
    chip_id: int
    hash_appended: bool
    checksum: int
    sha256: bytes | None
    segments: list[EspSegment]


@dataclass(frozen=True)
class PartitionEntry:
    index: int
    p_type: int
    subtype: int
    offset: int
    size: int
    label: str
    flags: int


@dataclass(frozen=True)
class PartitionTable:
    offset: int
    entries: list[PartitionEntry]
    md5: bytes | None


def align_up(value: int, alignment: int) -> int:
    return (value + (alignment - 1)) & ~(alignment - 1)


def human_hex(value: int) -> str:
    return f"0x{value:08X}"


def subtype_name(p_type: int, subtype: int) -> str:
    if p_type == 0x00:
        return APP_SUBTYPE_NAMES.get(subtype, f"app_{subtype:#04x}")
    if p_type == 0x01:
        return DATA_SUBTYPE_NAMES.get(subtype, f"data_{subtype:#04x}")
    return f"subtype_{subtype:#04x}"


def type_name(p_type: int) -> str:
    if p_type == 0x00:
        return "app"
    if p_type == 0x01:
        return "data"
    return f"type_{p_type:#04x}"


def parse_esp_image(data: bytes, offset: int, limit: int | None = None) -> EspImage | None:
    end_limit = len(data) if limit is None else min(limit, len(data))
    if offset < 0 or offset + 24 > end_limit:
        return None
    if data[offset] != ESP_IMAGE_MAGIC:
        return None

    segment_count = data[offset + 1]
    if not (1 <= segment_count <= 16):
        return None

    spi_mode = data[offset + 2]
    speed_size = data[offset + 3]
    entry_addr = struct.unpack_from("<I", data, offset + 4)[0]
    chip_id = struct.unpack_from("<H", data, offset + 12)[0]
    hash_appended_raw = data[offset + 23]
    if hash_appended_raw not in (0, 1):
        return None
    hash_appended = bool(hash_appended_raw)

    pos = offset + 24
    segments: list[EspSegment] = []
    for index in range(segment_count):
        if pos + 8 > end_limit:
            return None
        load_addr, seg_size = struct.unpack_from("<II", data, pos)
        data_offset = pos + 8
        seg_end = data_offset + seg_size
        if seg_end > end_limit:
            return None
        segments.append(
            EspSegment(
                index=index,
                header_offset=pos,
                data_offset=data_offset,
                load_addr=load_addr,
                size=seg_size,
            )
        )
        pos = seg_end

    checksum_pos = align_up(pos + 1, 16) - 1
    hash_offset = checksum_pos + 1
    if checksum_pos >= end_limit:
        return None
    checksum = data[checksum_pos]

    sha256 = None
    total_end = hash_offset
    if hash_appended:
        if hash_offset + 32 > end_limit:
            return None
        sha256 = data[hash_offset : hash_offset + 32]
        total_end = hash_offset + 32

    return EspImage(
        offset=offset,
        total_size=total_end - offset,
        entry_addr=entry_addr,
        segment_count=segment_count,
        spi_mode=spi_mode,
        spi_speed_code=speed_size & 0x0F,
        spi_size_code=(speed_size >> 4) & 0x0F,
        chip_id=chip_id,
        hash_appended=hash_appended,
        checksum=checksum,
        sha256=sha256,
        segments=segments,
    )


def parse_partition_table(data: bytes, offset: int) -> PartitionTable | None:
    if offset < 0 or offset + 32 > len(data):
        return None
    if struct.unpack_from("<H", data, offset)[0] != PARTITION_MAGIC:
        return None

    entries: list[PartitionEntry] = []
    md5: bytes | None = None
    pos = offset

    for index in range(96):
        if pos + 32 > len(data):
            return None
        magic = struct.unpack_from("<H", data, pos)[0]
        raw = data[pos : pos + 32]

        if magic == 0xFFFF:
            break
        if magic == PARTITION_MD5_MAGIC:
            md5 = raw[16:32]
            break
        if magic != PARTITION_MAGIC:
            return None

        p_type = raw[2]
        subtype = raw[3]
        part_offset, part_size = struct.unpack_from("<II", raw, 4)
        label = raw[12:28].split(b"\x00", 1)[0].decode("ascii", "replace")
        flags = struct.unpack_from("<I", raw, 28)[0]

        if part_size == 0:
            return None
        entries.append(
            PartitionEntry(
                index=index,
                p_type=p_type,
                subtype=subtype,
                offset=part_offset,
                size=part_size,
                label=label,
                flags=flags,
            )
        )
        pos += 32

    if not entries:
        return None
    return PartitionTable(offset=offset, entries=entries, md5=md5)


def find_partition_table(data: bytes) -> PartitionTable | None:
    candidates: list[tuple[int, PartitionTable]] = []
    max_scan = min(len(data), 0x40000)
    preferred_offsets = [0x8000]
    preferred_offsets.extend(
        offset for offset in range(0, max_scan, 0x1000) if offset != 0x8000
    )

    for offset in preferred_offsets:
        table = parse_partition_table(data, offset)
        if table is None:
            continue
        score = len(table.entries)
        if offset == 0x8000:
            score += 4
        if any(entry.p_type == 0x00 for entry in table.entries):
            score += 2
        candidates.append((score, table))

    if not candidates:
        return None
    candidates.sort(key=lambda item: item[0], reverse=True)
    return candidates[0][1]


def extract_interesting_strings(data: bytes, limit: int = 12) -> list[str]:
    pattern = re.compile(rb"[\x20-\x7E]{8,}")
    found = [m.group().decode("ascii", "ignore") for m in pattern.finditer(data)]

    keywords = (
        "esp-idf:",
        "arduino-lib-builder",
        "Latest Firmware:",
        "TUNE SEEK",
        "SI4735",
    )
    selected: list[str] = []
    seen: set[str] = set()
    for text in found:
        if any(k in text for k in keywords):
            if text not in seen:
                selected.append(text)
                seen.add(text)
        if len(selected) >= limit:
            return selected

    for text in found:
        if text in seen:
            continue
        if re.search(r"\b(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\b", text):
            selected.append(text)
            seen.add(text)
        elif re.search(r"\b\d{2}:\d{2}:\d{2}\b", text):
            selected.append(text)
            seen.add(text)
        if len(selected) >= limit:
            break
    return selected


def partition_presence(part: PartitionEntry, file_size: int) -> str:
    if part.offset >= file_size:
        return "not present in file"
    available = min(file_size - part.offset, part.size)
    if available == part.size:
        return "fully present"
    return f"partial ({human_hex(available)} bytes available)"


def format_image(image: EspImage, label: str) -> list[str]:
    chip_name = CHIP_ID_NAMES.get(image.chip_id, f"chip_id_{image.chip_id:#06x}")
    mode_name = SPI_MODE_NAMES.get(image.spi_mode, f"mode_{image.spi_mode:#04x}")
    speed_name = SPI_SPEED_NAMES.get(
        image.spi_speed_code, f"speed_{image.spi_speed_code:#x}"
    )
    size_name = SPI_SIZE_NAMES.get(image.spi_size_code, f"size_{image.spi_size_code:#x}")

    lines = [
        f"{label}:",
        f"  file offset: {human_hex(image.offset)}",
        f"  image size:  {human_hex(image.total_size)}",
        f"  entry addr:  {human_hex(image.entry_addr)}",
        f"  chip:        {chip_name}",
        f"  spi mode:    {mode_name}",
        f"  spi speed:   {speed_name}",
        f"  flash size:  {size_name}",
        f"  segments:    {image.segment_count}",
        f"  checksum:    0x{image.checksum:02X}",
        f"  hash app.:   {'yes' if image.hash_appended else 'no'}",
    ]
    if image.sha256 is not None:
        lines.append(f"  image sha256:{image.sha256.hex()}")
    for seg in image.segments:
        lines.append(
            "  "
            + (
                f"seg{seg.index}: file {human_hex(seg.data_offset)}.."
                f"{human_hex(seg.data_offset + seg.size)} "
                f"load {human_hex(seg.load_addr)} size {human_hex(seg.size)}"
            )
        )
    return lines


def build_report(path: Path, data: bytes) -> str:
    file_size = len(data)
    file_sha = hashlib.sha256(data).hexdigest()

    table = find_partition_table(data)
    boot_limit = table.offset if table else file_size
    bootloader = parse_esp_image(data, 0, boot_limit)

    app_images: list[tuple[PartitionEntry, EspImage | None]] = []
    if table:
        for entry in table.entries:
            if entry.p_type != 0x00:
                continue
            if entry.offset >= file_size:
                app_images.append((entry, None))
                continue
            image_limit = min(file_size, entry.offset + entry.size)
            image = parse_esp_image(data, entry.offset, image_limit)
            app_images.append((entry, image))

    flash_end = file_size
    if table:
        flash_end = max(entry.offset + entry.size for entry in table.entries)

    lines: list[str] = []
    lines.append("ESP Firmware Map")
    lines.append("================")
    lines.append(f"Input file: {path}")
    lines.append(f"File size:  {human_hex(file_size)} ({file_size} bytes)")
    lines.append(f"SHA256:     {file_sha}")
    lines.append("")

    if bootloader is not None:
        lines.extend(format_image(bootloader, "Bootloader image"))
        lines.append("")
    else:
        lines.append("Bootloader image: not detected at offset 0x00000000")
        lines.append("")

    if table is not None:
        lines.append(f"Partition table @ {human_hex(table.offset)}")
        lines.append("--------------------------------")
        for entry in table.entries:
            lines.append(
                "  "
                + (
                    f"[{entry.index:02d}] {entry.label:<12} "
                    f"{type_name(entry.p_type)}/{subtype_name(entry.p_type, entry.subtype):<10} "
                    f"offset {human_hex(entry.offset)} size {human_hex(entry.size)} "
                    f"{partition_presence(entry, file_size)}"
                )
            )
        if table.md5 is not None:
            lines.append(f"  md5 trailer: {table.md5.hex()}")
        lines.append("")
    else:
        lines.append("Partition table: not detected")
        lines.append("")

    if app_images:
        lines.append("Application images")
        lines.append("------------------")
        for entry, image in app_images:
            tag = f"{entry.label} @ {human_hex(entry.offset)}"
            if image is None:
                lines.append(f"{tag}: no valid ESP image in available bytes")
                continue
            lines.extend(format_image(image, tag))
        lines.append("")

    lines.append("Coverage")
    lines.append("--------")
    lines.append(f"Bytes present in file: {human_hex(file_size)}")
    lines.append(f"Declared flash span:   {human_hex(flash_end)}")
    if file_size < flash_end:
        lines.append(
            f"Missing tail in file:  {human_hex(flash_end - file_size)} (trimmed merged image)"
        )
    else:
        lines.append("Missing tail in file:  none")
    lines.append("")

    strings = extract_interesting_strings(data)
    if strings:
        lines.append("Interesting strings")
        lines.append("-------------------")
        for text in strings:
            lines.append(f"  - {text}")
        lines.append("")

    return "\n".join(lines)


def parse_args(argv: Iterable[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Map ESP32-family firmware binaries (bootloader + partitions + apps)."
    )
    parser.add_argument("binary", type=Path, help="Path to firmware .bin")
    return parser.parse_args(list(argv) if argv is not None else None)


def main(argv: Iterable[str] | None = None) -> int:
    args = parse_args(argv)
    data = args.binary.read_bytes()
    print(build_report(args.binary, data))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
