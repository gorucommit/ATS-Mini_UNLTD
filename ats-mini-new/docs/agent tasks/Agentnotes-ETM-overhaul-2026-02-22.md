# Agent notes: ETM Scan Overhaul

**Date:** 2026-02-22  
**Plan:** [ETM_SCAN_REDESIGN_PLAN.md](../ETM_SCAN_REDESIGN_PLAN.md)

---

## Where we are

- **Phase 1:** Done  
- **Phase 2:** Done  
- **Phase 3:** Done (navigation + addSeekResult + eviction)  
- **Phase 4:** Done (ScanSensitivity/ScanSpeed in app_state, SeekScanState, settings)  
- **Phase 5:** Done (wire ETM in main.cpp, seek broker, settings UI, FINE indicator)  
- **Phase 6:** Done (deprecated scan code removed from seek_scan_service; main calls etm::publishState after addSeekResult)

---

## What’s done

### Phase 1 – Core structures

- **`include/etm_scan.h`**  
  Enums: `ScanSensitivity`, `ScanSpeed`, `EtmPhase`. Structs: `EtmStation`, `EtmMemory`, `EtmSegment`, `EtmBandProfile`, `EtmCandidate`, `EtmFineWindow`, `EtmSensitivity`. Constants: `kScanPassSeek/Coarse/Fine`, `kEtmMaxStations/Candidates/FineWindows`. Band profiles: `kEtmProfileFm`, `kEtmProfileMw9/10`, `kEtmProfileSw`, `kEtmProfileLw`. Sensitivity table: `kEtmSensitivityTable[]`.

- **`src/services/etm_scan_service.cpp`**  
  `EtmScanner` class and `services::etm` namespace with: `requestScan()`, `tick()`, `requestCancel()`, `busy()`, `syncContext()`, `publishState()`, `addSeekResult()`, `navigateNext/Prev/Nearest()` (stubs for Phase 3).

- **`include/app_services.h`**  
  Declarations for `services::etm` (all of the above).

### Phase 3 – Navigation & seek integration

- **`mergeDistanceKhz_`**  
  Set in `syncContext(state)` from current band profile; used by `addSeekResult` for dedupe.

- **`addSeekResult(frequencyKhz, rssi, snr)`**  
  Dedupes with `mergeDistanceKhz_`; on match updates RSSI/SNR/lastSeenMs, does not lower scanPass. Otherwise `addStationToMemory(..., kScanPassSeek)`. Eviction in `addStationToMemory`: pass 0 first, then 1, never 2.

- **Navigation**  
  `navigateNext` / `navigatePrev`: cursor wrap, `tuneToCursor(state)`, publish. `navigateNearest(state)`: binary search in sorted `memory_.stations`, set cursor, tune, publish. `tuneToCursor(state)`: apply frequency from `memory_.stations[cursor]`.

### Phase 2 – Scan engine

- **Segment building**  
  FM: one segment, `kEtmProfileFm`. MW: raster-aligned 9/10 kHz, `kEtmProfileMw9/10`. LW: one segment, `kEtmProfileLw`. SW broadcast: red-line segments from `kBroadcastRedLineSw[]`; fallback full band. All-band: `kBroadcastRedLineAll[]`, MW raster-aligned; profile per segment by frequency. Helpers: `profileForBand()`, `isBroadcastSwBand()`, `alignMwSegmentToRaster()`, `countPointsInSegment()`.

- **Coarse scan**  
  `advancePoint()` (segment-aware, includes maxKhz). `tickCoarse()`: tune → settle → read RSSI/SNR → threshold from `kEtmSensitivityTable[Medium]` → `addCandidate(..., kScanPassCoarse)`. On segment exhaustion: Fast → Finalize; Thorough → `buildFineWindows()` → FineScan (or Finalize if no windows).

- **Candidates**  
  `addCandidate()` with eviction (pass 0 then 1, never 2; then weakest RSSI).

