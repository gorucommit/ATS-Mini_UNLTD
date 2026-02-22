# ETM Scan Engine Redesign Plan

## Overview

A complete redesign of the SCAN feature to unify FM and AM scan engines into a single, coherent state machine with user-configurable sensitivity and speed settings.

---

## Core Philosophy

The current code has two fundamentally different scan engines:
- **FM**: Uses hardware seek (blocking, unreliable for comprehensive scanning)
- **AM**: Uses manual step-scan (non-blocking, threshold-based)

They disagree on blocking vs non-blocking, threshold source, wrap detection, and result quality.

The redesign provides **one unified scan engine** that both modes run through, with mode-specific parameters injected at the edges.

---

## The Two User Settings

### Sensitivity (Settings Menu)

Maps directly to RSSI+SNR thresholds used during scanning and candidate validation.

| Label | RSSI | SNR | Use Case |
|-------|------|-----|----------|
| **Low** | 25 | 10 | City, strong stations only, clean short list |
| **Medium** | 12 | 5 | Default, most conditions |
| **High** | 5 | 2 | Rural, good antenna, weak/distant stations |

```cpp
enum class ScanSensitivity : uint8_t {
    Low = 0,
    Medium = 1,
    High = 2,
};

struct EtmSensitivity {
    uint8_t rssiMin;
    uint8_t snrMin;
};

constexpr EtmSensitivity kSensitivityTable[] = {
    {25, 10},  // Low
    {12,  5},  // Medium (default)
    { 5,  2},  // High
};
```

### Speed (Settings Menu)

| Label | Behaviour |
|-------|-----------|
| **Fast** | Coarse pass only, ~half the time |
| **Thorough** | Coarse + fine refinement pass |

```cpp
enum class ScanSpeed : uint8_t {
    Fast = 0,
    Thorough = 1,
};
```

---

## Data Structures

### Station Memory

```cpp
struct EtmStation {
    uint16_t frequencyKhz;
    uint8_t  rssi;
    uint8_t  snr;
    uint8_t  bandIndex;
    Modulation modulation;
    uint8_t  scanPass;     // 0=seek-found, 1=coarse, 2=fine-confirmed
    uint32_t lastSeenMs;
};

constexpr uint8_t kEtmMaxStations = 120;
constexpr uint8_t kEtmMaxCandidates = 128;
constexpr uint8_t kEtmMaxFineWindows = 64;

// Memory estimate: ~2,720 bytes total
// - EtmStation (12 bytes) × 120 = 1,440 bytes
// - EtmCandidate (6 bytes) × 128 = 768 bytes  
// - FineWindow (8 bytes) × 64 = 512 bytes
// Verify heap availability during testing. Reduce kEtmMaxCandidates to 96 if needed.

struct EtmMemory {
    EtmStation stations[kEtmMaxStations];
    uint8_t    count;
    int16_t    cursor;     // -1 = none selected
    uint8_t    bandIndex;  // memory is per band-context
    Modulation modulation;
};
```

### Band/Modulation Context Behavior

`EtmMemory` is scoped to a single `(bandIndex, modulation)` context:

- **On band or mode change**: Memory is **cleared immediately** (count=0, cursor=-1). The station list shows empty until a new scan is performed.
- **No separate per-band storage**: Only one context is stored at a time (RAM constraints).
- **UI behavior**: When switching bands, the found station count shows 0 and navigation is disabled until a scan completes.
- **Rationale**: Keeping stale cross-band results would cause navigation to tune to wrong frequencies. Clearing is the safest behavior.

```cpp
void syncContext(const AppState& state) {
    if (memory_.bandIndex != state.radio.bandIndex ||
        memory_.modulation != state.radio.modulation) {
        memory_.count = 0;
        memory_.cursor = -1;
        memory_.bandIndex = state.radio.bandIndex;
        memory_.modulation = state.radio.modulation;
    }
}
```

### Memory Estimate

Total new allocations: **~2,720 bytes**
- `EtmStation` (12 bytes) × 120 = 1,440 bytes
- `EtmCandidate` (6 bytes) × 128 = 768 bytes  
- `FineWindow` (8 bytes) × 64 = 512 bytes

ESP32 has ~320KB SRAM but much is used by WiFi/BT stacks and TFT buffers. **Verify heap availability during testing.** Reduce `kEtmMaxCandidates` to 96 if memory is tight.

### Scan Pass Constants

