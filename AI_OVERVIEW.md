# ATS-Mini UNLTD — overview for AI/code readers

This file is for tools/agents that read the repository over GitHub URLs. Prefer raw URLs for plain text.

**Repo:** https://github.com/gorucommit/ATS-Mini_UNLTD  
**Raw root:** https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/

## Current repo reality (2026-02-26)

- Main firmware project: `ats-mini-new/`
- Firmware stack: ESP32-S3 + Arduino framework + SI4735 + TFT_eSPI
- Build configs present:
  - `ats-mini-new/platformio.ini` (PlatformIO, checked-in and active)
  - `ats-mini-new/sketch.yaml` (Arduino CLI profile, also present)
- Main runtime files:
  - `src/main.cpp` coordinator/orchestrator
  - `src/services/radio_service.cpp` SI4735 hardware + seek + RDS raw polling
  - `src/services/seek_service.cpp` seek wrapper/service (namespace remains `services::seekscan`)
  - `src/services/etm_scan_service.cpp` ETM scan engine
  - `src/services/rds_service.cpp`, `clock_service.cpp`, `ui_service.cpp`, `settings_service.cpp`, `input_service.cpp`

## Recommended docs to read first (current implementation)

- Project README: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/README.md
- Firmware README: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md
- Architecture: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/ARCHITECTURE.md
- Firmware map: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/FIRMWARE_MAP.md
- ETM scan implementation doc: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/ETM_SCAN.md
- UI interaction contract (current behavior): https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/UI_INTERACTION_SPEC.md

## Key source files (raw URLs)

- `app_state.h` (canonical runtime state): https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/include/app_state.h
- `app_services.h` (service interfaces): https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/include/app_services.h
- `main.cpp` (setup/loop + input dispatch): https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/main.cpp
- `radio_service.cpp`: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/radio_service.cpp
- `seek_service.cpp`: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/seek_service.cpp
- `etm_scan_service.cpp`: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/etm_scan_service.cpp
- `rds_service.cpp`: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/rds_service.cpp
- `ui_service.cpp`: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/ui_service.cpp
- `settings_service.cpp`: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/settings_service.cpp

## Repo layout (current)

- `ats-mini-new/` — firmware project (`src/`, `include/`, `docs/`, `platformio.ini`, `sketch.yaml`)
- `test-builds/` — local/snapshot build outputs (PlatformIO + Arduino CLI outputs may exist here)
- `ui-lab/` — UI experiments/prototypes
- `ui-spec/` — UI/spec artifacts

## Historical/planning docs

Many files in `ats-mini-new/docs/` are plans, assessments, or session logs. Treat them as design history unless they explicitly say they are current implementation docs.

## Raw URL tip

Replace:

`https://github.com/gorucommit/ATS-Mini_UNLTD/blob/main/ats-mini-new/README.md`

with:

`https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md`