- **Fine pass (Thorough)**  
  `buildFineWindows()`: per-segment clustering (2× coarseStep merge), `EtmFineWindow` with ±fineWindowKhz clamped to segment; cap at `kEtmMaxFineWindows`. `tickFine()`: step/settle/measure over each window; track best; `upgradeCandidateInWindow()` to set pass=2 and best freq/RSSI/SNR.

- **Finalize**  
  Merge candidates into `EtmMemory` with dedupe by `mergeDistanceKhz`, eviction by scanPass then RSSI, sort by frequency; tune to strongest; set cursor; clear candidates; Idle.

- **Cancel**  
  Restore frequency, discard candidates only, leave `EtmMemory` intact; Idle.

### Current defaults (now from GlobalSettings in Phase 4)

- Sensitivity and speed are read from `state.global.scanSensitivity` / `state.global.scanSpeed` (defaults Medium, Thorough).

### Phase 4 – Settings & state

- **app_state.h**  
  Included `etm_scan.h`. Added to `GlobalSettings`: `ScanSensitivity scanSensitivity`, `ScanSpeed scanSpeed` (defaults Medium, Thorough). Added to `SeekScanState`: `bool fineScanActive`, `uint8_t cursorScanPass`, `uint16_t totalPoints`. Initialized in `makeDefaultState()` and where seekScan is reset.

- **settings_service.cpp**  
  `sanitizeGlobal()`: clamp `scanSensitivity` (0..2), `scanSpeed` (0..1). `migrateLegacyGlobal()`: set `scanSensitivity = Medium`, `scanSpeed = Thorough`. `applyPayloadToState()`: set `seekScan.fineScanActive`, `cursorScanPass`, `totalPoints` to 0.

- **radio_service.cpp**  
  Seek thresholds now use `state.global.scanSensitivity`: `seekThresholdRssiFor(state)` and `seekThresholdSnrFor(state)` return `kEtmSensitivityTable[state.global.scanSensitivity].rssiMin/snrMin`. `isValidSeekResult()` updated to pass `state`.

- **etm_scan_service.cpp**  
  Removed `kDefaultSensitivity` / `kDefaultSpeed`. Coarse pass uses `state.global.scanSensitivity` for thresholds and `state.global.scanSpeed` for Fast vs Thorough. `publishState()` sets `state.seekScan.totalPoints`, `fineScanActive` (true when phase is FineScan), `cursorScanPass` from current station.

- **seek_scan_service.cpp**  
  When publishing or clearing state, sets `fineScanActive = false`, `cursorScanPass = 0`, `totalPoints = 0` so old scan path doesn’t leave stale ETM fields.

- **Note:** Adding two fields to `GlobalSettings` increases persisted payload size. Settings files saved by firmware built before Phase 4 may fail to load (size mismatch) until the user saves again; legacy V2/V1 migration still applies defaults for the new fields.

### Phase 5 – Integration

- **main.cpp**  
  On setOperation(Scan): call `services::etm::syncContext(g_state)` and `services::etm::navigateNearest(g_state)`. Long-press in Scan mode: `services::etm::requestScan(g_state)` (no direction); if false e.g. SSB, scan not started. Rotation in Scan: `etm::navigateNext` / `etm::navigatePrev` instead of seekscan::navigateFound. All busy/cancel checks use `etm::busy() || seekscan::busy()` and cancel the active one. Loop: `etm::syncContext` + `seekscan::syncContext`; tick: if `etm::busy()` then `etm::tick(g_state)` else if `seekscan::busy()` then `seekscan::tick(g_state)`; after seekscan tick, if seek just completed (wasSeeking && !busy() && foundCount > 0) call `etm::syncContext` and `etm::addSeekResult(freq, rssi, snr)`. scheduleTunePersist when either engine finishes. delay uses both busy().

- **Seek broker**  
  After a seek completes with a found station, main reads RSSI/SNR and calls `services::etm::addSeekResult(g_state.radio.frequencyKhz, rssi, snr)` so the station is added/updated in the ETM list.

