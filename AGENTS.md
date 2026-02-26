# AGENTS.md

## Canonical Firmware Build/Flash Workflow (Use This First)

This repo's firmware is typically built and flashed with `arduino-cli` and `esptool` style tooling, not PlatformIO.

- Firmware project: `ats-mini-new/`
- Arduino CLI profile: `ats-mini-s3` (defined in `ats-mini-new/sketch.yaml`)
- Target board/FQBN (via profile): `esp32:esp32:esp32s3` with project-specific options

## Important Rules for AI Tools and Contributors

- Prefer `arduino-cli` commands that use `--profile ats-mini-s3`.
- Do not compile with generic `--fqbn esp32:esp32:esp32` for this project.
  - That can hit the wrong `TFT_eSPI` code path and produce misleading build errors.
- Run compile/upload from `ats-mini-new/` unless you intentionally pass a quoted sketch path.
- If you need exported binaries, use `--output-dir` (not `--export-binaries`).
  - `ats-mini-new/build` is a symlink in this repo and can confuse `arduino-cli --export-binaries`.

## Known-Good Arduino CLI Commands

### Compile (quick check)

```bash
cd ats-mini-new
arduino-cli compile --profile ats-mini-s3 .
```

### Compile + save binaries (recommended for upload/reuse)

```bash
cd ats-mini-new
arduino-cli compile --profile ats-mini-s3 --output-dir /tmp/ats-mini-s3-build .
```

Produces files such as:

- `/tmp/ats-mini-s3-build/ats-mini-new.ino.bin`
- `/tmp/ats-mini-s3-build/ats-mini-new.ino.bootloader.bin`
- `/tmp/ats-mini-s3-build/ats-mini-new.ino.partitions.bin`
- `/tmp/ats-mini-s3-build/ats-mini-new.ino.merged.bin`

### Detect serial port

```bash
arduino-cli board list
```

### Upload with Arduino CLI (using prebuilt binaries)

From any directory (quote the sketch path because this repo path contains spaces):

```bash
arduino-cli upload --profile ats-mini-s3 -p /dev/cu.usbmodemXXXX --input-dir /tmp/ats-mini-s3-build '/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new'
```

## esptool Manual Flash (Optional)

If manual flashing is preferred, use the merged image produced above:

```bash
esptool.py --chip esp32s3 --port /dev/cu.usbmodemXXXX --baud 921600 write_flash 0x0 /tmp/ats-mini-s3-build/ats-mini-new.ino.merged.bin
```

## Notes

- A partition warning about `littlefs` naming/type may appear during compile. It has been observed as non-blocking for build/upload.
- The canonical, tested workflow in this repo is now Arduino CLI profile `ats-mini-s3` + serial upload.