```cpp
constexpr uint8_t kScanPassSeek   = 0;  // found by seek, not scan-confirmed
constexpr uint8_t kScanPassCoarse = 1;  // coarse pass only
constexpr uint8_t kScanPassFine   = 2;  // fine-confirmed, highest confidence
```

**Eviction priority** when list full: `scanPass=0` first, then `scanPass=1`, never `scanPass=2`.

### Segments

```cpp
struct EtmSegment {
    uint16_t minKhz;
    uint16_t maxKhz;
    uint16_t coarseStepKhz;
    uint16_t fineStepKhz;     // 0 = no fine pass for this segment
};
```

### Band Profiles

```cpp
struct EtmBandProfile {
    uint16_t coarseStepKhz;
    uint16_t fineStepKhz;
    uint16_t fineWindowKhz;   // ±window around each coarse candidate
    uint16_t settleMs;
    uint16_t mergeDistanceKhz; // for deduplication
};

// All values in kHz. coarseStepKhz=100 means 100 kHz (0.1 MHz).
constexpr EtmBandProfile kProfileFm   = { 100, 50, 150, 55, 90 };  // See "FM Fine Window Rationale" below
constexpr EtmBandProfile kProfileMw9  = {   9,  1,  14, 90,  8 };  // 9kHz region
constexpr EtmBandProfile kProfileMw10 = {  10,  1,  15, 90,  9 };  // 10kHz region
constexpr EtmBandProfile kProfileSw   = {   5,  1,   8, 90,  4 };
constexpr EtmBandProfile kProfileLw   = {   9,  1,  14, 90,  8 };
```

### Segment Building Rules

Segments are built based on band type and region settings:

**FM Band**:
- Single segment from `bandMinKhzFor(band, fmRegion)` to `bandMaxKhzFor(band, fmRegion)`
- Uses `kProfileFm`

**MW Band**:
- Single segment, raster-aligned to regional spacing
- 9 kHz regions: origin 531 kHz, uses `kProfileMw9`
- 10 kHz regions: origin 530 kHz, uses `kProfileMw10`
- Segment bounds snapped to grid: `minKhz = ceil((bandMin - origin) / step) * step + origin`

**LW Band**:
- Single segment from bandplan limits
- Uses `kProfileLw`

**SW Broadcast Bands** (red-line segments from `bandplan.h`):
- **Only the broadcast portion is scanned** — uses `kBroadcastRedLineSw[]` intersection with current band
- Multiple segments possible if band spans multiple broadcast sub-bands
- Each segment uses `kProfileSw`
- Non-broadcast SW bands: full band scan with `kProfileSw`

**All-Band Mode**:
- **Only broadcast segments are scanned** — uses `kBroadcastRedLineAll[]`
- Does NOT scan the entire spectrum, only the defined broadcast red-line regions
- MW segments within All-band are raster-aligned to 9/10 kHz
- Each segment uses appropriate profile (FM/MW/SW) based on frequency range

### Fine Windows (for Thorough mode)

```cpp
struct FineWindow {
    uint16_t centerKhz;     // best coarse candidate in the cluster
    uint8_t  bestRssi;
    uint16_t scanMinKhz;    // centerKhz - fineWindowKhz (clamped to SEGMENT bounds)
    uint16_t scanMaxKhz;    // centerKhz + fineWindowKhz (clamped to SEGMENT bounds)
    uint8_t  segmentIndex;  // originating segment for bounds clamping
};

constexpr uint8_t kEtmMaxFineWindows = 64;
```

**Note**: Fine windows are clamped to their originating segment bounds, not overall band limits. This prevents windows from crossing segment boundaries in multi-segment scans (e.g., All-band).

### Working Candidates Array

During scanning, candidates accumulate in a working array separate from `EtmMemory`:

```cpp
struct EtmCandidate {
    uint16_t frequencyKhz;
    uint8_t  rssi;
    uint8_t  snr;
    uint8_t  scanPass;      // 1=coarse, 2=fine-confirmed
    uint8_t  segmentIndex;  // which segment this came from
};

constexpr uint8_t kEtmMaxCandidates = 128;
```

This separation enables the "preserve previous scan on cancel" behavior:
- Coarse/fine candidates accumulate in `candidates_[]`
- Only on `Finalize` are they merged into `EtmMemory`
- On `Cancel`, discard `candidates_[]` — `EtmMemory` is untouched

---

## State Machine