- **Settings menu**  
  In `settings_model.h`: new items `ScanSens` and `ScanSpeed` (before About). Labels "Scan Sens" (Low/Medium/High) and "Scan Speed" (Fast/Thorough). valueCount, valueIndexForCurrent, applyValue, formatValue implemented. Settings layer shows them via existing kItemCount loop.

- **UI**  
  When `state.seekScan.fineScanActive`, operation label shows "SCAN FINE" instead of "SCAN". When scanning and `totalPoints > 0`, progress line shows `pointsVisited/totalPoints` (capped) below the operation label.

---

## Not yet done

- (None; Phase 6 complete.)

---

## Phase 6 – Done

**Goal:** Remove deprecated scan code from `seek_scan_service.cpp`; keep seek-only behaviour. Station storage is now `EtmMemory` (ETM); main brokers `addSeekResult()` after seek.

### Current seek_scan_service layout (from review)

- **Public API (app_services.h):** `requestSeek(direction)`, `requestScan(direction)`, `requestCancel()`, `busy()`, `syncContext(state)`, `navigateFound(state, direction)`, `tick(state)`.
- **State:** `Operation` (None, SeekPending, ScanRunning); `g_direction`; `g_found[]`, `g_foundCount`, `g_foundCursor`; scan state (segments, raw hits, FM scan temp, settle/position vars).
- **Scan path (to remove):** `requestScan()` sets `g_operation = ScanRunning`; `tick()` runs either FM seek-scan (`tickFmSeekScan`) or AM step-scan (segment loop with settle/measure). Uses `buildScanSegments`, `beginScan`, `advanceScanPoint`, `finalizeScan`, `mergeRawHits`, `addOrUpdateFound` (into `g_found`), cancel restores frequency and clears. All of this is superseded by ETM.
- **Seek path (keep):** `requestSeek(direction)` sets `Operation::SeekPending`; `tick()` when `SeekPending` does one-shot `radio::seek(state, direction)`, then on success calls `addOrUpdateFound(..., kFoundSourceSeek)` and `setCursorToFrequency`, then `clearOperationState`. Main already calls `etm::addSeekResult(freq, rssi, snr)` after seek completes; station list for display is ETM.

### Intended Phase 6 changes

1. **requestScan(direction)**  
   Make a no-op (or leave a stub). Main only calls `etm::requestScan(state)`; nothing should start the old scan.

2. **Remove all scan-only state and logic**  
   Remove: `Operation::ScanRunning` (or treat as unused); `g_segments`, `g_segmentCount`, `g_segmentIndex`; `g_rawHits`, `g_rawHitCount`; `g_fmScanTemp*`, FM scan state; `g_scanAwaitingMeasure`, `g_scanCurrentKhz`, `g_scanRestoreKhz`, `g_scanBestKhz`, `g_scanBestRssi`, `g_scanVisited`, `g_scanSettleMs`; `buildScanSegments`, `beginScan`, `advanceScanPoint`, `finalizeScan`, `mergeRawHits`, `finalizeFmSeekScan`, `tickFmSeekScan`, `addOrUpdateFmScanTemp`, `fmScanWrappedToStart`, `resetFmScanState`; and all helpers used only by scan (e.g. `addSegment`, `isBroadcastSwBand`, `scanStepFor`, `alignMwSegmentToRaster`, `rawHitMergeDistanceKhzFor`, `foundDedupeDistanceKhzFor`, threshold/settle for scan, etc.). Keep only what seek needs.

