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

## Build options

Both build paths are currently present in the repo. PlatformIO is the most direct path because `platformio.ini` is actively maintained and checked in next to the firmware source.

### Option A: PlatformIO (recommended)

From the repo root or this directory:

```bash
cd ats-mini-new
pio run
```

Serial monitor (example):

```bash
pio device monitor -b 115200
```

Notes:
- `platformio.ini` writes build output to `../test-builds/platformio/build`
- Environment: `ats-mini-s3`

### Option B: Arduino CLI (profile also present)

```bash
cd ats-mini-new
arduino-cli compile --profile ats-mini-s3 --build-path "../test-builds/arduino-cli/esp32.esp32.esp32s3"
```

The Arduino CLI profile is defined in `sketch.yaml` and pins ESP32 core/library versions.

## Flashing

Use your preferred toolchain output (`pio run -t upload` or `esptool`). If flashing manually with `esptool`, make sure offsets and partition images match the selected build output.

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
