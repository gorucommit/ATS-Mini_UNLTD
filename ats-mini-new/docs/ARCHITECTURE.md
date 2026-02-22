# Architecture

The codebase is split so UX rewrites do not destabilize radio behavior.

## Core State
- Canonical state type is `app::AppState` in `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/include/app_state.h`.
- `app::AppState` is a plain struct hub shared by services.
- Mutation policy:
  - `input` emits events only.
  - `radio` applies/reads hardware state.
  - `seekscan` mutates seek/scan-related fields and drives seek/scan flow.
  - `ui` reads state and renders only.
  - `main.cpp` is coordinator and owns orchestration.

## Modules
- `services::radio`: SI473x control, tuning, modulation, volume, RF metrics.
- `services::input`: encoder/button processing and gesture event extraction.
- `services::ui`: rendering and transient UI feedback only.
- `services::seekscan`: seek/scan algorithm, hit gating/merge, found-station navigation.
- `services::settings`: persistent state load/save with validation.
- `include/bandplan.h`: canonical band list and defaults.
- `include/hardware_pins.h`: single source of truth for board wiring.
- `include/app_state.h`: canonical runtime state schema.

## Dependency Rules
- Primary one-way rule:
  - `input -> app_state`
  - `ui -> app_state`
  - `radio -> app_state`
- Explicit allowed exception:
  - `seekscan -> radio` (Option A, selected intentionally for deterministic hardware behavior and lower complexity).
  - Rationale: seek/scan must issue tune commands and read RSSI/SNR in tight loops.
- Prohibited:
  - `ui -> radio` direct control.
  - `input -> radio` direct control.
  - Business logic in rendering code.

## Coordinator Contract
- `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/src/main.cpp` is the runtime coordinator.
- Responsibilities:
  - Poll input and decode actions.
  - Dispatch state transitions.
  - Trigger `seekscan` ticks/requests.
  - Apply radio updates.
  - Drive settings persistence.
  - Schedule UI refresh.

## Design Guardrails
- Keep baseline reference copies under `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/references/` unchanged.
- Treat `/Users/beegee/Documents/ats mini/ats-mini-signalscale` as inspiration only.