3. **Seek completion and “found” list**  
   Plan: “Station storage: `g_found[]` is replaced by `EtmMemory.stations[]`”. So either:
   - **Option A:** Remove `g_found` entirely. On seek completion, only set `state.radio` to the found frequency and update `state.seekScan` (active, seeking, bestFrequencyKhz, bestRssi, pointsVisited); set `foundCount=0`, `foundIndex=-1`. Main then calls `etm::addSeekResult(...)` and should call **`etm::publishState(g_state)`** so `state.seekScan.foundCount` / `foundIndex` reflect ETM memory.
   - **Option B:** Keep a minimal `g_found` (e.g. one slot) only so seek completion can publish one “found” for UI; main still calls `etm::addSeekResult` so ETM list is authoritative. More redundant.

   Recommendation: **Option A** – remove `g_found`; after seek completion publish `foundCount=0`, `foundIndex=-1`; in **main**, after `etm::addSeekResult(...)` call **`etm::publishState(g_state)`** so the next UI frame shows the updated ETM list.

4. **tick()**  
   Only handle `SeekPending`. Remove any branch that sets or runs `ScanRunning` (and any FM/AM scan tick logic). After seek, call a slim `clearOperationState` that does not depend on `g_found`.

5. **requestCancel()**  
   Only need to clear `SeekPending` (no scan to cancel).

6. **syncContext(state)**  
   Currently `updateContext()` resets `g_found` when band/mode changes. Once `g_found` is removed, sync can just update the context key (or become a no-op) so we don’t hold stale state.

7. **navigateFound(state, direction)**  
   Main no longer calls it (uses `etm::navigateNext` / `etm::navigatePrev`). Leave as a compatibility wrapper that calls `etm::navigateNext` or `etm::navigatePrev` so any stray caller still works, or remove from `app_services.h` and implement as a no-op.

8. **clearOperationState / publishFoundState**  
   Slim down so they only touch `state.seekScan` and no longer reference `g_foundCount` / `g_foundCursor`. `publishFoundState` can set `foundCount=0`, `foundIndex=-1` plus the other ETM-related fields (fineScanActive, cursorScanPass, totalPoints) to 0.

### Main.cpp follow-up

- After `etm::addSeekResult(g_state.radio.frequencyKhz, rssi, snr)` in the seek-complete block, add **`services::etm::publishState(g_state)`** so `state.seekScan.foundCount` and `foundIndex` are updated from ETM memory for the next render. **Done.**

### Phase 6 changes made

- **`src/services/seek_scan_service.cpp`** – Rewritten to seek-only: removed all scan state and logic (`Operation::ScanRunning`, `g_found`, `g_segments`, `g_rawHits`, `g_fmScanTemp*`, all scan helpers and FM/AM scan tick paths). Kept: `requestSeek`, `requestCancel`, `busy`, `syncContext`, `tick` (SeekPending only), `navigateFound` (wrapper to `etm::navigateNext`/`navigatePrev`). `requestScan(direction)` is a no-op. On seek completion, state is published with `foundCount = 1` if found, `0` otherwise; `foundIndex = 0` or `-1`; no local station list.
- **`src/main.cpp`** – Added `services::etm::publishState(g_state)` immediately after `services::etm::addSeekResult(...)` when seek completes, so the next UI frame shows ETM list (foundCount/foundIndex from ETM).

---

## Files touched

| File | Change |
|------|--------|
| `include/etm_scan.h` | New – all ETM types and constants |
| `src/services/etm_scan_service.cpp` | New – full Phase 1 + Phase 2 implementation |
| `include/app_services.h` | Added `services::etm` namespace declarations |
| `include/app_state.h` | Include etm_scan.h; SeekScanState +3 fields; GlobalSettings +2 fields; defaults in makeDefaultState |
| `src/services/settings_service.cpp` | sanitize/migrate/apply for scanSensitivity, scanSpeed; seekScan new fields |
| `src/services/radio_service.cpp` | Seek thresholds from kEtmSensitivityTable(state.global.scanSensitivity) |
| `src/services/seek_scan_service.cpp` | Phase 4: publish/clear set fineScanActive, cursorScanPass, totalPoints. Phase 6: rewritten seek-only; scan code removed. |
| `src/main.cpp` | ETM scan/seek wiring, syncContext, navigateNearest on entering Scan, requestScan on long-press, etm::tick vs seekscan::tick, seek-complete addSeekResult broker + etm::publishState (Phase 6), all busy/cancel use both services |
| `include/settings_model.h` | Item::ScanSens, Item::ScanSpeed; valueCount/format/apply |
| `src/services/ui_service.cpp` | "SCAN FINE" when fineScanActive; progress N/M when scanning and totalPoints > 0 |

