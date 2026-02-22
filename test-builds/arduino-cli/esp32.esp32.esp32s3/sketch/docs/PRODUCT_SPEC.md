#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/docs/PRODUCT_SPEC.md"
# Product Spec v0.1 (Locked)

This spec defines target behavior for the custom firmware foundation before final visual design.

## 0) UX Framework (3 Layers)
- Layer 1: `Now Playing` (always visible)
  - Always-visible primary data: frequency, signal, and quick chips in a ring:
    - `BAND -> STEP -> BW -> AGC/ATT -> SQL -> SYS(POWER/WiFi/SLEEP) -> SETTINGS -> FAV -> FINETUNE -> MODE -> BAND`
  - All chips are always visible, including `SETTINGS`; click does not reveal chips, it activates focus/highlight on the ring.
  - Active focus highlight always indicates what encoder rotation currently controls.
- Layer 2: `Quick Edit` (single-click workflow)
  - Single click from idle `TUNE`, idle `SEEK`, or idle `SCAN` enters Quick Selection with focus restore behavior:
    - If re-entered within the focus-resume window, restore last focused chip.
    - After timeout, start at `BAND`.
  - In Quick Selection browse state:
    - Rotate right moves clockwise through chips.
    - Rotate left moves counterclockwise through chips.
  - This layer is optimized for fast access to live radio controls.
- Layer 3: `Settings`
  - Deeper options only, in this order:
    - `RDS`
    - `EiBi`
    - `Brightness`
    - `Region`
    - `Theme`
    - `UI Layout`
    - `About`

## 0.1) First-Start Onboarding (Planned, Not v0.1)
- Planned onboarding moment on first boot: region selection.
- Selected region profile derives and applies:
  - MW spacing
  - FM de-emphasis
  - OIRT enable/range profile
- This onboarding step is deferred for post-v0.1.
- v0.1 behavior:
  - No first-start onboarding flow.
  - Firmware starts with default region profile and safe defaults.

## 1) Operating Model
- Radio operation states: `TUNE`, `SEEK`, `SCAN`.
- Double-click cycles operation state in this order: `TUNE -> SEEK -> SCAN -> TUNE`.
- In all operation states, rotate while press-held controls volume.
- During active `SEEK` or `SCAN`, only cancel is allowed.

## 2) Input Mapping
- Rotate: change current focused value.
- Single click:
  - In idle `TUNE`, idle `SEEK`, or idle `SCAN`: enter Quick Selection with focus restore behavior (last chip within resume window; otherwise `BAND`).
- Double click: cycle operation state (`TUNE/SEEK/SCAN`).
- Long press:
  - In idle `TUNE` and idle `SEEK`: open direct frequency-entry dial pad.
  - In idle `SCAN`: start full-band scan.
  - In dialogs/menus/active operations: back/cancel.
- Longer press: mute toggle.
- Triple click: quick-save current station to favorites (shortcut).
- During active seek/scan, click or encoder movement cancels operation.
- Press feedback: while button is held, a progress bar indicates current hold level (`click` -> `long` -> `longer`).
- Hold+rotate: volume control globally (all operation states).
- Volume semantics:
  - Volume level `0` is treated as muted audio.
  - Effective mute is active if either mute toggle is on or volume is `0`.
- Multi-click detection window: `500 ms`.
- Debounce window: `30 ms`.
- Hold thresholds:
  - Long press: `700 ms`
  - Longer press: `1800 ms`
- Quick Selection focus-resume window: `8000 ms`.
- Gesture scope:
  - Double-click and triple-click gestures are active only in operation idle states (`TUNE`, `SEEK`, `SCAN` idle).
  - In menu/dialog layers, multi-click gestures are ignored unless explicitly defined for that layer.
- Gesture precedence:
  - Longer press supersedes long press if both thresholds are crossed.
  - Press+rotate supersedes plain rotate, except while seek/scan is active where any rotate action cancels.
- Button consistency rule:
  - Action verbs are stable across contexts.
  - Any unavoidable context exception must be shown visually (focus/label/hint) before action.
- Quick Edit exit behavior:
  - Long press exits Quick Edit back to the parent operation state from which it was opened (`TUNE`, `SEEK`, or `SCAN`).
- Quick Selection ring order (locked):
  - `BAND -> STEP -> BW -> AGC/ATT -> SQL -> SYS(POWER/WiFi/SLEEP) -> SETTINGS -> FAV -> FINETUNE -> MODE -> BAND`
- `SYS` chip behavior:
  - Click enters `SYS` submenu with: `Battery Saver`, `Sleep Timer`, `Wi-Fi`, `BLE` (BLE may be hidden if disabled in build).
- `SETTINGS` chip behavior:
  - Click enters `Settings` layer.
