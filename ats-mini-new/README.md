# ats-mini-new

Clean scaffold for a custom ATS-mini firmware built from the minimal `ats-nano` baseline.

## Goals
- Keep a minimal, understandable architecture.
- Rebuild menus/bands/seek/scan from scratch.
- Use `ats-mini-signalscale` for inspiration only.

## Quick start
1. Open this folder in PlatformIO.
2. Build with `pio run`.
3. Upload with `pio run -t upload`.
4. Monitor with `pio device monitor -b 115200`.

## Project layout
- `src/`: application entry and service modules.
- `include/`: app config, bandplan, pin map, shared state.
- `docs/`: architecture, milestones, dependency lock.
- `tft_setup.h`: active TFT_eSPI setup used by this firmware.

## Recent implementation notes
- FM RDS/CT port status, behavior contract, fixes, and test snapshots:
  - `docs/RDS_PORT_2026-02-22.md`

## Workspace layout
- `../references/`: other firmware trees and reference snapshots.
- `../test-builds/`: centralized build outputs and test binaries.

## Next immediate work
- Follow locked behavior contract in `docs/PRODUCT_SPEC.md`.
- Follow state-action matrix in `docs/UI_INTERACTION_SPEC.md`.
- Run on-device verification from `docs/MVP_BASELINE.md`.
- Implement remaining milestones in `docs/MILESTONES.md`.
