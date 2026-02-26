# ATS-Mini UNLTD

Custom firmware for the ATS-Mini portable radio (ESP32-S3 + SI4735 + TFT). This repository contains the active firmware project in `ats-mini-new/`.

## Main firmware

- Path: `ats-mini-new/`
- Framework: Arduino (ESP32-S3)
- Build configs currently present:
  - `platformio.ini` (PlatformIO)
  - `sketch.yaml` (Arduino CLI)
- Core libraries:
  - PU2CLR `SI4735` (`2.1.8`)
  - `TFT_eSPI` (`2.5.43`)

## Current implementation docs

- `ats-mini-new/docs/ARCHITECTURE.md`
- `ats-mini-new/docs/FIRMWARE_MAP.md`
- `ats-mini-new/docs/ETM_SCAN.md`
- `ats-mini-new/docs/UI_INTERACTION_SPEC.md`

Planning/spec/assessment docs in `ats-mini-new/docs/` are kept for design history and may not describe the exact current code path.

## Build / flash

Canonical workflow for this repo is `arduino-cli` + serial flash (or `esptool`) using the `ats-mini-s3` sketch profile.

- Build (from `ats-mini-new/`): `arduino-cli compile --profile ats-mini-s3 .`
- Build artifacts (recommended): `arduino-cli compile --profile ats-mini-s3 --output-dir /tmp/ats-mini-s3-build .`
- Detect port: `arduino-cli board list`
- Upload (quote sketch path because repo path has spaces):
  - `arduino-cli upload --profile ats-mini-s3 -p /dev/cu.usbmodemXXXX --input-dir /tmp/ats-mini-s3-build '/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new'`

Important:

- Do not use generic `--fqbn esp32:esp32:esp32` for this firmware. Use profile `ats-mini-s3` (ESP32-S3).
- `ats-mini-new/build` is a symlink, so prefer `--output-dir` instead of `--export-binaries`.

See `ats-mini-new/README.md` for the expanded firmware-specific build/flash notes. Repo-local AI instructions are also documented in `AGENTS.md`.

## Repo layout

| Path | Purpose |
|---|---|
| `ats-mini-new/` | Main firmware project |
| `test-builds/` | Local/snapshot build outputs |
| `ui-lab/` | UI experiments |
| `ui-spec/` | UI/spec artifacts |

## Raw links (for tools/AI)

- [AI_OVERVIEW.md](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/AI_OVERVIEW.md)
- [Firmware README](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md)
- [Architecture](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/ARCHITECTURE.md)
- [Firmware map](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/FIRMWARE_MAP.md)

## License

See source headers and firmware subproject files for license information.