---

## ETM SCAN – First pass test issues (2026-02-22)

**Source:** User testing. Notes for investigation and fix.

### Reported issues (FM)

1. **FM doesn’t find anything except one station** – Scan runs but almost no stations are detected.
2. **Scan moves very fast** – Doesn’t seem to stay on each frequency long enough to see if there are stations.
3. **Something wrong with the step** – Step or timing is suspected.
4. **Full FM scan completes in ~2 seconds** – Plan expected ~11 s coarse + ~3 s fine (~14 s total) for FM.

### Investigation summary

- **FM band units:** In `bandplan.h`, FM limits come from `fmRegionProfile(region)`: `fmMinKhz`/`fmMaxKhz` are **8750** and **10800** (World). The rest of the app treats FM frequency as “10 kHz” units for display: `frequencyKhz/100` and `frequencyKhz%100` → “90.40” MHz. So 8750 = 87.50 MHz, 10800 = 108.0 MHz. Band range in those units is 8750–10800.
- **ETM FM profile** (`etm_scan.h`): `kEtmProfileFm` uses `coarseStepKhz = 100` (and fine 50, fineWindow 150, settle 70 ms (was 55; increased after testing)). The segment is built from `bandMinKhz`/`bandMaxKhz` (8750–10800) and `segments_[].coarseStepKhz = 100`.
- **What actually runs:** Coarse scan advances by **100** in the same units as the band (10 kHz). So we step 8750 → 8850 → 8950 → … → 10800. That is a **1 MHz** step in real terms (100 × 10 kHz), not 100 kHz. Number of points: (10800 − 8750) / 100 + 1 ≈ **21 points**. At 55 ms settle per point, that’s ~1.2 s for coarse only — consistent with “full scan in 2 seconds” and with almost no stations found (we only look at 21 frequencies across 87.5–108 MHz).
- **Root cause:** FM band is in 10 kHz units; ETM profile was written as if band were in kHz. So `coarseStepKhz = 100` becomes a 1 MHz step instead of 100 kHz. We need FM coarse step to be **10** in 10 kHz units (= 100 kHz) so we get ~205 points and ~11 s coarse (and proper station density).
- **Settle time:** 55 ms per point is applied correctly (`nextActionMs_ = now + settleMs_`; main loop `delay(1)` when busy). So timing is not the cause of the 2 s completion; the low point count is. If we later see “no time to see stations” on a single frequency, consider increasing FM settle (e.g. 80–100 ms) after fixing the step.

### Recommended fix (FM)

- **Option A (preferred):** Use a step in 10 kHz units for FM in the segment/profile. For FM only, treat “step” as 10 kHz units: e.g. in `etm_scan_service` when building the FM segment, use `coarseStepKhz = 10` (100 kHz), `fineStepKhz = 5` (50 kHz), `fineWindowKhz = 15` (150 kHz), `mergeDistanceKhz = 9` (90 kHz). Then FM coarse scan has ~205 points and takes ~11 s.
- **Option B:** Keep band in kHz (87500–108000) for ETM only by scaling FM limits when building segments (e.g. multiply by 10 for FM), and keep profile as 100/50/150. That would require a single place that knows “FM uses 10× band limits” when building segments.

### Other bands (investigation)

- **MW, LW, SW, All-band:** Band limits come from `band.minKhz`/`band.maxKhz` or `SubBandDef` (e.g. `kBroadcastRedLineAll`, `kBroadcastRedLineSw`), all in **kHz** (e.g. MW 300–1800, LW 150–300, SW 2300–26400). ETM profiles for these use kHz steps (9/10 for MW, 5 for SW, 9 for LW) and are correct. **No change needed.**

