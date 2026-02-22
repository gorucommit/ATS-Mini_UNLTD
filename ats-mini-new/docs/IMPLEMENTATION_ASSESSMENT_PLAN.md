# Implementation Assessment Plan (MVP -> v0.1)

Date: 2026-02-22

## Purpose

Capture the current implementation status of `ats-mini-new`, identify what is still missing or misaligned with the locked product/UI specs, and define the next implementation sequence to reach a stable MVP/v0.1 baseline.

This document is the implementation follow-through from the firmware assessment pass.

## Current Status (Snapshot)

### What is already working well

- Project compiles successfully (`arduino-cli compile --profile ats-mini-s3`).
- Clean coordinator loop exists (`setup()/loop()` in `src/main.cpp`).
- Shared `AppState` architecture is in place and substantial.
- Versioned persistence with checksum + migration + sanitization is implemented.
- Seek/scan engine is already implemented (found list, dedupe, cluster merge paths).
- FM RDS + clock integration exists.
- UI renderer is advanced (partial redraw/cached render key style, mode-distinct visuals).

### What this means

This firmware is no longer a scaffold. It is a functioning baseline with significant implementation already done. The remaining work is primarily:

- spec alignment,
- UX completion,
- SSB/scan behavior completion,
- power/error behavior,
- hardware validation.

## Key Gaps (Priority Order)

### 1. Band Plan and Mode Policy Alignment (High)

The band list is mostly present in `include/bandplan.h` (including SW broadcast and amateur bands), but it is not yet fully aligned to the locked spec.

Current issues:

- Several band ranges/default frequencies are broader placeholder ranges rather than the exact ranges you defined.
- Ordering/grouping is not yet finalized to your intended UX presentation.
- Mode policy is not aligned: many non-FM bands still block SSB (`allowSsb=false`) even though the product spec allows `AM/LSB/USB` on LW/MW/SW/ALL.

Result:

- The `BAND` popup can show many bands, but behavior and limits do not yet match the intended firmware design.

### 2. Quick Selection Ring/UI Contract Alignment (High)

The firmware currently uses an earlier quick-edit ring and still includes an `AVC` chip in the always-visible chip layout.

Locked ring to implement:

- `BAND -> STEP -> BW -> AGC/ATT -> SQL -> SYS -> SETTINGS -> FAV -> FINETUNE -> MODE -> BAND`

Current mismatch examples:

- Focus order differs.
- `AVC` is still present as a quick chip.
- `MODE`/`BAND`/`FAV` placement does not match the locked UX.

### 3. Frequency Entry Dial Pad (High)

`UiLayer::DialPad` exists and long press enters it, but the actual dial-pad UX is not implemented yet.

Still needed:

- Telephone-style keypad interaction via encoder
- FM decimal point support
- Confirm action
- 5-second inactivity timeout
- Long-press exit/cancel
- Out-of-band handling (reject/clamp policy per spec)

### 4. FAV and SYS UX Finalization (High)

Current quick-edit popups are functional but not yet modeled as the finalized UX contract.

Still needed:

- `FAV` chip formal two-action flow:
  - `Save Current`
  - `Recall`
- `SYS` submenu behavior and labels aligned to the locked design:
  - Battery Saver
  - Sleep Timer
  - Wi-Fi
  - BLE

Note:

- Triple-click quick-save favorite shortcut is already implemented and should remain.

### 5. Seek/Scan Exact Behavior Parity (High)

Seek/scan implementation is real and advanced, but not yet fully aligned to the locked behavior spec and the agreed signal-scale-inspired rules.

Important remaining alignment:

- Implement the raw-hit drop-then-rise gate (current scan records every above-threshold point and merges later).
- Confirm/align thresholds and settle/dwell timing to `ats-mini-signalscale`.
- Confirm found-list lifetime/clear policy.
- Finalize ALL-band broadcast scan policy details.
- Finalize ETM/found station UX later (deferred by design).

