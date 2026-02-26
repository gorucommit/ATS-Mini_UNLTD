# Frequency Dial Pad Redesign Plan

> Status (2026-02-26): Historical planning/assessment/session document.
> It may not reflect the current firmware implementation exactly. For current implementation docs, use docs/ARCHITECTURE.md, docs/FIRMWARE_MAP.md, docs/ETM_SCAN.md, docs/UI_INTERACTION_SPEC.md, and source under src/ and include/


## Overview

Replace the current frequency input implementation with a **phone-style dial pad**: digits 0–9 in a grid, plus Back, AM, and FM actions. The user selects the target band (AM or FM) explicitly via on-screen buttons rather than inheriting from the current band. Invalid inputs show "error" and clear the buffer.

---

## 1. Bug: Dial Pad on Radio Power-On

**Problem:** The dial pad appears when the radio is turned on. It must **never** appear at boot.

**Investigation / Fix:**
- Ensure `g_state.ui.layer` is `NowPlaying` at boot (already set in `makeDefaultState()`).
- Verify no code path during `setup()` or first `loop()` sets layer to `DialPad`.
- Check for uninitialized `UiState` fields (e.g. `dialPadDigitCount`, `dialPadCursor`) that could cause incorrect draw or navigation.
- Add an explicit guard: never draw DialPad if we haven’t entered it via long-press in TUNE/SEEK.

---

## 2. UI Layout: Phone-Style Dial Pad

### 2.1 Layout Structure

A standard **3×4 phone dialpad**. Digits 1–9 in a 3×3 block, then a 4th row. The only special case: **the last cell is two buttons** — one reads "AM", one reads "FM". Same interaction as digits: rotate to select, press to choose.

```
┌─────────────────────────────────┐
│  FREQUENCY                       │
│  ┌─────────────────────────┐    │
│  │  _ _ _ _ _              │    │  ← Digit display (up to 5 spaces)
│  └─────────────────────────┘    │
│                                 │
│  [ 1 ] [ 2 ] [ 3 ]              │
│  [ 4 ] [ 5 ] [ 6 ]              │  ← 3×4 dialpad, digits 1–9
│  [ 7 ] [ 8 ] [ 9 ]              │
│  [ ← ] [ 0 ] [AM][FM]           │  ← Back, 0, then AM + FM (two buttons in one cell)
│                                 │
│  Rotate: select  Press: choose  │
└─────────────────────────────────┘
```

- **Digit display area:** Shows up to 5 entered digits. Underscores for empty positions.
- **Dialpad:** 3×4 grid. You select digits the same way you select everything — rotate to highlight, press to enter. When done entering digits, rotate to AM or FM and press to apply.
- **Last cell:** Holds two buttons, "AM" and "FM". Rotate to highlight one, press to apply.
- **Error state:** Show "ERROR" in the digit display, then clear after a short delay.

### 2.2 Interaction Model

| Action | Result |
|--------|--------|
| **Rotate** | Move highlight over: digit (1–9, 0), Back, AM, or FM |
| **Press** on digit | Append digit to buffer (max 5). Move to next space. |
| **Press** on Back | Remove last digit. If buffer empty, no-op. |
| **Press** on AM (half) | Parse buffer, validate for AM, apply or show ERROR |
| **Press** on FM (half) | Parse buffer, validate for FM, apply or show ERROR |
| **Long press** | Exit dial pad without applying |
| **5 s timeout** | Exit without applying |

---

## 3. Cursor / Focus Model

**Focusable items (rotation order):** 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, Back, AM, FM — thirteen items total.

**Implementation:** Store `dialPadFocusIndex` (0–12). AM and FM are two separate buttons; they’re just drawn next to each other in the last cell (so it appears as `[AM][FM]`). Rotating moves the highlight from one button to the next. When the highlight is on AM, AM is highlighted; when it’s on FM, FM is highlighted. Press executes the action.

---

## 4. Frequency Parsing, Validation, and Band Mapping

### 4.1 Parsing Rules

**FM (digits = MHz with implied decimal):**
- 1 digit `X` → X.0 MHz (e.g. `9` → 90.0 MHz)
- 2 digits `XX` → XX.0 MHz (e.g. `87` → 87.0 MHz)
- 3 digits `XXX` → X.XX MHz (e.g. `973` → 97.3 MHz)
- 4 digits `XXXX` → XX.XX MHz (e.g. `8930` → 89.30 MHz)
- 5 digits → **invalid for FM** (no such format)

**AM (digits = kHz):**
- 1–2 digits: multiply by 1000 → kHz. `7` → 7000 kHz, `1` → 1000 kHz, `19` → 19000 kHz
- 3–5 digits: use directly as kHz. `973` → 973 kHz, `9000` → 9000 kHz, `14200` → 14200 kHz

### 4.2 Valid Ranges

**FM:** 87.5–108.0 MHz (region-dependent: Japan 76–90, OIRT 65.8–74, etc.). Value must fall within the active region’s FM band.

