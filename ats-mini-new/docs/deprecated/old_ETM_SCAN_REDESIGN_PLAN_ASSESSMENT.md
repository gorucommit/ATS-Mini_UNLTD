# ETM Scan Redesign Plan — Assessment

Assessment of `ETM_SCAN_REDESIGN_PLAN.md` for correctness, consistency with the codebase, gaps, and risks. **No implementation** — review only.

---

## 1. Strengths of the Plan

- **Unified engine:** One step-scan path for FM and AM/SW removes the current FM seek-based blocking and the split logic; aligns with the root-cause analysis (band-edge seek, blocking).
- **Explicit sensitivity/speed:** User-facing settings and a single threshold table are clear and testable.
- **Preserve-on-cancel:** Working candidates vs. `EtmMemory` separation is well specified; cancel keeps the previous list.
- **Segment-clamped fine windows:** Prevents fine pass from crossing segment boundaries (important for All-band and SW red-lines).
- **Seek integration via main.cpp:** Broker pattern avoids tight coupling between seek and ETM.
- **SSB rejection:** Matches current behavior; no scan in LSB/USB.
- **Implementation phases:** Ordered and dependency-aware (structures → engine → navigation → settings → integration → cleanup).

---

## 2. Issues and Gaps

### 2.1 **Critical: `advancePoint()` off-by-one — last channel of segment skipped**

Plan (lines 246–257):

```cpp
bool advancePoint() {
    currentKhz_ += segments_[segmentIndex_].coarseStepKhz;
    if (currentKhz_ > segments_[segmentIndex_].maxKhz) {
        ++segmentIndex_;
        ...
        currentKhz_ = segments_[segmentIndex_].minKhz;
    }
    return true;
}
```

We advance first, then check. Example: segment 8750–10800, step 100. After 10750 we set `currentKhz_ = 10850`; 10850 > 10800 so we move to the next segment. **10800 is never visited.**

**Fix:** Either (a) check before advancing: e.g. `if (currentKhz_ + coarseStepKhz > maxKhz)` then advance segment and set `currentKhz_ = segments_[segmentIndex_].minKhz`, else `currentKhz_ += coarseStepKhz`, or (b) when moving to next segment, first assign `currentKhz_ = segments_[segmentIndex_].maxKhz`, process that point, then on the next call advance segment. The plan should specify that the last point of each segment (maxKhz) is included.

---

### 2.2 **Critical: FM scan time estimate inconsistent with profile**

Plan: FM Thorough coarse ~14s (205 pts × 70ms settle). Implementation uses 70 ms (was 55 ms).

- `kProfileFm` has `coarseStepKhz = 100`.
- World FM: 8750–10800 → (10800 − 8750) / 100 + 1 = **21** coarse points.
- 21 × 55 ms ≈ **1.2 s** for coarse, not ~11 s.

So either:

- The **profile** is wrong and FM coarse should be 10 kHz (then 205 points and ~11 s), or
- The **table** is wrong and should say ~21 pts, ~1.2 s (and fine pass would dominate total time).

The plan should align the FM profile with the intended step (100 vs 10 kHz) and correct the time table accordingly.

---

### 2.3 **Segment building and band-plan alignment**

Plan says "Port `buildScanSegments()` logic" but does not spell out:

- **FM:** One segment; bounds from `bandMinKhzFor` / `bandMaxKhzFor` (region-dependent: World 8750–10800, US 8800–10800, Japan 7600–9000, Oirt 6580–7400). Profile is fixed; segment bounds must come from bandplan + `state.global.fmRegion`.
- **MW:** Current code uses **raster alignment** (`alignMwSegmentToRaster`) with 9/10 kHz and origin 530/531. Plan’s MW profile uses 9 or 10 kHz but does not mention snapping segment min/max to the channel raster. Without that, MW points can be off-channel.
- **All-band:** Current code uses `kBroadcastRedLineAll` (multiple sub-bands with their own min/max). Plan’s "build segment queue" must state that All uses these red-line segments (and MW segments are raster-aligned), not full band 150–30000.
- **Broadcast SW:** Current code uses `kBroadcastRedLineSw` and intersects with band min/max. Same idea should be explicit in the plan.

**Recommendation:** Add a short "Segment building rules" subsection: FM = one segment from bandplan+region; MW = one segment, raster-aligned via `alignMwSegmentToRaster` (or equivalent); broadcast SW = red-line segments; All = red-line segments; LW = one segment with profile step. Reference `bandplan.h` and current `buildScanSegments()` behavior.

---

### 2.4 **`totalPoints` formula and progress**

Plan (lines 354–358):

```cpp
totalPoints += (segment.maxKhz - segment.minKhz) / segment.coarseStepKhz + 1;
```