### Fix applied (2026-02-22)

- **`include/etm_scan.h`:** `kEtmProfileFm` updated so FM uses steps in 10 kHz units (matching bandplan FM): `coarseStepKhz=10` (100 kHz), coarse-only (no fine), `settleMs=70`, `mergeDistanceKhz=9` (90 kHz). FM coarse scan has ~205 points (~14 s at 70 ms/point).

### Action items

- [x] Fix FM coarse (and fine) step so scan uses 100 kHz spacing (10 in 10 kHz units) and merge/window in the same units.
- [ ] Re-test: FM scan should take ~11 s coarse, find many more stations.
- [ ] Optionally: add debug or UI hint (e.g. totalPoints) to confirm point count (~205 for FM) after fix.

---

## ETM SCAN – MW raster / wrong frequency (first pass)

**Source:** User testing. MW finds stations but reported frequency is off the 9 kHz channel raster (e.g. BBC on 909 kHz shown as 910 kHz).

### Reported issue

- **MW:** Stations are found but frequencies are wrong — not on the correct 9 kHz step. Example: BBC at 909 kHz appears as 910 kHz.

### Investigation summary

- **Coarse pass:** MW segment is raster-aligned via `alignMwSegmentToRaster()` (origin 531 kHz, step 9 kHz for 9 kHz region). Coarse scan uses `coarseStepKhz = 9`, so we only tune 531, 540, …, 909, 918, … Coarse candidates are therefore on the 9 kHz grid; e.g. 909 is visited and can be added as a candidate.
- **Fine pass (Thorough mode):** For each coarse cluster we build a fine window ±14 kHz (e.g. 895–923 kHz for a 909 kHz coarse hit). We then step through the window at **1 kHz** (`fineStepKhz = 1` in `kEtmProfileMw9`). We store the frequency where RSSI is highest as `fineBestKhz_` (e.g. 910 if the receiver’s peak is there) and call `upgradeCandidateInWindow(..., fineBestKhz_, ...)`, which **overwrites** the candidate’s `frequencyKhz` with that raw value (`etm_scan_service.cpp` ~494, 530).
- **Root cause:** The fine pass is intended to refine the peak within the window, but for MW (and LW) the **channel raster is 9 or 10 kHz**. The stored frequency must be snapped to that raster. Currently we store the 1 kHz-stepped “best” frequency (e.g. 910) instead of snapping back to the nearest channel (909). So the wrong-frequency issue comes from the **fine pass**, not from coarse alignment.
- **Where to fix:** Either (1) when upgrading the candidate in `upgradeCandidateInWindow`, snap `bestKhz` to the segment’s channel raster (for MW/LW use `snapToGrid(bestKhz, mwChannelOriginKhzForRegion(region), stepKhz, 0)` or “nearest” direction) before assigning to `candidates_[i].frequencyKhz`, or (2) in `tickFinalize` when merging candidates into memory, snap any MW/LW segment’s `c.frequencyKhz` to the raster before storing. Option (1) keeps the candidate on-channel for the rest of the pipeline and is consistent with display.

### Is there any point to fine scan on LW/MW?

- **No.** On MW/LW the **channel raster is the correct frequency** (e.g. 909, 918 kHz). A “peak” at 910 kHz is usually receiver selectivity or noise, not a better tune. Fine scan adds time and pushes the stored frequency off-channel, so it’s unnecessary and harmful for LW/MW.

### Fix applied: skip fine pass for MW/LW

- **`include/etm_scan.h`:** Set `fineStepKhz = 0` (and `fineWindowKhz = 0`) for `kEtmProfileMw9`, `kEtmProfileMw10`, and `kEtmProfileLw`. `buildFineWindows()` already skips segments where `prof->fineStepKhz == 0`, so MW/LW now go coarse-only → finalize. Stored frequencies stay on the 9/10 kHz raster; no raster-snap logic needed.

### Action items