```cpp
enum class Phase : uint8_t {
    Idle,
    CoarseScan,
    FineScan,
    Finalize,
    Cancelling,
};
```

### Flow

```
Idle
  → on requestScan():
      if SSB mode: return false (not available)
      build segment queue
      transition to CoarseScan

CoarseScan
  each tick:
    if awaiting settle: check timer, read RSSI/SNR, evaluate
    else: tune to next coarse point, set settle timer
    if above threshold: addCandidate(freq, rssi, snr, pass=1)
    if band exhausted:
      if speed == Fast: transition to Finalize
      else: build fine-scan queue from candidate clusters
            transition to FineScan

FineScan
  each tick:
    same step/settle/measure loop
    but only over ±fineWindowKhz around each candidate cluster
    if new peak found in window: upgrade candidate (pass=2, update freq/rssi)
    if all windows exhausted: transition to Finalize

Finalize
  merge candidates into EtmMemory
  deduplicate (merge-distance based, best RSSI wins within distance)
  sort by frequency
  tune to strongest found station or restore original if nothing found
  transition to Idle

Cancelling
  restore original frequency
  discard working candidates array (current scan's partial results)
  EtmMemory is untouched (previous completed scan's station list preserved)
  transition to Idle
```

### Tick Implementation

```cpp
bool EtmScanner::tick(AppState& state) {
    if (phase_ == Phase::Idle) return false;

    const uint32_t now = millis();
    if (now < nextActionMs_) return true;  // still settling

    switch (phase_) {
        case Phase::CoarseScan:  return tickCoarse(state, now);
        case Phase::FineScan:    return tickFine(state, now);
        case Phase::Finalize:    return tickFinalize(state);
        case Phase::Cancelling:  return tickCancelling(state);
        default: return false;
    }
}
```

### Display Follows Scan

During scanning, **`state.radio.frequencyKhz` is updated on each tick** so the display shows the current scan position in real-time:

```cpp
bool tickCoarse(AppState& state, uint32_t now) {
    if (!awaitingMeasure_) {
        // Tune to current scan point — display will show this frequency
        state.radio.frequencyKhz = currentKhz_;
        state.radio.bfoHz = 0;
        services::radio::apply(state);
        
        awaitingMeasure_ = true;
        nextActionMs_ = now + settleMs_;
        return true;
    }
    // ... measure and advance
}
```

The UI reads `state.radio.frequencyKhz` to render the frequency display, so the numbers follow the scan as it progresses.

---

## Scan Termination

In the unified step-scan engine, there is **no wrap detection** needed:
- Scan goes linearly through segments from `minKhz` to `maxKhz` **inclusive**
- `advancePoint()` returns `false` when all segments are exhausted
- No circular wrap behavior exists — this is simpler than the hardware seek model

```cpp
// IMPORTANT: Check BEFORE incrementing to include the last point (maxKhz)
bool advancePoint() {
    if (currentKhz_ >= segments_[segmentIndex_].maxKhz) {
        // Current segment exhausted, move to next
        ++segmentIndex_;
        if (segmentIndex_ >= segmentCount_) {
            return false;  // All segments exhausted
        }
        currentKhz_ = segments_[segmentIndex_].minKhz;
    } else {
        currentKhz_ += segments_[segmentIndex_].coarseStepKhz;
        // Clamp to maxKhz to ensure we visit the last point
        if (currentKhz_ > segments_[segmentIndex_].maxKhz) {
            currentKhz_ = segments_[segmentIndex_].maxKhz;
        }
    }
    return true;
}
```

**Note**: The segment's last point (`maxKhz`) is always visited. If the step doesn't land exactly on `maxKhz`, we clamp to it.

---

## Cluster Detection Algorithm

Clustering is performed **per-segment** to prevent fine windows from crossing segment boundaries.

After coarse pass, candidates within each segment are sorted by frequency. Clustering is a single linear pass per segment:

```cpp
// For each segment:
//   1. Extract candidates belonging to this segment
//   2. Sort by frequency
//   3. Two candidates merge into one window if within 2× coarseStep of each other
//   4. The stronger one's frequency becomes the window center
//   5. Window extent is ±fineWindowKhz from center, clamped to SEGMENT bounds

scanMinKhz = max(centerKhz - fineWindowKhz, segment.minKhz);
scanMaxKhz = min(centerKhz + fineWindowKhz, segment.maxKhz);
```