Integer division is correct for an inclusive count. But:

- If `advancePoint()` is fixed to include maxKhz, the actual number of points can differ when (maxKhz − minKhz) is not divisible by coarseStepKhz (e.g. segment 8750–10850, step 100 → 22 points; formula gives 21). So either define totalPoints as the **actual** number of points the state machine will visit (derived from the same logic as `advancePoint()`), or document that the progress bar is approximate. Prefer deriving totalPoints from the same advance logic so the bar never exceeds 100% for the coarse pass.
- Plan already notes that during fine pass `pointsVisited` can exceed `totalPoints` and UI should cap or show indeterminate — good.

---

### 2.5 **EtmMemory band context and band switching**

Plan: "memory is per band-context" and `EtmMemory` has `bandIndex` and `modulation`.

Unclear:

- When the user **changes band** (e.g. FM → MW), do we clear `EtmMemory`, keep it as "last scan was FM" and show an empty or stale list until they scan on MW, or maintain **separate** lists per band (more RAM)?
- If we keep a single list: after a band change, `foundCount` / `foundIndex` refer to the previous band; navigation in "Scan" mode would be wrong until a new scan. The plan should state: e.g. "On band change, clear or invalidate EtmMemory (or reset cursor) so the UI does not show the previous band’s list as current."

---

### 2.6 **Seek threshold coupling to GlobalSettings**

Plan: Seek uses `kSensitivityTable[static_cast<uint8_t>(sensitivity)]` and "radio_service.cpp seek validation functions are updated to use" it.

- Today seek thresholds are chosen by **modulation** (FM 5/2, AM 10/3) in `seekThresholdRssiFor(modulation)` etc. The plan switches to **sensitivity** from state.
- `radio_service` must receive `AppState&` (or at least `ScanSensitivity`) in the seek path. Currently `seekImpl()` has `state`; we only need to read `state.global.scanSensitivity` (or equivalent) and pass it into the threshold helpers. Plan should explicitly say: "Seek threshold helpers take `ScanSensitivity` (from `state.global.scanSensitivity`) instead of modulation."
- One-shot seek is used in **Seek** mode; scan is used in **Scan** mode. Using the same sensitivity for both is consistent but should be stated: "Seek and scan both use `global.scanSensitivity`."

---

### 2.7 **Settings persistence and backward compatibility**

Plan: Add fields to `GlobalSettings`, serialize/deserialize with "version >= kVersionWithScanSettings" and defaults for older files.

- Current code uses `PersistedPayloadV2` containing the full `app::GlobalSettings` and a blob with `schema` and `payloadSize`. There is no per-field version; layout is fixed by struct size.
- Adding `ScanSensitivity` and `ScanSpeed` to `GlobalSettings` changes its size. Old blobs were written with the smaller struct. Options: (1) bump schema and accept that old blobs load with default scan settings (new fields not present in old payload — risky if we just read more bytes), or (2) introduce a legacy payload struct (like `GlobalSettingsV2Legacy`) that omits the new fields and map it to the new `GlobalSettings` with defaults for scan settings.
- Plan should specify: either a **schema bump** with a safe load path (e.g. if schema < X, load into legacy struct and set `scanSensitivity = Medium`, `scanSpeed = Thorough`), or a **separate legacy global struct** and copy path. The phrase "if (version >= kVersionWithScanSettings)" suggests a schema or payload-version check; the actual mechanism (schema number vs. payload size) should be stated.

---

### 2.8 **`addSeekResult` and deduplication**

Plan: Seek results are added with `scanPass=0` and "appear in the navigation list immediately."

- If the user just scanned (e.g. 10 stations) and then does a one-shot seek that lands on an already-found frequency, we get a duplicate unless we **merge by distance**. Plan does not say whether `addSeekResult()` dedupes against existing entries (e.g. within `mergeDistanceKhz`). Recommend: "When adding a seek result, if a station within mergeDistanceKhz already exists, update that entry (e.g. upgrade to seek-found or refresh RSSI) instead of appending, to avoid duplicates."

---

### 2.9 **`navigateNearest` trigger**

Plan: "navigateNearest is called automatically when the user manually tunes away from a list station and then re-enters ETM navigation."

- "Re-enters ETM navigation" is ambiguous: switching to Scan mode? First encoder turn in Scan mode? Opening a menu?
- The plan should specify **where** `navigateNearest()` is invoked (e.g. in main.cpp when entering Scan mode, or on first rotation in Scan mode), so the cursor snaps to the station nearest the current frequency.

---

### 2.10 **Fine pass: matching peaks to candidates**

