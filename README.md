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

See `ats-mini-new/README.md` for current build and flash instructions. The firmware tree currently keeps both PlatformIO and Arduino CLI configurations.

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