The merge distance of 2× coarseStep collapses adjacent hits from a single wide station while keeping genuinely separate stations as separate windows.

If total fine windows exceed `kEtmMaxFineWindows`, the weakest clusters (by best RSSI) are dropped.

### FM Fine Window Rationale

The ±150kHz fine window for FM may seem aggressive given that FM stations are typically 100-200kHz apart. However:

1. **Clustering handles overlap**: Two coarse candidates within 2× coarseStep (200kHz) merge into ONE window. Adjacent stations become a single window, and the fine pass finds the strongest peak.

2. **Peak accuracy**: The window needs to extend past the coarse grid point to find the true peak when it falls between grid points.

3. **Strong station bleed**: Strong stations can register on adjacent 100kHz grid points; the wider window captures the true center.

If testing shows excessive scan time or poor results, consider reducing to ±100kHz. The `fineWindowKhz` value could also be made region-tunable in future iterations.

---

## Navigation

Three operations on the sorted array:

```cpp
void navigateNext(AppState& state);    // cursor++ with wrap
void navigatePrev(AppState& state);    // cursor-- with wrap
void navigateNearest(AppState& state); // binary search to current freq
```

`navigateNearest` is called automatically when the user manually tunes away from a list station and then re-enters ETM navigation.

### Navigation Contract with main.cpp

**On entering Scan mode**: `main.cpp` calls `navigateNearest()` to snap to the closest found station:

```cpp
// In main.cpp, when operation mode changes to Scan:
void onEnterScanMode(AppState& state) {
    services::etm::navigateNearest(state);  // Snap to nearest found station
}
```

**On rotation in Scan mode**: Replace the current `navigateFound()` call:

```cpp
// In main.cpp, replace:
//   services::seekscan::navigateFound(state, direction);
// With:
if (direction > 0) {
    services::etm::navigateNext(state);
} else {
    services::etm::navigatePrev(state);
}
```

Alternatively, `services::etm::navigateFound(state, direction)` can be provided as a compatibility wrapper that dispatches to `navigateNext`/`navigatePrev`.

---

## SSB Mode Handling

SSB scan is explicitly rejected:

```cpp
bool EtmScanner::requestScan(const AppState& state) {
    if (app::isSsb(state.radio.modulation)) {
        return false;  // Caller should show "Not available in SSB" in UI
    }
    // ... normal setup
}
```

**Note**: No `direction` parameter — the unified engine always scans full segments from `minKhz` to `maxKhz`. Direction was only meaningful for the old hardware seek-based scan that started from the current frequency and hunted in one direction.

---

## Seek Integration

Seek remains separate but integrates with the station list.

### Transition from seek_scan_service.cpp

The ETM scanner **completely replaces the scan portion** of `seek_scan_service.cpp`:

- **Scan**: Handled entirely by `etm_scan_service.cpp`
- **Seek**: Remains in `seek_scan_service.cpp` but stores results via `services::etm::addSeekResult()`
- **Station storage**: `g_found[]` is replaced by `EtmMemory.stations[]`
- **After deprecation**: `seek_scan_service.cpp` only handles seek operations (or is renamed to `seek_service.cpp`)

### Seek Uses Sensitivity Settings

For consistency, **seek also respects the `scanSensitivity` setting**. The `radio_service.cpp` seek validation functions are updated to use `kSensitivityTable[]` instead of hardcoded thresholds:

```cpp
// In radio_service.cpp:
uint8_t seekThresholdRssiFor(ScanSensitivity sensitivity) {
    return kSensitivityTable[static_cast<uint8_t>(sensitivity)].rssiMin;
}

uint8_t seekThresholdSnrFor(ScanSensitivity sensitivity) {
    return kSensitivityTable[static_cast<uint8_t>(sensitivity)].snrMin;
}
```

This ensures the user sees consistent behavior: if they set Low sensitivity for a clean scan list, seek also only stops on strong stations.

### Cross-Service Coupling

`main.cpp` brokers the call — no direct coupling between `seek_scan_service` and `etm_scan_service`:

```cpp
// In main.cpp, after seek completes successfully:
if (found) {
    services::etm::addSeekResult(state.radio.frequencyKhz, rssi, snr);
}
```

`etm_scan_service.cpp` exposes `addSeekResult()` via `app_services.h`:

```cpp
namespace services::etm {
    void addSeekResult(uint16_t frequencyKhz, uint8_t rssi, uint8_t snr);
}
```

### Seek Result Deduplication

