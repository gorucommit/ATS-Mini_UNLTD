# Scan sensitivity: two levels (Low / High) with per-band thresholds

**Goal:** Replace the current three-level scan sensitivity (Low / Medium / High) with two levels (Low / High). High is the default. Thresholds are **per band**: FM and AM use different RSSI/SNR values for the same sensitivity level, aligned with the original firmware’s seek thresholds.

**No implementation in this doc — plan only.**

---

## 1. Target behaviour

| User setting | FM (RSSI / SNR) | AM (RSSI / SNR) |
|--------------|------------------|------------------|
| **High** (default) | 5 / 2 | 10 / 3 |
| **Low** | 20 / 3 | 25 / 5 |

- **High** matches the original firmware’s “more sensitive” seek (FM 5/2, AM 10/3).
- **Low** is stricter to reduce false/weak hits when the user wants a cleaner list.

---

## 2. Data model changes

### 2.1 `include/etm_scan.h`

- **Enum:** Remove `Medium`. Keep two values only:
  - `ScanSensitivity::Low  = 0`
  - `ScanSensitivity::High = 1`
- **Threshold tables:** Replace the single `kEtmSensitivityTable[3]` with **per-band** tables so that FM and AM can have different thresholds for the same sensitivity level.
  - **Option A (recommended):** Two arrays indexed by sensitivity (0 = Low, 1 = High):
    - `kEtmSensitivityFm[2]` = `{ {20, 3}, {5, 2} }`  // Low, High
    - `kEtmSensitivityAm[2]` = `{ {25, 5}, {10, 3} }` // Low, High
  - **Option B:** One 2×2 structure (e.g. `[sensitivity][band]` with band 0=FM, 1=AM).
- **Helper (optional):** Add `EtmSensitivity thresholdForScan(app::ScanSensitivity s, bool isFm)` in `etm_scan.h` or in the service that uses it, returning the correct (rssiMin, snrMin) for the given sensitivity and band. Call sites then pass (sensitivity, isFm) instead of indexing a single table.

### 2.2 `include/app_state.h`

- **Default:** In `makeDefaultState()` (or wherever global defaults are set), set `scanSensitivity = ScanSensitivity::High` (replace current `Medium`).

---

## 3. Call sites that use sensitivity thresholds

### 3.1 Seek thresholds — `src/services/radio_service.cpp`

- **Current:** `seekThresholdRssiFor(state)` and `seekThresholdSnrFor(state)` index `kEtmSensitivityTable[state.global.scanSensitivity]` and return a single RSSI/SNR for all bands.
- **Change:** Use **band** (FM vs AM) from `state.radio.modulation`:
  - If `state.radio.modulation == app::Modulation::FM`, use `kEtmSensitivityFm[sensitivity].rssiMin` / `snrMin`.
  - Else (AM, LSB, USB, or any non-FM) use `kEtmSensitivityAm[sensitivity].rssiMin` / `snrMin`.
- Clamp `sensitivity` to 0 or 1 when indexing (for robustness after migration).

### 3.2 ETM coarse pass — `src/services/etm_scan_service.cpp`

- **Current:** `tickCoarse()` uses `app::kEtmSensitivityTable[static_cast<uint8_t>(state.global.scanSensitivity)]` for the threshold check.
- **Change:** Determine “FM vs AM” from the **current scan context** (e.g. `state.radio.modulation` or band at scan start). Use the same rule as seek: FM → `kEtmSensitivityFm`, else → `kEtmSensitivityAm`. Index by `state.global.scanSensitivity` (0 or 1).

---

## 4. Settings and persistence

### 4.1 `include/settings_model.h`

- **ScanSens value count:** `valueCount(Item::ScanSens)` return **2** (not 3).
- **valueFromState(ScanSens):** Map `state.global.scanSensitivity` to 0 or 1; if stored value &gt; 1, treat as 1 (High).
- **applyValue(ScanSens):** `state.global.scanSensitivity = valueIndex % 2` (0 = Low, 1 = High).
- **formatValue(ScanSens):** Labels **"Low"** and **"High"** only (remove "Medium"). Use `kSens[] = {"Low", "High"}` and index by `static_cast<uint8_t>(state.global.scanSensitivity) % 2`.

### 4.2 `src/services/settings_service.cpp`

- **sanitizeGlobal():** If `sensRaw > 1`, set `global.scanSensitivity = app::ScanSensitivity::High` (so any legacy value 2 or garbage becomes High). Allow only 0 (Low) and 1 (High).
- **migrateLegacyGlobal():** Set default for legacy payloads to `ScanSensitivity::High` (replace current `Medium`). Existing stored values 0/1/2 from old three-level schema: map 0 → Low (0), 1 and 2 → High (1) so that old “Medium” and “High” both become new “High”.

---

## 5. UI and docs

- **Settings panel:** Only two options for “Scan Sens” (or equivalent label): **Low** and **High**. No “Medium”.
- **Docs:** Update any reference to three sensitivity levels (e.g. `docs/agent tasks/Agentnotes-ETM-overhaul-2026-02-22.md`, `ETM_SCAN_REDESIGN_PLAN.md`, `ETM_SCAN_REDESIGN_PLAN_ASSESSMENT.md`) to state that there are two levels (Low / High), default High, and that thresholds are per band (FM 5/2 or 20/3, AM 10/3 or 25/5).

---

## 6. Implementation checklist (summary)

| # | File / area | Change |
|---|-------------|--------|
| 1 | `include/etm_scan.h` | Remove `Medium`; add `kEtmSensitivityFm[2]`, `kEtmSensitivityAm[2]` with values above; optional helper. |
| 2 | `include/app_state.h` | Default `scanSensitivity = ScanSensitivity::High`. |
| 3 | `src/services/radio_service.cpp` | `seekThresholdRssiFor` / `seekThresholdSnrFor`: branch on FM vs AM; index correct table with sensitivity 0/1. |
| 4 | `src/services/etm_scan_service.cpp` | In coarse threshold check, use FM vs AM table by current band/modulation; index by 0/1. |
| 5 | `include/settings_model.h` | ScanSens: valueCount 2; valueFromState/applyValue/formatValue for two options only; labels "Low", "High". |
| 6 | `src/services/settings_service.cpp` | sanitize: sensRaw &gt; 1 → High; migrate: default High, map old 1 and 2 to High. |
| 7 | Docs | Update ETM/scan sensitivity descriptions to two levels and per-band thresholds. |

---

## 7. Testing

- **Seek:** On FM, High should behave like original (5/2); Low should require 20/3. On AM, High 10/3, Low 25/5. Verify seek stops on weak stations with High and only on stronger with Low.
- **Scan (ETM):** Run FM scan with High vs Low; confirm more stations with High. Same for AM. No “Medium” in settings.
- **Persistence:** Set Low, reboot; should remain Low. Set High, reboot; should remain High. Old NVS with value 1 or 2 should load as High.
- **Sanitize:** If a stored value is 2 (or &gt; 1), after load it should be treated as High.

---

## 8. Rationale (short)

- Aligns **High** with the original firmware’s seek thresholds (FM 5/2, AM 10/3) so scan and seek find the same kinds of stations when the user wants maximum sensitivity.
- **Low** gives a stricter option (FM 20/3, AM 25/5) for a cleaner list with fewer weak or false hits.
- Two choices keep the UI simple; per-band thresholds match real-world differences between FM and AM signal levels and chip behaviour.