Plan: "if new peak found in window: upgrade candidate (pass=2, update freq/rssi)".

- We need a rule to map a fine-window peak to the **correct** coarse candidate (cluster). FineWindow has `centerKhz` and `segmentIndex`; the coarse candidate(s) that generated the window are those in that segment near `centerKhz`. So "upgrade candidate" means: among candidates in this window’s segment with frequency in [scanMinKhz, scanMaxKhz], pick the one that corresponds to this cluster (e.g. the one whose frequency is the window center or closest). Then set that candidate’s frequency/rssi to the fine peak and pass=2. Plan could add one sentence: "The candidate to upgrade is the coarse candidate that defined the window center (or the cluster representative)."

---

### 2.11 **RSSI/SNR value range**

Plan: Sensitivity Low = RSSI 25, SNR 10.

- SI4735 RSSI is often 0–127 or similar. SNR in a similar range. Values 25 and 10 are plausible, but if the chip uses different scales (e.g. dBµV), the numbers may need tuning. Plan could add: "RSSI/SNR thresholds are in chip units; adjust if SI4735 API uses different scale."

---

### 2.12 **Eviction when list is full**

Plan: "Eviction priority when list full: scanPass=0 first, then scanPass=1, never scanPass=2."

- Need to define **when** eviction runs: on `addSeekResult()`, on finalize when merging candidates into `EtmMemory`, or both. Plan says eviction in Phase 3; it should state explicitly: "Eviction is performed when adding a new station (seek or merged scan result) and `count >= kEtmMaxStations`: remove one entry with lowest priority (scanPass=0 preferred, then scanPass=1)."

---

### 2.13 **Operation mode and "Scan" vs "Seek"**

Plan removes scan from the current seek/scan service; ETM owns scan. The UI still has operation modes (Tune / Seek / Scan). In Scan mode, long-press starts ETM scan; rotation navigates found stations. The plan does not say whether the **operation mode** enum or labels change. Assume we keep "Scan" and "Seek" as today; Scan triggers ETM scan, Seek triggers one-shot seek and then `addSeekResult`. No change needed in the plan, but it’s worth a one-liner: "Operation mode Scan continues to start full band scan (ETM); Seek remains one-shot seek with result added to ETM list."

---

## 3. Minor / Optional

- **Sensitivity labels:** "Low" = strong only, "High" = weak; some users may expect "High sensitivity" = more sensitive. Plan is clear in the table; consider a UI tooltip to avoid confusion.
- **FM fine window 150 kHz:** Plan already notes it could be reduced to 100 kHz if needed; good.
- **Watchdog:** Long coarse passes (e.g. All-band) may hold the main loop in step/settle for many seconds. Plan could mention feeding the watchdog in the tick loop if the platform has one.
- **Files to modify:** "UI service files" is vague; listing the specific file(s) (e.g. `ui_service.cpp`, settings menu source) would help.

---

## 4. Summary Table

| Area | Severity | Issue |
|------|----------|--------|
| advancePoint() | Critical | Last point of segment (maxKhz) never visited; off-by-one. |
| FM time estimate | Critical | 205 pts vs 100 kHz step → 21 pts; table or profile inconsistent. |
| Segment building | High | MW raster alignment, FM region bounds, All/SW red-lines not specified. |
| totalPoints | High | Should match actual advance logic to avoid progress >100% or mismatch. |
| Band context | High | Behavior on band change (clear list vs keep vs per-band storage) undefined. |
| Seek thresholds | Medium | Need explicit "use state.global.scanSensitivity" in radio_service. |
| Settings migration | Medium | Backward compatibility mechanism (schema vs legacy struct) not specified. |
| addSeekResult dedupe | Medium | No dedupe vs existing list → duplicate entries. |
| navigateNearest trigger | Medium | Where/when to call not specified. |
| Fine upgrade target | Low | Which coarse candidate to upgrade in fine pass could be stated. |
| Eviction trigger | Low | When eviction runs (add vs finalize) could be explicit. |

---

## 5. Recommendation

The redesign is sound and addresses the current FM scan problems. Before implementation:

1. **Fix** the `advancePoint()` logic so the last channel of each segment is included, and align FM coarse step (100 vs 10 kHz) with the intended scan time.
2. **Specify** segment-building rules (FM region, MW raster, red-lines for SW/All) and how `totalPoints` is derived from the same logic.
3. **Define** band-change behavior for `EtmMemory` and where `navigateNearest()` is called.
4. **Clarify** settings migration (schema + legacy path or equivalent) and seek threshold source (`state.global.scanSensitivity`).
5. **Add** deduplication for `addSeekResult()` and explicit eviction trigger.

With those addressed, the plan is ready for phased implementation as written.