- [x] Skip fine pass for MW/LW (profile fineStepKhz=0).
- [ ] Re-test MW: 909 kHz (and other channels) should report on-channel (909, 918, etc.).

---

## ETM SCAN – SW band: wrong/mid frequencies, fine pass (first pass)

**Source:** User testing. SW finds stations but some at “in between” frequencies; wrong channel chosen (e.g. 7335 when channel is 7330 kHz); mid frequencies don’t sound better.

### Reported issues

- **SW:** Some frequencies are found not at 00 kHz or 05 kHz but in the middle; they don’t sound better. Wrong channel chosen (e.g. 7335 when the channel center is 7330 kHz). On SW everything is at 00 or 05 kHz, nothing in between.

### Investigation summary

- **SW raster:** Shortwave broadcast uses a **5 kHz channel raster** (e.g. 7325, 7330, 7335, 7340). The “correct” frequency is the channel, not an arbitrary point in between.
- **Coarse pass:** SW profile has `coarseStepKhz = 5`, so we only tune 7325, 7330, 7335, … Coarse candidates are already on the 5 kHz grid.
- **Fine pass (before fix):** We had `fineStepKhz = 1`, `fineWindowKhz = 8`. For each coarse hit we scanned ±8 kHz in 1 kHz steps and stored the frequency with best RSSI (e.g. 7332 or 7335). That (1) produces “in the middle” values (7331, 7332, …), (2) can pick the wrong channel (7335 when the real channel is 7330) if the receiver’s peak is slightly off, and (3) doesn’t improve audio (user: “they don’t sound better at all”).
- **Is there any point to fine on SW?** No. The channel raster is 5 kHz; refining to 1 kHz is wrong and unhelpful. A “snap to 0 or 5” or “compare the 5 before and 5 after” would only mean: choose between the two adjacent 5 kHz channels. That’s at most 2 extra measurements per coarse hit and would need custom logic (not the current 1 kHz sweep). Simpler and consistent with MW/LW: **no fine on SW** — coarse-only keeps all results on the 5 kHz raster.

### Fix applied: skip fine pass for SW

- **`include/etm_scan.h`:** Set `fineStepKhz = 0` and `fineWindowKhz = 0` for `kEtmProfileSw`. SW now goes coarse-only → finalize; stored frequencies stay on 5 kHz (xx25, xx30, xx35, …).

### Action items

- [x] Skip fine pass for SW (profile fineStepKhz=0).
- [ ] Re-test SW: channels should report on 5 kHz (e.g. 7330, 7335), not mid (7332, 7333).

### Same signal on 7330, 7335, 7340 — which one gets saved?

- **Current behaviour:** SW profile has `mergeDistanceKhz = 4`. In `tickFinalize` we merge candidates only if they are within `mergeKhz` of an existing station (best RSSI wins). So 7330 and 7335 are **5 kHz apart** → not merged (5 > 4). Same for 7335 and 7340. **All three get saved** as separate entries (7330, 7335, 7340). Order in the list follows the order candidates were added (coarse scan order = increasing frequency).
- **Design choice:** If we want one entry per “blob” when the same station is heard on several adjacent 5 kHz channels, we’d need `mergeDistanceKhz >= 5` for SW. That would merge 7330/7335 into one (the one with better RSSI) and 7335/7340 into one, but then 7330 and 7340 could both merge into the same slot if we’re not careful (first-come wins, then 7340 might merge into the 7330 slot if within 5? No — 7330 and 7340 are 10 apart, so they wouldn’t merge. So with merge 5: we’d merge 7330+7335 → one entry (best RSSI), and 7340 stays separate, or 7335+7340 merge and 7330 separate. So we’d get two entries. To get exactly one entry for 7330/7335/7340 we’d need merge distance >= 10, which risks merging two real stations that are 10 kHz apart. So the current choice (merge 4) keeps 5 kHz channels separate; the user may see the same station listed two or three times. We can document this and optionally consider merge 5 for SW so adjacent 5 kHz hits merge to one (pick best RSSI).