**AM:** Must fall in a band from `kBandPlan` (LW 150–285 kHz, MW 530–1700 kHz, SW broadcast bands up to ~30 MHz). If no band contains the frequency, ERROR.

### 4.3 Validation Summary (from user test cases)

| Input | AM | FM |
|-------|-----|-----|
| `9` | 9000 kHz ✓ | 90.0 MHz ✓ |
| `7` | 7000 kHz ✓ | 70.0 MHz → ERROR (below 87.5) |
| `1` | 1000 kHz ✓ | 10.0 MHz → ERROR (below 87.5) |
| `19` | 19000 kHz ✓ | 19.0 MHz → ERROR (below 87.5) |
| `34` | 34000 kHz → ERROR (no band at 34 MHz) | 34.0 MHz → ERROR (below 87.5) |
| `87` | 87000 kHz → ERROR (no band at 87 MHz) | 87.0 MHz ✓ |
| `973` | 973 kHz ✓ | 97.3 MHz ✓ |
| `8930` | — | 89.30 MHz ✓ |
| `89301` | ERROR on 5th digit | ERROR on 5th digit |
| `99999` | ERROR on 5th digit | ERROR on 5th digit |

### 4.4 Derived Rules

1. **FM:** 1–4 digits only. Interpret as MHz per §4.1. Value must be in region FM range. Out-of-range (e.g. 19, 34) → ERROR on FM press.
2. **AM:** 1–5 digits. Parse per §4.1. Value must be in an AM band (LW/MW/SW). No band (e.g. 34 → 34000 kHz) → ERROR on AM press.
3. **5th-digit error:** When the 5th digit is entered, check whether the resulting 5-digit value could be valid for *either* AM or FM:
   - If valid for at least one → accept, wait for AM/FM press.
   - If valid for neither (e.g. 89301, 99999) → ERROR immediately, clear buffer.
4. **Empty buffer + AM/FM:** No digits entered, user presses AM or FM → ERROR (need at least 1 digit).

### 4.5 Error Handling

- **When:** Invalid parse, out-of-range value, no matching band, or 5th-digit dead-end (both AM and FM invalid).
- **UX:** Show "ERROR" in digit display. After ~1–2 s (or on next interaction), clear buffer and return to empty state for retry.

---

## 5. State Model Changes

### 5.1 UiState / Dial Pad State

Replace or extend current dial pad fields:

```
// Dial pad state (when layer == DialPad)
uint8_t dialPadDigitCount;       // 0..5, number of digits entered
char dialPadDigits[5];           // '0'-'9', indices 0..digitCount-1
uint8_t dialPadFocusIndex;       // 0..12 (1-9, 0, Back, AM, FM)
bool dialPadErrorShowing;        // true when "ERROR" is displayed
uint32_t dialPadErrorUntilMs;    // timestamp to clear error
// No dialPadBandIndex - user chooses AM/FM explicitly
```

### 5.2 Initialization on Enter

- `dialPadDigitCount = 0`
- `dialPadDigits` cleared
- `dialPadFocusIndex = 0` (e.g. digit 1)
- `dialPadErrorShowing = false`
- Do **not** pre-fill from current frequency. Always start empty.

---

## 6. Band Resolution Logic

### 6.1 FM

- Parse buffer as `value = digits as integer`; treat as MHz×10 (e.g. 973 → 97.3).
- Multiply by 10 for kHz: 9730 kHz.
- Clamp to `fmRegionProfile(region).fmMinKhz` .. `fmRegionProfile(region).fmMaxKhz`.
- Set `bandIndex = FM band`, `frequencyKhz = value`, `modulation = FM`.

### 6.2 AM

- Parse buffer as kHz (e.g. 973 → 973, 9000 → 9000).
- Find band in `kBandPlan` where `minKhz <= value <= maxKhz`. Prefer MW for 530–1700, LW for 150–285, else first matching SW band.
- If no band contains value → ERROR.
- Set `bandIndex`, `frequencyKhz = value`, `modulation = AM`.

---

## 7. Implementation Phases

| Phase | Task |
|-------|------|
| **1** | Fix boot: ensure DialPad never shows at power-on; add guards |
| **2** | New state model: digits buffer (0–5), focus index, error state; init empty on enter |
| **3** | UI: phone-style grid (0–9), Back, AM, FM; rotate to move focus, press to act |
| **4** | Parsing: implement FM (MHz×10) and AM (kHz) with band resolution |
| **5** | Validation: implement ERROR for invalid combos; clear on error and on 99999 |
| **6** | Polish: error message timing, timeout, long-press exit |

---

## 8. Files to Modify

- `include/app_state.h` – dial pad state fields
- `src/main.cpp` – enter/exit logic, rotation/click handlers, parsing, validation
- `src/services/ui_service.cpp` – `drawDialPadScreen()` for new layout and focus
- `docs/UI_INTERACTION_SPEC.md` – update DIAL PAD section

---

## 9. Out of Scope (for this plan)

- SSB / other modes
- Band selection beyond AM/FM for this input method
- Hardware keyboard or other input devices