- `FAV` chip behavior:
  - Click enters `FAV` actions with two options: `Save Current` and `Recall`.
  - `Save Current` is functionally equivalent to triple-click quick-save.
  - `Recall` opens favorites list for tuning.

## 3) Tune Behavior
- Edge behavior per band: wrap.
- Step sizes: same as `ats-mini-signalscale`.
- Encoder acceleration: same as `ats-mini-signalscale`.
  - Speed thresholds (ms): `350, 60, 45, 35, 25`
  - Acceleration factors: `1, 2, 4, 8, 16`
- SSB BFO behavior: same as `ats-mini-signalscale` (step/range/display behavior).
- Direct frequency entry: required (long press opens dial pad).

## 4) Seek Behavior
- Enter seek mode by double-click from tune.
- In seek mode, radio is idle until encoder rotation.
- Seek direction follows encoder direction.
- Each encoder rotation event in seek mode triggers seek in that direction.
- In seek idle, long press opens direct frequency-entry dial pad.
- Stop rule: stop at first valid station.
- Threshold rules: fixed, same as `ats-mini-signalscale`.
  - FM: RSSI `5`, SNR `2`
  - AM/SW: RSSI `10`, SNR `3`
- Cancel behavior: cancel on click or encoder movement.

## 5) Scan Behavior
- Enter scan mode by double-click from seek.
- In scan mode, radio is idle until long press starts a full-band scan.
- In scan idle, click opens Quick Selection (same as other idle operation states).
- Timing: same as `ats-mini-signalscale` scan timing.
  - Tune delay default `30 ms`, FM `60 ms`, AM/SSB `80 ms`
- Hit definition:
  - Threshold gate uses fixed seek thresholds (FM: RSSI `5`/SNR `2`; AM/SW: RSSI `10`/SNR `3`).
  - Record a raw hit only when current step crosses above threshold and previous step was below threshold (drop-then-rise gate).
- Hit dedupe / merge:
  - After scan completes, run cluster merge on raw hits.
  - Hits within merge distance form one cluster.
  - Keep only peak-RSSI hit per cluster.
  - Merge distance:
    - FM: `100 kHz`
    - AM/SW: current regional MW spacing (`9 kHz` or `10 kHz`)
- End behavior: scan runs to band completion and ends.
- In scan mode (not actively scanning), encoder left/right navigates previous/next found station list.
- Found-station navigation applies to stations found by seek history and/or latest scan results.
- During active seek/scan, cancel returns cleanly to the corresponding idle state (seek -> `SEEK` idle, scan -> `SCAN` idle) with no partial action side effects.
- Found-station list lifetime:
  - Session-only (not persisted).
  - Cleared on band change, mode-family change (`FM` vs `AM/SSB`), region-spacing change (`9/10 kHz`), or reboot.
  - New scan replaces prior scan-derived list for current context.
  - Seek hits in current context append/update the current list.

### FM scan rule
- Scan range: `87.0 MHz` to `108.0 MHz`.
- Scan step: fixed `100 kHz`.
- After scan completes, encoder left/right navigates found stations.
- Double-click still cycles `TUNE/SEEK/SCAN`.
- If OIRT region option is enabled, FM band lower edge is extended by region profile and FM scan range extends accordingly.

### AM/SW scan rule
- If current frequency is in a SW broadcast band:
  - Scan broadcast sub-bands only.
  - In `ALL` band, scan defined broadcast sub-bands and ignore MW segment for now.
- If current frequency is in an amateur/non-broadcast area:
  - Scan full selected band span.

## 6) Band Plan
- ALL: `150` to `30000 kHz`
- FM: `87` to `108 MHz` (optionally add OIRT by region setting)
- LW: `150` to `300 kHz`
- MW: `300` to `1800 kHz`

### SW Broadcast bands (kHz)
- 120m: `2300-2495`
- 90m: `3200-3400`
- 75m: `3900-4000`
- 60m: `4750-5060`
- 49m: `5900-6200`
- 41m: `7200-7450`
- 31m: `9400-9900`
- 25m: `11600-12100`
- 22m: `13570-13870`
- 19m: `15100-15800`
- 16m: `17480-17900`
- 15m: `18900-19020`
- 13m: `21450-21850`
- 11m: `25670-26100`

### SW Amateur bands (kHz)
- 160m: `1800-2000`
- 80m: `3500-4000`
- 60m: `5351-5366`
- 40m: `7000-7300`
- 30m: `10100-10150`
- 20m: `14000-14350`
- 17m: `18068-18168`
- 15m: `21000-21450`
- 12m: `24890-24990`
- 10m: `28000-29700`

## 7) Allowed Modes
- FM band: FM only.
- LW/MW/SW/ALL: AM, LSB, USB.
- ALL band: no automatic mode switching.

