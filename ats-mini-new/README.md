# ats-mini-new

ATS-Mini custom firmware (`ESP32-S3 + SI4735 + TFT`) with a service-based architecture (`main.cpp` orchestrator + radio/input/ui/rds/clock/settings/seek/etm services).

## Current reality (2026-02-26)

- Runtime entry: `src/main.cpp` (`setup()` / `loop()`)
- Seek service file: `src/services/seek_service.cpp`
  - Namespace remains `services::seekscan` (name kept for API stability)
- Scan engine: `src/services/etm_scan_service.cpp`
- Build configs present and tracked:
  - `platformio.ini`
  - `sketch.yaml`

## Build and flash (canonical workflow)

The canonical workflow for this firmware is `arduino-cli` + serial upload (and optional `esptool` manual flash).

The Arduino CLI profile is defined in `sketch.yaml` and pins the intended board/core/library versions:

- Profile: `ats-mini-s3`
- Board target: `esp32:esp32:esp32s3` (ESP32-S3)

### Build (quick compile check)

```bash
cd ats-mini-new
arduino-cli compile --profile ats-mini-s3 .
```

### Build and save binaries (recommended)

Use an explicit output directory. Do not rely on `--export-binaries` here because this project uses a `build` symlink.

```bash
cd ats-mini-new
arduino-cli compile --profile ats-mini-s3 --output-dir /tmp/ats-mini-s3-build .
```

### Find the USB serial port

```bash
arduino-cli board list
```

### Upload with Arduino CLI (prebuilt binaries)

From any directory (quote the sketch path because the repo path contains spaces):

```bash
arduino-cli upload --profile ats-mini-s3 -p /dev/cu.usbmodemXXXX --input-dir /tmp/ats-mini-s3-build '/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new'
```

### Manual flash with esptool (optional)

If you prefer flashing with `esptool.py`, use the merged image produced by the compile step:

```bash
esptool.py --chip esp32s3 --port /dev/cu.usbmodemXXXX --baud 921600 write_flash 0x0 /tmp/ats-mini-s3-build/ats-mini-new.ino.merged.bin
```

### Common pitfall (important)

Do not compile this firmware with generic `--fqbn esp32:esp32:esp32`.

- Use `--profile ats-mini-s3` instead.
- Using the wrong FQBN can compile the wrong `TFT_eSPI` target path and produce misleading errors.

## Alternative build config (optional)

`platformio.ini` is still tracked in the repo, but it is not the canonical workflow documented above.

## Flashing notes

- A partition warning about `littlefs` naming/type may appear during compile. It has been observed as non-blocking for build/upload.

## Project layout

| Path | Purpose |
|---|---|
| `src/` | `main.cpp` and service implementations |
| `include/` | app state, service interfaces, band plan, config, models |
| `docs/` | architecture and implementation docs (plus historical plans/assessments) |
| `tft_setup.h` | project-local TFT_eSPI setup |
| `platformio.ini` | PlatformIO build config |
| `sketch.yaml` | Arduino CLI build profile |
| `partitions.csv` | ESP32 partition layout |

## Docs you should trust for current behavior

- `docs/ARCHITECTURE.md`
- `docs/FIRMWARE_MAP.md`
- `docs/ETM_SCAN.md`
- `docs/UI_INTERACTION_SPEC.md`

## Historical / planning docs

Several files in `docs/` are design plans, assessments, and session notes. They are useful for context, but source code is the final truth when they disagree.
