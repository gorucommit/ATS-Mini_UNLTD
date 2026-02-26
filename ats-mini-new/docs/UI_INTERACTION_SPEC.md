# UI Interaction Spec

This file defines encoder/button behavior as a state-action contract.

## Global rules
- `Rotate`: move focus in Quick Selection browse; change value in edit contexts.
- `Press+Rotate`: adjust volume.
- `Double click`: cycle operation mode `TUNE -> SEEK -> SCAN -> TUNE`.
- `Triple click`: save current station to favorites.
- Hold progress bar shows press level thresholds (`click`, `long`, `longer`).
- Quick chips are always visible in `Now Playing`; click activates ring focus/highlight, not chip visibility.
- Volume level `0` is treated as mute.

## Timing constants
- Debounce window: `30 ms`.
- Multi-click window (double/triple detection): `500 ms`.
- Long-press threshold: `700 ms`.
- Longer-press threshold: `1800 ms`.
- Quick Selection focus-resume window: `8000 ms`.

## Gesture precedence and scope
- `Longer press` supersedes `Long press` when hold time crosses the longer threshold.
- `Press+Rotate` takes precedence over plain `Rotate`, except during active seek/scan where any rotation is treated as cancel.
- `Double click` and `Triple click` are active only in operation idle states (`TUNE`, `SEEK`, `SCAN` idle).
- In UI layers (`QUICK EDIT`, `SYS SUBMENU`, `FAVORITES`, `SETTINGS`, `DIAL PAD`), multi-click gestures are ignored unless explicitly defined in that layer.

## Context behavior

### TUNE (idle)
- `Click`: enter Quick Selection with focus restore behavior (last focused chip within resume window, otherwise `BAND`).
- `Long press`: open frequency-entry dial pad.
- `Longer press`: mute toggle.
- `Rotate`: tune frequency with band wrap and mode-aware step/BFO behavior.

### SEEK (idle)
- `Click`: enter Quick Selection with focus restore behavior (last focused chip within resume window, otherwise `BAND`).
- `Rotate`: start one seek in direction of rotation.
- `Long press`: open frequency-entry dial pad.
- `Longer press`: mute toggle.

### SEEK (active)
- `Click` or `Rotate`: cancel active seek and return to `SEEK` idle.

### SCAN (idle)
- `Click`: enter Quick Selection with focus restore behavior (last focused chip within resume window, otherwise `BAND`).
- `Rotate`: navigate found station list (prev/next).
- `Long press`: start full-band scan.
- `Longer press`: mute toggle.

### SCAN (active)
- `Click` or `Rotate`: cancel active scan and return to `SCAN` idle.

### QUICK EDIT
- Ring order (clockwise):
  - `BAND -> STEP -> BW -> AGC/ATT -> SQL -> SYS(POWER/WiFi/SLEEP) -> SETTINGS -> FAV -> FINETUNE -> MODE -> BAND`
- Entry focus:
  - Restore last focused chip if re-entered within focus-resume window.
  - Otherwise `BAND`.
- Browse state:
  - `Rotate right`: move focus clockwise.
  - `Rotate left`: move focus counterclockwise.
  - `Click`: activate focused chip.
- Edit state (for value chips such as `STEP`, `BW`, `AGC/ATT`, `SQL`, `MODE`, `FINETUNE`):
  - `Rotate`: change chip value.
  - `Click`: commit and return to Quick Selection browse state.
- `SYS` chip:
  - `Click`: enter SYS submenu (`Battery Saver`, `Sleep Timer`, `Wi-Fi`, `BLE`).
- `SETTINGS` chip:
  - `Click`: enter `SETTINGS` layer.
- `FAV` chip:
  - `Click`: enter `FAV ACTIONS` menu (`Save Current`, `Recall`).
- `Long press`: back/cancel to the parent operation state from which Quick Edit was entered (`TUNE`, `SEEK`, or `SCAN`).

### FAV ACTIONS
- Items order:
  - `Save Current -> Recall`
- `Rotate`: move action focus.
- `Click` on `Save Current`: save current station to favorites and return to Quick Selection browse.
- `Click` on `Recall`: open `FAVORITES LIST`.
- `Long press`: return to Quick Selection browse.

### SYS SUBMENU
- Items order:
  - `Battery Saver -> Sleep Timer -> Wi-Fi -> BLE`
- `Rotate`: move item focus in submenu.
- `Click`: edit/toggle focused item.
- `Long press`: return to Quick Selection browse.

### FAVORITES LIST
- `Rotate`: move favorite selection.
- `Click`: tune to selected favorite and return to parent operation idle state.
- `Long press`: return to Quick Selection browse.

### SETTINGS
- Items order:
  - `RDS -> EiBi -> Brightness -> Region -> Theme -> UI Layout -> About`
- `Rotate`: change current field.
- `Click`: select/enter next item.
- `Long press`: back one level.

### DIAL PAD
- `Rotate`: move highlight over digit (1–9, 0), Back, AM, or FM.
- `Press` on digit: append to buffer (max 5).
- `Press` on Back: remove last digit.
- `Press` on AM or FM: parse buffer, validate, apply frequency and exit, or show ERROR.
- `Long press`: exit without applying.
- `Timeout 5s`: exit without applying.

## Feedback
- Show transient labels for each action.
- Keep active-focus highlight visible.
- Hold bar fill must clearly indicate thresholds for click/long/longer.
- `TUNE`, `SEEK`, and `SCAN` screens must be visually distinct at a glance.
- Avoid full-screen redraw flicker; prefer partial updates.
