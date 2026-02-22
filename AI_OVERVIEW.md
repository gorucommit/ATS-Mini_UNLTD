# ATS-Mini UNLTD — overview for AI readers

This file is intended for AI agents that read the repo via URL. Use the **raw** links below to get plain text (no HTML).

**Repo:** https://github.com/gorucommit/ATS-Mini_UNLTD  
**Raw root:** https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/

## What this project is

- **Firmware** for the ATS-Mini portable radio: ESP32-S3, SI4735 (FM/AM/SW), TFT display, encoder + button.
- **Main codebase:** `ats-mini-new/` — C++, PlatformIO, Arduino framework.
- **Features:** FM/AM/SW/LW, RDS, seek/scan, band plan, settings (NVS), ETM-style scan.

## Key files (raw URLs — fetch these for plain text)

- Project README: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/README.md
- Firmware README: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md
- This overview: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/AI_OVERVIEW.md
- Full firmware map: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/FIRMWARE_MAP.md
- Product spec: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/PRODUCT_SPEC.md
- Development plan: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/DEVELOPMENT_PLAN.md
- Architecture: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/ARCHITECTURE.md
- App state (central): https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/include/app_state.h
- Main loop: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/main.cpp
- Radio (SI4735): https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/radio_service.cpp
- Seek/scan: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/seek_scan_service.cpp
- ETM scan: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/etm_scan_service.cpp
- UI: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/src/services/ui_service.cpp
- Band plan: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/include/bandplan.h
- Settings model: https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/include/settings_model.h

## Directory layout

- **ats-mini-new/** — firmware: `src/`, `include/`, `docs/`, `platformio.ini`, `partitions.csv`
- **references/** — reference firmware (e.g. ats-nano, vendor)
- **test-builds/** — build outputs (often not in git)
- **tools/** — scripts
- **ui-lab/** — UI experiments

## How to get plain text from GitHub

Replace:

  https://github.com/gorucommit/ATS-Mini_UNLTD/blob/main/ats-mini-new/README.md

with:

  https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md

Many AI “read URL” tools work better with `raw.githubusercontent.com` because they receive the file content directly instead of the GitHub web UI.
