# ETM Scan — Consolidated Documentation

This document consolidates all ETM (scan/seek) design, behaviour, and implementation notes. It replaces the need to read multiple separate docs for ETM; agent task notes are excluded.

---

## Table of contents

1. [Overview](#1-overview)
2. [Current implementation summary](#2-current-implementation-summary)
3. [Data structures and constants](#3-data-structures-and-constants)
4. [State machine and flow](#4-state-machine-and-flow)
5. [Sensitivity and speed](#5-sensitivity-and-speed)
6. [Seek integration](#6-seek-integration)
7. [Segment building and band profiles](#7-segment-building-and-band-profiles)
8. [UI state and settings](#8-ui-state-and-settings)
9. [Assessment notes and fixes applied](#9-assessment-notes-and-fixes-applied)
10. [Scan/ETM model context](#10-scanetm-model-context)
11. [Estimated times, files, references](#11-estimated-times-files-references)

---

## 1. Overview

ETM (Enhanced Tuning Memory) is the unified scan engine that:

- **Replaces** the old split: FM used hardware seek (blocking); AM used manual step-scan (threshold-based). They disagreed on blocking vs non-blocking, threshold source, wrap detection, and result quality.
- **Provides one engine** for both FM and AM-family (LW/MW/SW), with mode-specific parameters (band profiles, thresholds) at the edges.
- **Integrates with seek:** One-shot seek results are added to the same station list via `addSeekResult()`; seek and scan share the same sensitivity setting and per-band thresholds.

**Scope:**

- **Scan:** Handled by `etm_scan_service.cpp`; replaces the scan portion of the old seek/scan service.
- **Seek:** Remains in `seek_scan_service.cpp` but stores results via `services::etm::addSeekResult()`.
- **Station storage:** `EtmMemory.stations[]` (replaces the old `g_found[]`).
- **SSB:** Scan is not available in LSB/USB; `requestScan()` returns false and the UI should show "Not available in SSB".

**Code locations:**

- `include/etm_scan.h` — structs, enums, constants, band profiles.
- `src/services/etm_scan_service.cpp` — EtmScanner, requestScan, tick, navigation, addSeekResult.
- Seek thresholds: `src/services/radio_service.cpp` (uses per-band tables from `etm_scan.h`).
- Settings: `include/settings_model.h`, `src/services/settings_service.cpp`.

---

## 2. Current implementation summary

- **Sensitivity:** Two levels only — **Low** (0) and **High** (1). Default **High**. Stored in `state.global.scanSensitivity`.
- **Per-band thresholds:** FM and AM use different RSSI/SNR for the same sensitivity (see [§5](#5-sensitivity-and-speed)). Tables: `kEtmSensitivityFm[]`, `kEtmSensitivityAm[]`.
- **Seek:** Uses the same sensitivity and band (FM vs AM from `state.radio.modulation`) for threshold lookup in `radio_service.cpp`.
- **ETM coarse pass:** Uses the same per-band tables and `state.global.scanSensitivity` in `etm_scan_service.cpp`.
- **Speed:** **Fast** and **Thorough** are both implemented and persisted; in the **current** code all band profiles have `fineStepKhz=0`, so no band runs a fine pass. After coarse, Thorough calls `buildFineWindows()` which yields 0 windows (all segments skipped), so the engine goes straight to Finalize. Effectively Fast and Thorough are both coarse-only until a profile with non-zero fine step is introduced.
- **Band context:** `EtmMemory` is scoped to a single `(bandIndex, modulation)`. On band or mode change, `syncContext()` clears memory (count=0, cursor=-1) and updates bandIndex/modulation so the list is empty until a new scan is performed.
- **Cancel:** `requestCancel()` sets phase to Cancelling; `tickCancelling()` restores frequency, discards working candidates, and leaves `EtmMemory` unchanged.
- **Settings persistence:** ScanSens has two options (Low/High), `valueCount(ScanSens)==2`. Sanitize: any `scanSensitivity` value > 1 → High. Migration: legacy payloads (no scan fields) get default `scanSensitivity = High`, `scanSpeed = Thorough`.

---

## 3. Data structures and constants

### 3.1 User settings (in GlobalSettings)

```cpp
enum class ScanSensitivity : uint8_t { Low = 0, High = 1 };
enum class ScanSpeed : uint8_t { Fast = 0, Thorough = 1 };
```

### 3.2 Sensitivity (per-band)

```cpp
struct EtmSensitivity { uint8_t rssiMin; uint8_t snrMin; };

// Index 0 = Low, 1 = High. High aligns with original firmware seek.
inline constexpr EtmSensitivity kEtmSensitivityFm[] = {
    {20, 3},  // Low
    {5, 2},   // High (default)
};
inline constexpr EtmSensitivity kEtmSensitivityAm[] = {
    {25, 5},  // Low
    {10, 3},  // High (default)
};
```

### 3.3 Scan pass and capacity

```cpp
constexpr uint8_t kScanPassSeek   = 0;  // seek-found
constexpr uint8_t kScanPassCoarse = 1;  // coarse pass only
constexpr uint8_t kScanPassFine   = 2;  // fine-confirmed

constexpr uint8_t kEtmMaxStations   = 120;
constexpr uint8_t kEtmMaxCandidates  = 128;
constexpr uint8_t kEtmMaxFineWindows = 64;
```

**Eviction:** When the list is full, eviction priority is: `scanPass=0` first, then `scanPass=1`; never evict `scanPass=2`. Eviction applies when adding a new station (seek or merged scan result) and `count >= kEtmMaxStations`.

### 3.4 Station memory (per band-context)

```cpp
struct EtmStation {
    uint16_t frequencyKhz;
    uint8_t  rssi, snr;
    uint8_t  bandIndex;
    Modulation modulation;
    uint8_t  scanPass;     // 0/1/2
    uint32_t lastSeenMs;
};

struct EtmMemory {
    EtmStation stations[kEtmMaxStations];
    uint8_t    count;
    int16_t    cursor;     // -1 = none selected
    uint8_t    bandIndex;
    Modulation modulation;
};
```

On band or mode change, `syncContext()` clears memory (count=0, cursor=-1) and updates bandIndex/modulation so the UI shows an empty list until a new scan is done.

### 3.5 Segments and band profiles

```cpp
struct EtmSegment {
    uint16_t minKhz, maxKhz;
    uint16_t coarseStepKhz;
    uint16_t fineStepKhz;  // 0 = no fine pass
};

struct EtmBandProfile {
    uint16_t coarseStepKhz;
    uint16_t fineStepKhz;
    uint16_t fineWindowKhz;
    uint16_t settleMs;
    uint16_t mergeDistanceKhz;
};
```

**Current profiles (from `etm_scan.h`):**

- **FM:** `kEtmProfileFm` — coarse step 10 (100 kHz in 10 kHz units), no fine (0, 0), 70 ms settle, 9 merge. Coarse-only.
- **MW 9 kHz:** `kEtmProfileMw9` — 9 kHz coarse, no fine, 90 ms, 8 merge.
- **MW 10 kHz:** `kEtmProfileMw10` — 10 kHz coarse, no fine, 90 ms, 9 merge.
- **LW:** `kEtmProfileLw` — 9 kHz, no fine, 90 ms, 8 merge.
- **SW:** `kEtmProfileSw` — 5 kHz coarse, no fine, 90 ms, 4 merge.

### 3.6 Working candidate and fine window

```cpp
struct EtmCandidate {
    uint16_t frequencyKhz;
    uint8_t  rssi, snr;
    uint8_t  scanPass;     // 1=coarse, 2=fine-confirmed
    uint8_t  segmentIndex;
};

struct EtmFineWindow {
    uint16_t centerKhz;
    uint8_t  bestRssi;
    uint16_t scanMinKhz, scanMaxKhz;  // clamped to segment
    uint8_t  segmentIndex;
};
```

### 3.7 Scanner state machine

```cpp
enum class EtmPhase : uint8_t {
    Idle = 0,
    CoarseScan = 1,
    FineScan = 2,
    Finalize = 3,
    Cancelling = 4,
};
```

---

## 4. State machine and flow

### 4.1 Phase flow

- **Idle** → on `requestScan()`: if SSB return false; `syncContext()`; build segment queue; set `totalPoints_` via `countPointsInSegment()` per segment; → **CoarseScan**.
- **CoarseScan:** each tick: if not awaiting measure, tune to `currentKhz_`, set settle timer; else read RSSI/SNR, compare to per-band threshold (FM vs AM from `state.radio.modulation`), add candidate (pass=1) if above; increment `pointsVisited_`; call `advancePoint()`. When `advancePoint()` returns false (segments exhausted): if **Fast** → **Finalize**; else **Thorough** → `buildFineWindows()` then if `fineWindowCount_==0` → **Finalize**, else **FineScan** (with current profiles `fineWindowCount_` is always 0).
- **FineScan:** (not used with current profiles) step over fine windows; upgrade candidate to pass=2 when peak found in window; when all windows done → **Finalize**.
- **Finalize:** merge candidates into `EtmMemory` (dedupe by segment profile’s `mergeDistanceKhz`, best RSSI wins; evict by scanPass 0 then 1 if full); sort by frequency; tune to strongest or restore `restoreKhz_`; clear seekScan.active/scanning; → **Idle**.
- **Cancelling:** restore `restoreKhz_`, clear candidates, clear seekScan active/scanning, publishState; → **Idle**.

### 4.2 Scan termination and advancePoint (no wrap)

The engine scans segments linearly from `minKhz` to `maxKhz` inclusive. **Implementation** (`advancePoint()` in `etm_scan_service.cpp`): (1) If `currentKhz_ >= seg.maxKhz`, move to next segment and set `currentKhz_ = segments_[segmentIndex_].minKhz`; return false when no more segments. (2) Otherwise add `coarseStepKhz`; if `currentKhz_ > seg.maxKhz` clamp to `seg.maxKhz`. Thus the last point of each segment (maxKhz) is always visited. `countPointsInSegment()` uses the same logic (step until pos >= maxKhz, clamping to maxKhz) so `totalPoints_` matches the actual coarse point count.

### 4.3 Display during scan

During scanning, `state.radio.frequencyKhz` is updated each tick so the display shows the current scan position.

### 4.4 Progress

`totalPoints` is the coarse-pass point count (derived from the same logic as `advancePoint()` so the progress bar does not exceed 100% for coarse). During fine pass, `fineScanActive` is true and the UI can show a "FINE" indicator; cap progress at 100% if `pointsVisited` exceeds `totalPoints`.

---

## 5. Sensitivity and speed

### 5.1 Two-level sensitivity (current)

| User setting | FM (RSSI / SNR) | AM (RSSI / SNR) |
|--------------|------------------|------------------|
| **High** (default) | 5 / 2 | 10 / 3 |
| **Low** | 20 / 3 | 25 / 5 |

- **High** matches the original firmware’s “more sensitive” seek (FM 5/2, AM 10/3).
- **Low** is stricter for a cleaner list with fewer weak/false hits.

Seek and ETM coarse both use `state.global.scanSensitivity` and FM vs AM from `state.radio.modulation` to choose `kEtmSensitivityFm` or `kEtmSensitivityAm`, indexed by 0 (Low) or 1 (High). Clamp stored value to 0 or 1 when indexing (sanitize/migrate ensure only 0/1).

### 5.2 Speed

- **Fast:** After coarse, transition directly to Finalize.
- **Thorough:** After coarse, call `buildFineWindows()`; if any segment has `fineStepKhz != 0`, fine windows are built and FineScan runs; otherwise go to Finalize. **Current implementation:** all profiles have `fineStepKhz=0`, so Thorough behaves the same as Fast (coarse-only). ScanSpeed is stored in `GlobalSettings` and exposed in the settings menu (Fast / Thorough).

---

## 6. Seek integration

- **Broker:** `main.cpp` calls `services::etm::addSeekResult(frequencyKhz, rssi, snr)` after a successful seek (when seek completes and result is valid). No direct coupling between seek_scan_service and etm_scan_service.
- **Deduplication:** `addSeekResult()` uses `mergeDistanceKhz_` (set in `syncContext()` from the current band’s profile). It scans `memory_.stations`; if a station within that merge distance exists, it updates that entry’s RSSI, SNR, lastSeenMs and returns (does not change scanPass). Otherwise it calls `addStationToMemory(..., kScanPassSeek)`.
- **Eviction:** When the list is full, `addStationToMemory()` evicts one entry: lowest priority by scanPass (0 first, then 1), then by lowest RSSI. Same eviction rule is used in `addCandidate()` (during coarse) and in `tickFinalize()` when merging candidates into memory.

---

## 7. Segment building and band profiles

Implemented in `requestScan()` and helpers in `etm_scan_service.cpp`:

- **FM:** One segment: `bandMinKhzFor(band, fmRegion)` to `bandMaxKhzFor(band, fmRegion)`. Profile: `profileForBand()` → `kEtmProfileFm`.
- **MW:** One segment; `alignMwSegmentToRaster(minKhz, maxKhz, state)` snaps min/max to 9 kHz or 10 kHz raster (origin from `mwChannelOriginKhzForRegion`). Profile: `kEtmProfileMw9` or `kEtmProfileMw10` from `defaultMwStepKhzForRegion(state.global.fmRegion)`.
- **LW:** One segment from band limits; profile `kEtmProfileLw`.
- **SW broadcast bands** (BC120m, BC90m, …): Intersection of `kBroadcastRedLineSw` with band min/max; multiple segments if the band spans several sub-bands. If no overlap, one full-band segment. Profile for SW range: `kEtmProfileSw`.
- **All-band:** Iterate `kBroadcastRedLineAll`; each sub-band clipped to band min/max; MW sub-bands raster-aligned via `alignMwSegmentToRaster`. Profile per segment: `profileForBand(state, band, minKhz, maxKhz)` — MW range (≤1800 kHz) gets MW profile, else `kEtmProfileSw`.

Segment capacity: `kEtmMaxSegments` (24). Each segment stores minKhz, maxKhz, coarseStepKhz, fineStepKhz; the profile pointer is kept in `segmentProfiles_[]` for settle time and merge distance.

---

## 8. UI state and settings

### 8.1 SeekScanState (published by scanner)

The scanner updates `state.seekScan` in `publishState()` and in the tick path. Relevant fields:

- `active`, `seeking`, `scanning` — set during tick (e.g. coarse/fine set scanning=true).
- `fineScanActive` — set to `(phase_ == EtmPhase::FineScan)`; with current profiles always false.
- `cursorScanPass` — from `memory_.stations[cursor].scanPass` when cursor valid, else 0.
- `totalPoints` — set from `totalPoints_` (coarse point count at scan start).
- `pointsVisited`, `foundCount`, `foundIndex`, `bestFrequencyKhz`, `bestRssi` — updated in tick and finalize.

UI (`ui_service.cpp`): when `fineScanActive`, label shows "SCAN FINE"; when scanning and `totalPoints > 0`, progress shows `pointsVisited/totalPoints` (capped so it does not exceed totalPoints).

### 8.2 Settings menu

- **Scan Sens** (Item::ScanSens): `valueCount` 2; labels `"Low"`, `"High"`; `valueFromState` maps to 0 or 1 (values > 1 treated as 1); `applyValue` sets `state.global.scanSensitivity = valueIndex % 2`. Default High.
- **Scan Speed** (Item::ScanSpeed): two options Fast / Thorough; persisted in `GlobalSettings.scanSpeed`.

### 8.3 Navigation

- `navigateNext(state)` / `navigatePrev(state)` — move cursor with wrap and call `tuneToCursor(state)` and `publishState(state)`.
- `navigateNearest(state)` — binary search in sorted `memory_.stations` by current `state.radio.frequencyKhz`; sets cursor to nearest, tunes, publishes.
- **Integration:** When operation mode is set to Scan, `main.cpp`’s `setOperation(app::OperationMode::Scan)` calls `services::etm::syncContext(g_state)` then `services::etm::navigateNearest(g_state)`. Encoder rotation in Scan mode calls `navigateNext` or `navigatePrev` depending on direction.

---

## 9. Assessment notes and fixes applied

These points came from the ETM Scan Redesign Plan assessment; they have been addressed or should be kept in mind:

- **advancePoint():** Implemented so the last point of each segment (maxKhz) is always visited: if `currentKhz_ >= seg.maxKhz` advance to next segment; else add step and clamp to maxKhz. `countPointsInSegment()` uses the same logic so `totalPoints_` matches the real point count.
- **FM step and time:** FM profile: coarse step 10 (100 kHz in 10 kHz units), 70 ms settle, no fine. World FM (8750–10800) → 21 coarse points; ~1.5 s coarse-only.
- **Segment building:** Implemented as in §7 (MW raster via `alignMwSegmentToRaster`, FM region from bandplan, All/SW from red-line tables).
- **Band context:** `syncContext()` clears memory when `bandIndex` or `modulation` changes; called from `requestScan()`, `setOperation(Scan)`, and on band/context changes in main.
- **Seek thresholds:** `radio_service.cpp` exposes `seekThresholdRssiFor(state)` and `seekThresholdSnrFor(state)`: index = `state.global.scanSensitivity % 2`; FM uses `kEtmSensitivityFm[idx]`, else `kEtmSensitivityAm[idx]`. `isValidSeekResult()` uses these thresholds.
- **Settings migration:** Legacy payload has no scan fields; `migrateLegacyGlobal()` sets `scanSensitivity = High`, `scanSpeed = Thorough`. `sanitizeGlobal()` forces `scanSensitivity` > 1 to High.
- **addSeekResult:** Uses `mergeDistanceKhz_` (from current band profile in syncContext); dedupes and updates existing entry or adds with scanPass=0; eviction in `addStationToMemory()` when full.
- **Eviction:** In `addCandidate()`, `addStationToMemory()`, and `tickFinalize()` when at capacity; priority scanPass=0 then 1, then by lowest RSSI.
- **navigateNearest:** Called from `setOperation(OperationMode::Scan)` in main.cpp after `syncContext()`.

RSSI/SNR thresholds are in chip units; they may need tuning if the SI4735 API uses a different scale.

---

## 10. Scan/ETM model context

### 10.1 Why ETM-style scan (FM fix rationale)

- FM station detection on SI473x is generally better using the chip’s seek validity logic than manual sampling at every 100 kHz with threshold + merge heuristics.
- The FM scan fix moved FM to a seek-loop style (repeated seek, collect, dedupe, stop on wrap/cancel) and corrected FM merge/dedupe for 10 kHz frequency units. Performance improvements: UI skips RSSI/SNR polling during scan, reduced render cadence and main-loop delay during scan.

### 10.2 Remaining work (MW/SW/AM)

- **Goal:** Make AM-family scanning (LW/MW/SW in AM mode) closer to ETM/ATS quality while preserving segment rules.
- **Recommended:** One scan controller with two backends: (1) FM: seek-loop ATS/ETM (implemented); (2) AM-family: segment-aware step-scan (or segment-aware seek-loop where available). SSB remains manual or unsupported for ATS.
- **AM-family:** Use segment-aware scan (or seek-loop per segment); dedupe with region-aware spacing; keep SSB on manual/stepped detector. Merge/dedupe: separate raw cluster merge distance from found-list dedupe; use regional MW spacing (9/10 kHz) where specified.
- **Performance:** Skip UI signal polling and lower redraw cadence during scan (already applied generically); reduce main-loop delay; consider scan-specific radio delay tuning.

---

## 11. Estimated times, files, references

### 11.1 Scan times (approximate)

- **FM (87.5–108 MHz):** Coarse-only, ~21 points × 70 ms ≈ 1.5 s (region-dependent point count).
- **MW (530–1710 kHz):** Coarse-only with 9/10 kHz step and 90 ms settle — on the order of several seconds; exact count depends on segment and raster.
- **SW:** Depends on segment count and 5 kHz step, 90 ms settle.

With current profiles (all coarse-only), Fast and Thorough take the same time; fine pass is not run.

### 11.2 Key files

- **New/ETM:** `include/etm_scan.h`, `src/services/etm_scan_service.cpp`
- **Modified:** `include/app_state.h`, `include/app_services.h`, `src/main.cpp`, `src/services/settings_service.cpp`, `src/services/radio_service.cpp`, `src/services/seek_scan_service.cpp` (scan removed/deprecated), UI/settings as needed

### 11.3 Pre-ETM state

Project state **before** the ETM overhaul is tagged **pre-etm-overhaul**. To return: `git checkout pre-etm-overhaul`. See `docs/PRE_ETM_OVERHAUL_STATE.md` for details.

---

*This document consolidates: ETM_SCAN_REDESIGN_PLAN.md, ETM_SCAN_REDESIGN_PLAN_ASSESSMENT.md, SCAN_ETM_MODEL_PLAN.md, SCAN_SENSITIVITY_TWO_LEVEL_PLAN.md, and current implementation in etm_scan.h / etm_scan_service.cpp. Agent task notes are not included.*
