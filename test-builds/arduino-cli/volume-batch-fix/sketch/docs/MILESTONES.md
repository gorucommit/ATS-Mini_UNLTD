#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/docs/MILESTONES.md"
# Milestones TODO

## Spec baseline
- [x] Freeze product behavior spec in `docs/PRODUCT_SPEC.md`.
- [ ] Validate locked behaviors against hardware and adjust only if user-requested.
- [x] Define wake/power-save/deep-sleep behavior contract in `docs/PRODUCT_SPEC.md`.
- [x] Mark first-start region onboarding as planned, deferred beyond v0.1.

## M0 - Project bootstrap
- [x] Create clean project scaffold (`src/`, `include/`, `docs/`).
- [x] Pin toolchain and library versions.
- [x] Snapshot baseline references from `ats-nano`.
- [ ] Confirm board profile and USB/flash settings on real hardware.

## M1 - Radio bring-up
- [x] Initialize SI473x and confirm I2C device detection (code complete; hardware check pending).
- [x] Implement safe power/amp/backlight startup sequence (code complete; hardware check pending).
- [ ] Tune to default band frequency and verify audio output on device.
- [x] Add boot error path for missing SI473x (serial + startup message).

## M2 - Bandplan and persistence
- [ ] Implement final custom band table and sub-band metadata from `docs/PRODUCT_SPEC.md`.
- [x] Implement band switching with wrap behavior.
- [x] Persist band/frequency/mod/volume settings.
- [x] Add migration guard for future settings format changes (schema + checksum validation).
- [ ] Add regional settings persistence (MW spacing, de-emphasis, OIRT profile).
- [ ] Add per-bandId last-frequency persistence model.
- [ ] Add favorites persistence with 20-slot FIFO overwrite.

## M3 - Menu system rewrite
- [ ] Implement 3-layer UX model (`Now Playing`, `Quick Edit`, `Settings`) from `docs/PRODUCT_SPEC.md`.
- [ ] Implement always-visible quick chips (`BAND`, `STEP`, `BW`, `AGC/ATT`, `SQL`, `SYS`, `SETTINGS`, `FAV`, `FINETUNE`, `MODE`) with active focus highlight.
- [ ] Implement Quick Selection ring order (`BAND -> STEP -> BW -> AGC/ATT -> SQL -> SYS -> SETTINGS -> FAV -> FINETUNE -> MODE -> BAND`).
- [ ] Implement Quick Selection focus-resume behavior (restore last chip within `8000 ms`, else start at `BAND`).
- [x] Implement minimal serial renderer independent from radio driver.
- [x] Add short/long press actions and timeout behavior.
- [ ] Implement direct frequency-entry dial pad (long press).
- [ ] Implement dial pad long-press exit and 5-second inactivity timeout.
- [ ] Implement double-click operation mode cycle (`TUNE/SEEK/SCAN`).
- [ ] Implement multi-click timing window (`500 ms`) and debounce (`30 ms`) as spec constants.
- [ ] Implement gesture scope/precedence rules (idle-only double/triple; longer-over-long; press+rotate priority with seek/scan cancel exception).
- [ ] Implement triple-click favorites save flow.
- [ ] Implement `FAV` chip two-option actions (`Save Current`, `Recall`) and keep triple-click as save shortcut.
- [ ] Implement volume semantics where level `0` is treated as mute.
- [ ] Implement press-level progress bar feedback (`click/long/longer`).
- [ ] Implement global action-verb consistency checks (rotate/change, click/select, hold+rotate volume).
- [ ] Implement long-press behavior by idle operation state:
  - `TUNE` and `SEEK`: open frequency-entry dial pad.
  - `SCAN`: start full-band scan.
- [ ] Implement `SCAN` idle click behavior as Quick Selection entry (not scan start).
- [ ] Implement Quick Edit parent-state return and chip activation behavior (click-to-activate focused chip).
- [ ] Implement `SYS` submenu (`Battery Saver`, `Sleep Timer`, `Wi-Fi`, `BLE`) and `SETTINGS` layer entry from chips.
- [ ] Implement Settings item order (`RDS -> EiBi -> Brightness -> Region -> Theme -> UI Layout -> About`).
- [ ] Implement transient action labels and non-flicker partial redraw strategy.
- [ ] Implement clearly distinct visual identity for `TUNE`, `SEEK`, and `SCAN` states.
- [ ] Add state tests for menu navigation edge cases.

## M4 - Custom seek and scan engine
- [x] Implement upward/downward seek with stop criteria.
- [x] Implement scan dwell timing and resume logic.
- [x] Add initial noise/threshold tuning strategy.
- [x] Add cancel semantics from any UI context.
- [ ] Align seek/scan behavior exactly to `ats-mini-signalscale` thresholds/timing.
- [ ] Keep seek/scan thresholds fixed to `ats-mini-signalscale` values (no user setting in MVP).
- [ ] Implement FM scan fixed 100 kHz behavior and found-station navigation mode.
- [ ] Implement AM/SW conditional scan policy (broadcast-only vs full band).
- [ ] Implement scan raw-hit drop-then-rise threshold gate.
- [ ] Implement adjacent-hit dedupe (keep strongest).
- [ ] Implement cluster merge distances (FM 100 kHz, AM/SW MW spacing 9/10 kHz).
- [ ] Implement found-station navigation list behavior in scan mode.
- [ ] Implement found-station list lifetime/clear policy from `PRODUCT_SPEC.md`.
- [ ] Implement clean cancel path from active seek/scan to corresponding idle state (`SEEK`/`SCAN`).

## M5 - Polish and validation
- [ ] Add smoke checklist for FM/AM/SW/SSB mode transitions.
- [ ] Validate encoder behavior under fast rotations.
- [ ] Profile redraw and tune latency.
- [ ] Add error UX for SI473x missing, bad settings, and failed save.
- [ ] Implement display-sleep wake policy (first interaction wakes only).
- [ ] Implement power-save mode profile (clock/UI/RSSI reductions).
- [ ] Implement deep-sleep timer and long-press wake restore path.
- [ ] Freeze v1.0.0 baseline tag.

## Post-v0.1 backlog
- [ ] Add first-start onboarding flow for region selection.
- [ ] Map region profile to MW spacing, FM de-emphasis, and OIRT profile.
- [ ] Add separate SNR indicator in main UX (distinct from RSSI).
- [ ] Add FM stereo/mono lock indicator with transition animation.
- [ ] Add FM multipath indicator (using SI473x multipath metric).
- [ ] Add SW propagation history graph (~20s rolling window).