## 8) Cold Boot Defaults
- Startup frequency: `90.4 MHz`.
- Startup band: FM.
- Startup mode: FM.

## 9) RF Controls
- AGC/attenuation defaults: same as current baseline/`ats-mini-signalscale`.
- Soft mute/squelch behavior: same as `ats-mini-signalscale`.
- De-emphasis and regional FM behavior configurable by region profile.
- MW spacing configurable: `9 kHz` or `10 kHz`.

### Bandwidth selections
- FM: `Auto`, `110k`, `84k`, `60k`, `40k`.
- AM: `1.0k`, `1.8k`, `2.0k`, `2.5k`, `3.0k`, `4.0k`, `6.0k`.
- SSB: `0.5k`, `1.0k`, `1.2k`, `2.2k`, `3.0k`, `4.0k`.

## 10) Favorites and Scan Presets
- Favorites slots: `20`.
- Stored fields now: frequency + bandId.
- Future extension: add RDS/EiBi name fields.
- When full: overwrite oldest entry (FIFO policy).
- Band-scan presets/results are separate storage from favorites.

## 11) Persistence Scope
Persist always:
- Region settings: MW spacing, FM de-emphasis, OIRT enabled profile.
- Display/power settings: brightness default, display sleep timer, power saving mode, shutdown timer.
- Radio state: last band, last mode, last frequency per bandId.
- RF settings: per-mode bandwidth selection.
- Favorites list.

Session-only:
- Active operation state (`TUNE/SEEK/SCAN`).
- Temporary scan result buffer.
- Temporary menu focus/edit cursor state.

## 12) Power and Sleep Behavior

### Display sleep
- Display/UI layer sleeps while radio continues running.
- Backlight off.
- UI refresh paused (effective refresh rate = 0 while sleeping).
- Any encoder/button interaction wakes display.
- First interaction after wake is consumed for wake only (no radio/menu action).

### Power-save mode
- User-toggleable setting in menu.
- Reduced MCU clock/frequency profile.
- Lower UI refresh rate.
- Reduced RSSI polling frequency.
- All radio functions remain available and behaviorally unchanged.

### Sleep timer (deep sleep)
- User-configurable timer sends device into deep sleep (radio off, very low battery use).
- Wake via long press.
- On wake, restore:
  - Last band
  - Last frequency
  - Last mode
  - Last bandwidth

## 13) UI Feedback and Motion
- Every user action shows immediate transient feedback label.
  - Examples: `BW 2.2k`, `Step 10k`, `Saved FAV 07`, `Seek Up`, `Scan Complete`.
- Active focus highlight must be visible at all times in `Now Playing` and `Quick Edit`.
- Hold-progress bar must visibly communicate threshold levels for click/long/longer (distinct fill zones or markers).
- Seek/scan show progress indicators during active operation.
- `TUNE`, `SEEK`, and `SCAN` must have clearly distinct visual identity so users can immediately recognize operating state.
- Rendering must avoid full-screen flicker:
  - Prefer partial/dirty-region redraws.
  - Keep transitions smooth and stable under fast encoder use.

## 14) Error Handling
- SI473x missing: show blocking error screen with retry action.
- Invalid/corrupt saved settings: show warning, revert to safe defaults.
- Save failure: show non-blocking warning and continue running with RAM state.

Safe fallback defaults:
- FM `90.4 MHz`, FM mode, medium brightness, conservative seek thresholds.

## 15) Open Items (small)
- none

## 16) Frequency Entry Dial Pad
- Layout: telephone-style dial.
- Input method: encoder rotates to select digits, click to commit selected digit.
- FM helper: decimal point is shown and used for FM-style entry (`xx.x` / `xxx.x` MHz style).
- Entry formats:
  - FM: one decimal place MHz format (`xx.x` or `xxx.x`).
  - AM/LW/MW/SW/ALL: integer kHz format (`3-5` digits).
- Confirm: dedicated confirm action within dial pad commits frequency and exits dial pad.
- Cancel/exit: long press exits dial pad without applying changes.
- Timeout: if no input for `5 seconds`, dial pad exits without applying changes.
- Out-of-range handling:
  - If entered frequency is outside current band limits, reject entry with transient `Out of band` feedback.
  - No automatic band switching from dial pad entry.

## 17) Post-v0.1 Advanced RF UX (Planned)
- Separate SNR indicator:
  - Distinct from RSSI so users can quickly tell weak-but-clean vs weak-and-noisy signals.
- FM stereo/mono lock indicator:
  - Include visual transition animation when stereo lock changes.
- FM multipath indicator:
  - Use SI473x multipath data to show reflection conditions (antenna positioning aid).
- SW propagation quality graph:
  - Rolling signal history graph with ~20-second window to visualize fade cycles.