When adding a seek result, **dedupe against existing entries** using `mergeDistanceKhz`:

```cpp
void addSeekResult(uint16_t frequencyKhz, uint8_t rssi, uint8_t snr) {
    const uint16_t mergeDistance = profileFor(memory_.modulation).mergeDistanceKhz;
    
    // Check for existing station within merge distance
    for (uint8_t i = 0; i < memory_.count; ++i) {
        if (absDelta(memory_.stations[i].frequencyKhz, frequencyKhz) <= mergeDistance) {
            // Update existing entry: refresh RSSI/SNR, keep higher scanPass
            memory_.stations[i].rssi = rssi;
            memory_.stations[i].snr = snr;
            memory_.stations[i].lastSeenMs = millis();
            // Do NOT downgrade scanPass (scan-confirmed > seek-found)
            return;
        }
    }
    
    // No match — add as new entry with scanPass=0
    addStation(frequencyKhz, rssi, snr, kScanPassSeek);
}
```

**Behavior**:
- If seek lands on an already-scanned frequency, **update** that entry (refresh RSSI) but keep its `scanPass` (don't downgrade scan-confirmed to seek-found)
- If seek finds a new frequency, **append** with `scanPass=0`
- Seek results are visually distinguished and first to be evicted when full

---

## UI State Integration

`EtmMemory` is internal to the scanner. The scanner publishes to `SeekScanState` each tick:

```cpp
struct SeekScanState {
    // Existing fields — unchanged
    bool active;
    bool seeking;
    bool scanning;
    int8_t direction;      // Only used for seek operations, not scan
    uint16_t bestFrequencyKhz;
    uint8_t bestRssi;
    uint16_t pointsVisited;
    uint8_t foundCount;
    int16_t foundIndex;

    // New fields for ETM
    bool fineScanActive;        // true during second pass — UI can show "FINE" indicator
    uint8_t cursorScanPass;     // scanPass of currently selected station (0/1/2) for visual distinction
    uint16_t totalPoints;       // denominator for progress bar (coarse pass only)
};
```

### Progress Calculation

`totalPoints` is calculated at scan start using the same inclusive logic as `advancePoint()`:

```cpp
uint16_t countPointsInSegment(const EtmSegment& seg) {
    // Same logic as advancePoint(): start at minKhz, step until >= maxKhz, then visit maxKhz
    uint16_t count = 1;  // Always visit minKhz
    uint16_t pos = seg.minKhz;
    while (pos < seg.maxKhz) {
        pos += seg.coarseStepKhz;
        if (pos > seg.maxKhz) pos = seg.maxKhz;  // Clamp to include last point
        ++count;
    }
    return count;
}

totalPoints = 0;
for (each segment) {
    totalPoints += countPointsInSegment(segment);
}
```

**Note**: `totalPoints` covers the coarse pass only. During the fine pass, `fineScanActive=true` and the UI shows a separate "FINE" indicator. The UI should cap progress at 100% if `pointsVisited` exceeds `totalPoints`.

---

## GlobalSettings Additions

```cpp
struct GlobalSettings {
    // ... existing fields ...
    ScanSensitivity scanSensitivity;  // default: Medium
    ScanSpeed scanSpeed;              // default: Thorough
};
```

### Settings Serialization

`settings_service.cpp` must be updated to serialize/deserialize the new fields:

```cpp
// In save:
writeU8(static_cast<uint8_t>(state.global.scanSensitivity));
writeU8(static_cast<uint8_t>(state.global.scanSpeed));

// In load (with backwards compatibility):
if (version >= kVersionWithScanSettings) {
    state.global.scanSensitivity = static_cast<ScanSensitivity>(readU8());
    state.global.scanSpeed = static_cast<ScanSpeed>(readU8());
} else {
    // Defaults for older settings files
    state.global.scanSensitivity = ScanSensitivity::Medium;
    state.global.scanSpeed = ScanSpeed::Thorough;
}
```

The settings file format version should be incremented to handle this gracefully.

---

## Estimated Scan Times

### Thorough Mode

| Band | Coarse | Fine | Total |
|------|--------|------|-------|
| FM (87.5-108 MHz) | ~11s (205 pts × 55ms) | ~3s (clusters) | ~14s |
| MW (530-1710 kHz) | ~11s (131 pts × 90ms) | ~5s | ~16s |
| SW 49m (5.9-6.2 MHz) | ~6s (60 pts × 90ms) | ~2s | ~8s |

### Fast Mode

Approximately half the Thorough time (coarse pass only).

---

## What Gets Removed

- `kFoundSourceScan/kFoundSourceSeek` source mask system
- `g_fmScanTemp[]` intermediate buffer
- `g_rawHits[255]` raw hit array
- FM/AM scan path fork in `tick()`
- Hardware seek-based FM scan entirely

---

## Implementation Steps

### Phase 1: Core Structures
1. Create `include/etm_scan.h` with EtmStation, EtmMemory, EtmSegment, EtmCandidate, EtmBandProfile, EtmSensitivity, FineWindow, Phase enum, kSensitivityTable, kEtmMaxFineWindows, kEtmMaxCandidates
2. Create `src/services/etm_scan_service.cpp` with EtmScanner class skeleton and namespace

### Phase 2: Scan Engine
3. Implement `EtmScanner::requestScan()` with SSB rejection (return false for SSB modes)
4. Port `buildScanSegments()` logic - assign coarse/fine steps per segment type (FM/MW/SW/LW)
5. Implement `advancePoint()` - segment-aware position advancement, returns false when segments exhausted (no wrap detection needed)
6. Implement `tickCoarse()` - step/settle/measure loop, candidates accumulate in working array with segmentIndex
7. Implement per-segment cluster detection - frequency-proximity clustering with 2× coarseStep merge distance
8. Implement FineWindow building with segment-clamped bounds (not overall band limits)
9. Implement `tickFine()` - sweep fine windows, upgrade candidates to scanPass=2
10. Implement `tickFinalize()` - merge working candidates into EtmMemory, dedupe by scanPass priority, sort, tune to strongest
11. Implement `Phase::Cancelling` - discard working candidates, preserve EtmMemory, restore frequency

### Phase 3: Navigation & Seek Integration
12. Implement navigation (`navigateNext`, `navigatePrev`, `navigateNearest` with binary search)
13. Implement `addSeekResult()` for seek integration via main.cpp broker, scanPass=0
14. Implement eviction logic - priority order: scanPass=0 first, then =1, never =2

### Phase 4: Settings & State
15. Add `ScanSensitivity` enum (Low=0/Medium=1/High=2) and `ScanSpeed` enum (Fast/Thorough) to `app_state.h`
16. Add `scanSensitivity` and `scanSpeed` fields to `GlobalSettings` in `app_state.h`
17. Add new `SeekScanState` fields (fineScanActive, cursorScanPass, totalPoints) - totalPoints = coarse only
18. Update `settings_service.cpp` to serialize/deserialize new fields with version check and defaults
19. Update `radio_service.cpp` seek validation to use `scanSensitivity` thresholds from `kSensitivityTable`
20. Implement `publishState()` including cursorScanPass from current station
21. Update `app_services.h` with etm namespace declarations including `addSeekResult()`

### Phase 5: Integration
22. Integrate EtmScanner into `main.cpp` - wire `requestScan()`, `tick()`, handle SSB rejection UI feedback
23. Broker `addSeekResult()` call from main.cpp after successful seek
24. Add Sensitivity and Speed settings to Settings menu UI (alongside other global radio settings)
25. Update UI to show FINE indicator and optionally distinguish scanPass visually via cursorScanPass

### Phase 6: Testing & Cleanup
26. Test FM, MW, SW, All-band scanning with Fast and Thorough modes
27. Test cancel behavior - verify EtmMemory preserved, working candidates discarded
28. Test seek respects sensitivity settings
29. Remove deprecated scan code from `seek_scan_service.cpp` after validation

---

## Files to Create/Modify

### New Files
- `include/etm_scan.h` - All ETM structs, enums, constants
- `src/services/etm_scan_service.cpp` - EtmScanner implementation

### Modified Files
- `include/app_state.h` - Add ScanSensitivity, ScanSpeed enums; update GlobalSettings and SeekScanState (add cursorScanPass, totalPoints, fineScanActive)
- `include/app_services.h` - Add etm namespace declarations including `addSeekResult()`
- `src/main.cpp` - Wire ETM scanner, handle SSB rejection
- `src/services/settings_service.cpp` - Serialize/deserialize new settings fields with version handling
- `src/services/radio_service.cpp` - Update seek threshold functions to use scanSensitivity
- `src/services/seek_scan_service.cpp` - Eventually remove deprecated scan code
- UI service files - Add settings menu items, FINE indicator
