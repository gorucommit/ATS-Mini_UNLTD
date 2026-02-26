# Architecture

Implementation-focused architecture summary for the current firmware.

## Core state model

- Canonical runtime state: `include/app_state.h` (`app::AppState`)
- `main.cpp` owns the single `AppState` instance and orchestrates all service calls
- Services mostly operate on `AppState&` and avoid hidden business state, with a few internal runtime caches/state machines (UI cache, ETM scanner state, RDS decoder runtime, radio runtime snapshots)

## Service roles (current)

- `services::input`
  - Encoder ISR + button debounce/multi-click/press detection
  - Emits gesture events and abort signals
- `services::radio`
  - SI4735 hardware access (mutex-protected)
  - Band/mode reconfiguration, tuning, seek, runtime radio settings
  - Raw RDS group polling bridge
- `services::seekscan` (file: `src/services/seek_service.cpp`)
  - One-shot seek orchestration only
  - Namespace name kept for compatibility; scan moved out to ETM
- `services::etm`
  - ETM scan engine (coarse + FM verify/fine where configured)
  - Found-station memory and navigation in scan mode
- `services::rds`
  - FM RDS decode, voting/debouncing, quality, stale clearing
- `services::clock`
  - Display clock, synthetic time fallback, RDS CT base application
- `services::settings`
  - Preferences/NVS load/save, schema migration, sanitization
- `services::ui`
  - TFT sprite rendering, signal/battery polling for display, volume HUD
- `services::aie`
  - Acoustic Inertia Engine anti-click envelope during tuning in `Tune + NowPlaying`

## Main coordinator (`src/main.cpp`)

`main.cpp` is the runtime controller and does all cross-service orchestration:

- startup sequence (`setup()`):
  - safe radio power rail enable
  - UI boot screen
  - settings load + sanitize
  - radio init/apply
  - AIE/input init
- loop scheduling (`loop()`):
  - context sync (`seekscan`, `etm`)
  - input tick / gesture consumption
  - rotation + click dispatch by UI layer and operation mode
  - AIE tick
  - UI-layer timeouts (quick edit, dial pad)
  - active operation tick (`etm` scan first, else seek)
  - deferred tune persistence flush
  - radio/rds/clock/settings ticks
  - throttled UI render

## Dependency direction (practical rules)

- `main.cpp` may call any service
- `ui` reads `AppState` and does not directly control business logic
- `input` emits events/abort flags; no direct radio control
- `radio` is the only SI4735 hardware control surface for the app
- Allowed cross-service dependencies used intentionally:
  - `seekscan -> radio`
  - `etm -> radio`
  - `rds -> radio`
  - `rds -> clock`
  - `aie -> radio`

## File map (high value)

- `include/app_state.h` — canonical state schema
- `include/app_services.h` — service interfaces
- `include/bandplan.h` — band tables / region behavior
- `src/main.cpp` — orchestration + UI event routing
- `src/services/radio_service.cpp` — SI4735 integration
- `src/services/seek_service.cpp` — seek wrapper
- `src/services/etm_scan_service.cpp` — scan engine
- `src/services/ui_service.cpp` — renderer and display telemetry

## Notes

- Some docs in `docs/` are planning/assessment snapshots and are intentionally not implementation-truth documents.
- When in doubt, source code is authoritative.