### 6. SSB Engine (Required for Real SSB Support) (High)

SSB cannot be considered complete just because the radio can switch to LSB/USB or load an SSB patch. We need a dedicated SSB engine/control path for SSB to work correctly and consistently in the product UX.

Required SSB engine scope:

- SSB mode application and demod configuration lifecycle
- BFO tuning path (`FINETUNE` behavior) with correct range/step/display
- SSB bandwidth selection and runtime application
- Per-band/per-mode SSB persistence (BFO/calibration/bandwidth)
- SSB-safe tune/seek/scan rules (initially may disable scan in SSB, but behavior must be explicit)
- UI display formatting and feedback (`BFO`, step, mode state)
- Clean transitions between AM <-> SSB without stale settings

Note:

- There is already SSB-related work in the radio service, but the product-level SSB behavior is not yet complete. This needs a dedicated implementation pass.

### 7. Power / Sleep Behavior Execution (Medium-High)

Settings/state fields exist, but the runtime behaviors are not fully implemented yet.

Still needed:

- Display sleep policy:
  - UI/backlight off while radio keeps running
  - first interaction wakes display only (no action applied)
- Power-save mode profile:
  - reduced UI refresh
  - reduced polling cadence
  - optional CPU throttling strategy
- Deep-sleep timer shutdown + long-press restore path

### 8. Error UX and Safe Recovery (Medium)

Current strengths:

- SI473x missing boot error is surfaced.
- Settings load path sanitizes bad/corrupt persisted state.

Still needed:

- User-facing save-failed behavior and retry/revert flow
- User-facing “bad settings reverted to safe defaults” UX
- Consistent non-blocking error banners/dialogs in the main UI

### 9. Hold Progress Feedback and UX Polish (Medium)

The firmware distinguishes long vs very long press internally, but the visual hold-progress bar is not implemented yet.

Still needed:

- Press-level progress indicator (`click -> long -> longer`)
- Action transient labels (`BW 2.2k`, `Saved FAV 07`, `Scan Complete`, etc.)
- Final polish pass for interaction feedback timing

### 10. Settings and Feature Placeholders (Medium)

Some settings exist structurally but are placeholders or partial features:

- `EiBi` is currently only a placeholder/toggle (no actual broadcast schedule/transmitter info integration yet)
- Multiple themes/layouts are modeled, but not fully implemented visually/behaviorally (theme system is partial)
- Wi-Fi/BLE controls are scaffolded but not full features yet
- Basic portal (minimal web UI / device portal) is not implemented yet
- Serial remote control is not implemented yet
- BLE remote control is not implemented yet (BLE toggle/settings exist, control protocol/UI does not)

### 11. Testing and Validation (High, but after alignment work)

Current status:

- No automated tests yet (`test/README.md` only documents strategy)
- Hardware validation is still the main unknown

Needed before v0.1:

- Hardware smoke checklist (FM/AM/SW/SSB tune/seek/scan, cancel behavior, audio)
- Encoder stress testing (fast rotation, hold+rotate, multi-click reliability)
- Persistence reboot tests
- RDS timing/quality validation on real stations
- UI latency and redraw profiling

## What Is Actually Implemented Already (Important to Keep)

These should be preserved and built on, not rewritten:

- Main coordinator loop structure in `src/main.cpp`
- Quick-edit focus resume timing behavior (`8000 ms`) already in main loop
- Scan-mode long-press scan start behavior
- Triple-click favorite save shortcut
- Versioned settings persistence (blob schema, checksum, migration, sanitize)
- Seek/scan found list and dedupe infrastructure
- FM RDS parsing and clock base integration
- Non-flicker render strategy in UI service

## Recommended Implementation Sequence (Next Tranche)

### Phase 1: Spec Alignment Pass (Foundation)

1. Freeze and implement exact band table:
   - exact SWBC/HAM ranges,
   - defaults,
   - labels,
   - region-sensitive FM/OIRT behavior.
