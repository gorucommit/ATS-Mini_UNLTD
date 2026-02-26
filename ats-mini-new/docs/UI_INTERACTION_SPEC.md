# UI Interaction Spec (Current Implementation)

This document describes the behavior implemented in the current firmware source (`src/main.cpp`, `include/quick_edit_model.h`, `include/settings_model.h`).

## Global input rules

- `Rotate`
  - Normal: layer/operation-dependent action
  - If seek/scan is active: treated as cancel request first
- `Press + Rotate`
  - Adjust volume (all normal layers; not while active seek/scan)
- `Single click`
  - Layer/operation-dependent action
  - If seek/scan is active: treated as cancel request first
- `Double click`
  - In `NowPlaying` only: cycle operation `Tune -> Seek -> Scan -> Tune`
  - If seek/scan is active: treated as cancel request first
- `Triple click`
  - In `NowPlaying` only: save current station to next favorite slot
  - If seek/scan is active: treated as cancel request first
- `Long press`
  - Layer/operation-dependent action
  - If seek/scan is active: treated as cancel request first
- `Very long press`
  - Toggle mute (`ui.muted` + `radio::setMuted`)

## Timing constants (code)

- Debounce: `30 ms`
- Multi-click window (NowPlaying): `500 ms`
- Menu/dial-pad click window target: `0 ms`, but input service clamps to minimum `120 ms`
- Long press: `700 ms`
- Very long press: `1800 ms`
- Quick Edit auto-timeout: `10 s`
- Quick Edit focus resume window: `8 s`
- Dial pad timeout: `5 s`
- Dial pad error display: `1.5 s`

## Operation modes (`NowPlaying`)

### Tune

- `Rotate`: tune frequency
  - FM/AM: step tuning with wrap within current band
  - SSB: BFO/frequency coupled tuning (`25 Hz` BFO steps, frequency rolls on ±500 Hz crossings)
- `Click`: enter `QuickEdit`
- `Long press`: open `DialPad`

### Seek

- `Rotate`: request one seek in direction of rotation
- `Click`: enter `QuickEdit`
- `Long press`: open `DialPad`

### Scan (ETM)

- `Rotate`: navigate ETM found-station list (`prev/next`)
- `Click`: enter `QuickEdit`
- `Long press`: start ETM scan (`services::etm::requestScan`)
  - In SSB, ETM scan request returns false (no UI error message is currently shown)

## Active seek / scan cancellation

- While ETM scan or seek is active, any click/rotate/long-press path hits the shared cancel helper in `main.cpp` first.
- ETM scan cancel: `services::etm::requestCancel()`
- Seek cancel:
  - pending seek request: cleared before entering radio seek
  - active seek: `services::seekscan::requestCancel()` injects an input abort event used by the radio seek callback

## UI layers

### `NowPlaying`

- Default/main layer
- Quick chips are always visible
- Shows frequency, mode, signal, battery, clock, RDS fields (FM), quick-edit chips, scale, and optional volume HUD

### `QuickEdit`

Quick Edit has two states:

- browse mode (`quickEditEditing = false`)
- popup edit mode (`quickEditEditing = true`)

#### Focus behavior

- On entry:
  - restore last focused item if within `8 s`
  - otherwise start at `Band`
- Non-editable chips are skipped (e.g. `BFO` outside SSB, `AVC` in FM, `Mode` in fixed-FM bands)

#### Focus order (implemented)

- `Mode -> Band -> Step -> Bandwidth -> Agc -> Sql -> Sys -> Settings -> Fine (BFO) -> Avc -> Favorite`

#### Browse mode actions

- `Rotate`: move focus
- `Click`:
  - `Settings` chip opens `Settings` layer directly
  - other editable chips open popup editor
- `Long press`: return to `NowPlaying` (restores parent operation mode)

#### Popup edit mode actions

- `Rotate`: cycle popup option list
- `Click`: apply selection, close popup
  - most chips return to `NowPlaying`
  - `Settings` chip opens `Settings` layer instead

#### QuickEdit actions by chip (current behavior)

- `Band`: apply per-band runtime state to radio
- `Step`: change FM/AM step for current modulation
- `Bandwidth`, `Agc`, `Sql`, `Avc`, `Sys`: apply runtime settings and mark settings dirty
- `Favorite`: save current or tune to selected favorite
- `Fine`: set SSB BFO from popup value
- `Mode`: switch `AM/LSB/USB` where band supports it

### `Settings`

- `Rotate`:
  - browse mode (`settingsChipArmed = false`): move selected item
  - edit mode (`settingsChipArmed = true`): change value for current item
- `Click`: toggle edit mode for current item (no-op for non-editable items like `About`)
- `Long press`:
  - if edit mode is armed: disarm edit mode
  - otherwise return to `QuickEdit` focused on `Settings`

Current item order (`settings_model.h`):

- `RDS -> EiBi -> Brightness -> Region -> SoftMute -> Theme -> UI Layout -> Scan Sens -> Scan Speed -> About`

Notes:

- Some items are placeholders in UI/behavior terms (`EiBi`, `Theme`, `UI Layout`) but are still present in the menu and persisted.
- `SoftMute` is not editable in FM mode.

### `DialPad`

- Opened by long press in `Tune` or `Seek` (`NowPlaying`)
- `Rotate`: move focus around 13 targets
- `Single click`: activate focused target
- `Long press`: exit without applying
- Timeout (`5 s` inactivity): exit without applying
- Error display:
  - invalid parse/application shows `ERROR`
  - click clears error immediately
  - otherwise clears after `1.5 s`

#### Dial-pad focus order (implemented)

- `1,2,3,4,5,6,7,8,9,Back,0,AM,FM`

#### Apply behavior

- `AM`: parse input as AM-family frequency, infer band, tune/apply if valid
- `FM`: parse input as FM frequency (10 kHz units), validate against current FM region, tune/apply if valid

## Scan/seek UI feedback (current)

- During ETM scan:
  - `seekScan.active = true`
  - `seekScan.scanning = true`
  - progress shown as `pointsVisited / totalPoints`
  - label changes to `SCAN FINE` when ETM is in `FineScan` or `VerifyScan`
- During seek:
  - `seekScan.active = true`
  - `seekScan.seeking = true`

## Source of truth

- `src/main.cpp`
- `include/quick_edit_model.h`
- `include/settings_model.h`
- `src/services/input_service.cpp`
