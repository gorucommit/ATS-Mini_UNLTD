# Firmware Map (Current Implementation)

This document replaces the older oversized architecture map with a shorter, code-accurate map of the current firmware.

## Firmware at a glance

- MCU: ESP32-S3
- Radio IC: SI4735 (PU2CLR library)
- UI: TFT_eSPI (ST7789, 8-bit parallel)
- Input: rotary encoder + push button
- Core pattern: single `AppState` + service modules + `main.cpp` coordinator

## Top-level file map

### Firmware project

- `ats-mini-new/ats-mini-new.ino`
  - sketch marker only; real `setup()/loop()` are in `src/main.cpp`
- `ats-mini-new/src/main.cpp`
  - runtime orchestration, input dispatch, UI-layer behavior, mode transitions
- `ats-mini-new/include/app_state.h`
  - canonical app state (`app::AppState`) and related enums/models
- `ats-mini-new/include/app_services.h`
  - service APIs used by `main.cpp`

### Service implementations (`ats-mini-new/src/services/`)

- `radio_service.cpp`
  - SI4735 control, tuning, seek, runtime radio settings, raw RDS polling
- `seek_service.cpp`
  - one-shot seek service (namespace still `services::seekscan`)
- `etm_scan_service.cpp`
  - ETM scan engine and scan-memory navigation
- `rds_service.cpp`
  - FM RDS decode and commit/stale policy
- `clock_service.cpp`
  - display clock + RDS CT time base
- `input_service.cpp`
  - encoder/button events and abort signaling
- `settings_service.cpp`
  - Preferences/NVS persistence + migration/sanitization
- `ui_service.cpp`
  - TFT rendering, signal/battery polling, HUDs
- `aie_engine.cpp`
  - anti-click tuning envelope

## Runtime state ownership

### Global app state (`AppState`)

Owned by `src/main.cpp`:

- `radio`
- `ui`
- `seekScan`
- `clock`
- `rds`
- `global` settings
- `perBand[]` runtime state
- `memories[]` favorites
- `network`

### Internal service runtime state (not in `AppState`)

- `radio_service.cpp`: SI4735 object, mutex, applied/runtime snapshots, mute flags
- `etm_scan_service.cpp`: ETM scanner phase/candidates/segments/ETM memory
- `rds_service.cpp`: decoder voting buffers and quality runtime
- `ui_service.cpp`: render cache, TFT/sprite objects, signal/battery caches, HUD timers
- `input_service.cpp`: debounce/click state + encoder accumulators
- `aie_engine.cpp`: envelope timer/phase/volume state

## Startup flow (`setup()`)

`src/main.cpp` startup sequence (current behavior):

1. Start serial logging
2. `radio::prepareBootPower()` (enable radio rail, keep amp muted)
3. `ui::begin()` + boot screen
4. `settings::begin()` and `settings::load(g_state)` (migrate/sanitize if needed)
5. Normalize and sync state (`normalizeRadioStateForBand`, `syncPersistentStateFromRadio`)
6. Sync seek/ETM context and clock
7. `radio::begin()` (SI4735 init / detect)
8. `radio::apply(g_state)` + `radio::applyRuntimeSettings(g_state)`
9. `radio::setMuted(false)`
10. `aie::begin()` + set target volume
11. `input::begin()`
12. `ui::showBoot("Ready")`

## Main loop flow (`loop()`)

High-level order in `src/main.cpp`:

1. Sync contexts
   - `seekscan::syncContext(g_state)`
   - `etm::syncContext(g_state)`
2. Configure click window by UI layer (NowPlaying vs menus/dial pad)
3. `input::tick()`
4. Dispatch button gestures (`handleButtonEvents()`)
5. Dispatch encoder rotation (`handleRotation(...)`)
6. `aie::tick(g_state)`
7. UI layer timeouts
   - Quick Edit auto-exit
   - Dial pad timeout / error clear
8. Active operation tick
   - ETM scan tick if `etm::busy()`
   - else seek tick if `seekscan::busy()`
   - broker successful seek result into ETM memory
9. Deferred tune persistence flush (idle debounce)
10. Background services
   - `radio::tick()`
   - `rds::tick(g_state)`
   - `clock::tick(g_state)`
   - `settings::tick(g_state)`
11. Throttled `ui::render(g_state)`
12. Small delay (`1 ms` if seek/scan busy, else `5 ms`)

## UI model map

### Operation modes (`app::OperationMode`)

- `Tune`
- `Seek`
- `Scan`

### UI layers (`app::UiLayer`)

- `NowPlaying`
- `QuickEdit`
- `Settings`
- `DialPad`

### Quick Edit (implemented shape)

- Focus order: `Mode -> Band -> Step -> Bandwidth -> Agc -> Sql -> Sys -> Settings -> Fine -> Avc -> Favorite`
- Popup editor model for most chips (no dedicated SYS/Favorites sub-layers)
- `Settings` chip enters `Settings` layer directly

## Seek vs Scan split (current)

### Seek (`services::seekscan`, file `seek_service.cpp`)

- One-shot seek requests only
- Blocking seek happens inside `radio::seek(...)`
- Cancel semantics:
  - cancel pending request before seek starts
  - inject abort event while active seek is running

### Scan (`services::etm`)

- Non-blocking ETM scan state machine
- Segment-based coarse scan
- FM Thorough verify pass (`VerifyScan`)
- Runtime ETM memory + scan-mode navigation

## Radio service responsibilities (current)

- SI4735 device discovery/init
- FM/AM/SSB mode switching
- One-time SSB patch load (`patch_init.h`)
- Runtime settings application
  - bandwidth
  - AGC/manual attenuation
  - soft mute / AVC power profile / de-emphasis
- Seek with grid snapping + validation + abort callback
- Signal quality reads
- Raw RDS group polling

## Persistence model

`settings_service.cpp` stores a V2 blob in `Preferences`:

- checksum-protected
- sanitizes loaded state
- migrates:
  - legacy V1 key/value format
  - legacy-sized V2 payload

Settings writes are debounced; tuning persistence is also deferred in `main.cpp`.

## Build config map

- `platformio.ini`
  - PlatformIO environment and pinned dependencies
- `sketch.yaml`
  - Arduino CLI profile and pinned ESP32 core/libraries
- `tft_setup.h`
  - project-local TFT_eSPI configuration (forced via build flags in PlatformIO)

## Current implementation docs

- `docs/ARCHITECTURE.md`
- `docs/ETM_SCAN.md`
- `docs/UI_INTERACTION_SPEC.md`

## Historical notes

Other docs in `docs/` include plans, assessments, and session logs. They are useful context but are not all implementation-truth documents.