2. Fix allowed-mode policy per band:
   - LW/MW/SW/ALL allow `AM/LSB/USB` as specified.
3. Align quick chip ring order and remove `AVC` from always-visible ring.
4. Align `SETTINGS` item order to locked UX.

### Phase 2: Core UX Completion

1. Implement dial pad (telephone style).
2. Implement `FAV` two-step actions (`Save Current`, `Recall`) explicitly.
3. Implement `SYS` submenu UX explicitly.
4. Add hold-progress bar and action transient labels.
5. Finalize theme system v0.1 behavior (at least one default + one alternate theme fully implemented).

### Phase 3: RF Behavior Parity and SSB Engine

1. Implement/complete SSB engine (product-level behavior, not just modulation switching).
2. Align seek/scan thresholds and dwell timing to `ats-mini-signalscale`.
3. Implement drop-then-rise raw-hit gate.
4. Finalize dedupe/list lifetime behavior.
5. Validate cancel responsiveness under real hardware conditions.

### Phase 4: Power and Error UX

1. Display sleep wake policy
2. Power-save profile behavior
3. Deep-sleep timer + restore
4. Save-failure/bad-settings recovery UX
5. Sleep mode UX wiring in `SYS`/Settings (display sleep vs deep sleep timer behavior)

### Phase 4.5: Connectivity and Remote Control Foundation

1. Implement Wi-Fi support v0.1 (runtime enable/disable, status, persisted mode)
2. Implement Basic portal (minimal local device page / control entry point)
3. Implement serial remote control (basic command set for tune/mode/volume/status)
4. Implement BLE remote control foundation (basic connect + command/control path)
5. Define shared command model for serial/BLE/portal to avoid duplicated control logic

### Phase 4.6: Data Enrichment (EiBi)

1. Implement EiBi broadcast schedule lookup
2. Implement transmitter/station info enrichment for tuned frequency / scan hits
3. Define caching/update strategy and fallback behavior when no match is found

### Phase 5: Validation and Stabilization

1. Hardware validation matrix
2. Regression pass on gestures/menu navigation
3. Persistence and reboot stress tests
4. UI latency profiling and polish
5. Freeze v0.1 baseline

## v0.1 Acceptance Criteria (Practical)

The firmware can be considered v0.1-ready when all of the following are true:

- Band table and mode policy match the product spec
- Quick Selection ring and control map match the locked UX contract
- Dial pad works end-to-end
- SSB engine is present and SSB tuning/fine-tune/bandwidth behavior is reliable
- Seek and scan behavior match agreed thresholds/timing and cancel cleanly
- Persistence restores last state and favorites reliably
- Power/sleep basics work without breaking UX
- Wi-Fi support and basic portal work for MVP control/status use
- Theme system has at least one alternate fully working theme
- Serial remote control basic command set works reliably
- BLE remote control foundation works (at least connect + basic commands)
- EiBi schedule/transmitter info integration works at basic lookup level
- Hardware smoke tests pass on real device

## Out of Scope for v0.1 (Keep Deferred)

These are valuable, but should remain after MVP/v0.1 stabilization:

- ETM station UI redesign / dedicated ETM panels
- Advanced markers + asynchronous RDS/EiBi enrichment UX
- Multipath indicator
- Propagation history graph
- First-run onboarding flow
- Full web control / advanced portal UX
- Advanced BLE remote feature set

## Other items to implement

- Sleep: needs to be a timer, not a sleep mode, that goes into deep sleep when elapsed;
- Squelch actually working;
- Setting for SCAN/seek sensitivity;
- Markers on SCAN / SEEK.
- 1 minute signal history
- Acoustic Inertia Engine - Soft-Mute Logic: Instead of the "chuff-chuff" sound when tuning, implement a "soft-attack" volume ramp that makes the tuning experience feel like a high-end analog VFO.
