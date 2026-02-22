# Band Scan Root Cause Analysis & Debug Plan

**Context**: ESP32 + SI4732/SI4735-based receiver (ATS-Mini style). FM-only fix was applied but band scan remains broken across all bands (FM + AM/SW/SSB).

## 1. Hypothesis Tree for Root Causes

### 1.1 State Machine / Scan Loop Logic
- **Primary Issue**: FM scan uses `tickFmSeekScan()` with blocking `seekForScan()` calls, while AM/SW uses step-and-measure loop
- **Operation State Confusion**: `requestScan()` sets `g_operation = ScanRunning` but FM path has separate initialization (`g_fmScanInitialized`)
- **Cancel/Abort Race**: Encoder ISR sets `g_abortRequested = true` on any movement, potentially aborting scan immediately
- **Double-exit**: `clearOperationState()` clears `g_fmScanInitialized`, potentially causing state inconsistency

### 1.2 Frequency Stepping and Band Limits
- **FM**: No explicit stepping - relies on hardware seek, but `isValidSeekResult()` rejects if `frequencyKhz == startFrequencyKhz`
- **AM/SW**: `advanceScanPoint()` may have off-by-one errors at segment boundaries
- **Unit Mismatch**: FM uses 100kHz steps but code uses 10kHz units - potential SI4735 API confusion
- **Band Edge Issues**: Starting scan at band min/max may cause immediate rejection

### 1.3 Timing / Dwell / Settle Delays
- **Blocking Seek**: `seekStationProgress()` blocks main loop for up to 45 seconds
- **No Settle After FM Seek**: `g_nextActionMs = nowMs + 1` provides only 1ms delay after seek
- **AM/SW Settle**: Uses `g_scanSettleMs` (60-80ms) but may be insufficient for weak signals

### 1.4 Signal-Quality Gating
- **FM**: `isValidSeekResult()` requires RSSI ≥ 5, SNR ≥ 2, and frequency ≠ start
- **AM/SW**: Uses same thresholds (RSSI ≥ 10, SNR ≥ 3) for raw hit acceptance
- **Timing Issues**: RSSI/SNR read immediately after seek may be unreliable

### 1.5 SI47xx Command Sequencing
- **Blocking API**: `seekStationProgress()` is blocking with no progress callback during seek
- **State Confusion**: `beginFmSeekScan()` sets frequency, then `seekForScan()` may snap again
- **Library Behavior**: Unknown if `seekStationProgress()` properly handles timeout/cancel

### 1.6 Concurrency Issues
- **Main Loop Order**: `handleButtonEvents()` → `handleRotation()` → `seekscan::tick()`
- **Encoder During Seek**: While `tick()` is blocked in seek, encoder deltas accumulate
- **Audio Blocking**: No separate audio task - blocking seek mutes UI responsiveness

### 1.7 Persistence / Data Structure Issues
- **Memory Corruption**: `g_found`/`g_fmScanTemp` arrays could be overwritten
- **Context Changes**: `updateContext()` could reset found stations mid-scan
- **Band/Region Mismatch**: Wrong band index or region could cause incorrect segment building

### 1.8 Unit Mismatch and Off-by-One
- **FM Step Units**: `kFmScanStepKhz = 10` (10kHz units) vs SI4735 expecting 100kHz steps
- **Dedupe Distance**: `kFmFoundDedupeDistanceKhz = 9` may be too small for adjacent channels
- **Segment Boundaries**: `advanceScanPoint()` may skip last channel in segment

## 2. Exact Scan Control Flow

### 2.1 Entry Points
```
User Long Press (Scan Mode) → handleLongPress() → requestScan() → g_operation = ScanRunning
```

### 2.2 FM Scan Flow
```
tick() → tickFmSeekScan()
  ├─ First time: beginFmSeekScan() → tune to band edge
  ├─ Loop: seekForScan() [BLOCKING]
  │   ├─ seekImpl() → seekStationProgress() [BLOCKING 45s]
  │   ├─ isValidSeekResult() [rejects if frequency == start]
  │   └─ readSignalQuality()
  ├─ If found: add to g_fmScanTemp, check wrap
  ├─ If not found: finalize with 0 stations
  └─ Set g_nextActionMs = nowMs + 1
```

### 2.3 AM/SW Scan Flow
```
tick() → beginScan() → buildScanSegments()
  ├─ Loop: advanceScanPoint()
  ├─ Tune to g_scanCurrentKhz
  ├─ Wait g_scanSettleMs (60-80ms)
  ├─ Read RSSI/SNR, check thresholds
  ├─ If above threshold: add to g_rawHits
  ├─ Advance to next frequency
  └─ Finalize: merge raw hits, add to g_found
```

### 2.4 Key Variables
- `g_operation`: Operation::ScanRunning
- `g_fmScanInitialized`: FM-specific initialization flag
- `g_nextActionMs`: Throttle timing
- `g_direction`: Scan direction (±1)
- `g_cancelRequested`: Cancel flag
- `g_seekAborted`: Seek abort flag
- `g_scanCurrentKhz`: Current frequency for AM/SW
- `g_fmScanTemp`: FM temporary station list

## 3. FM-Only Fix vs Shared Code Issues

### 3.1 What the FM Fix Changed
- FM scan now uses `tickFmSeekScan()` with repeated hardware seek
- AM/SW still uses step-and-measure loop
- Shared components: `requestScan()`, `tick()`, `seekImpl()`, `isValidSeekResult()`

### 3.2 Why FM-Only Fix Doesn't Solve Remaining Issues
- **Blocking Behavior**: `seekStationProgress()` blocking affects all seek operations
- **Validation Logic**: `isValidSeekResult()` used by both FM and AM/SW paths
- **Abort Handling**: Shared `stopSeekingCallback()` and abort flag logic
- **Entry Logic**: `requestScan()` and main loop timing affects all bands

### 3.3 Shared Components Still Faulty
- `seekImpl()`: Blocking seek with potential timeout issues
- `isValidSeekResult()`: May be too strict for band edge cases
- `stopSeekingCallback()`: May not properly handle cancel during seek
- `requestScan()`: May not properly clear abort state

## 4. Targeted Instrumentation Plan

### 4.1 Logging Counters
```cpp
struct ScanCounters {
  uint32_t scan_ticks;
  uint32_t scan_seek_calls;
  uint32_t scan_seek_found;
  uint32_t scan_seek_aborted;
  uint32_t scan_finalize_reason; // 0=done, 1=cancel, 2=no_station, 3=wrap
  uint32_t scan_points_visited;
  uint32_t scan_fm_temp_count;
};
```

### 4.2 One-Line Traces
```cpp
// Format: [scan] band=%u fm=%d khz=%u step=%u dwell=%u rssi=%u snr=%u thr_rssi=%u thr_snr=%u valid=%d op=%u
#define SCAN_LOG(fmt, ...) \
  Serial.printf("[scan] " fmt "\n", ##__VA_ARGS__)
```

### 4.3 Where to Instrument

#### requestScan() (seek_scan_service.cpp:791-801)
```cpp
SCAN_LOG("requestScan dir=%d", direction);
```

#### tickFmSeekScan() (seek_scan_service.cpp:699-750)
```cpp
// First entry
SCAN_LOG("fm_scan_begin dir=%d band_min=%u band_max=%u restore=%u", 
         g_direction, bandMinKhz, bandMaxKhz, g_scanRestoreKhz);

// Before seek
SCAN_LOG("fm_seek_start khz=%u dir=%d", state.radio.frequencyKhz, g_direction);

// After seek
SCAN_LOG("fm_seek_done found=%d aborted=%d khz=%u rssi=%u snr=%u", 
         found, seekAborted, state.radio.frequencyKhz, rssi, snr);

// On finalize
SCAN_LOG("fm_scan_finalize canceled=%d temp_count=%u restore=%u", 
         canceled, g_fmScanTempCount, g_scanRestoreKhz);
```

#### seekImpl() (radio_service.cpp:500-600)
```cpp
// After seekStationProgress returns
SCAN_LOG("seekImpl done next_khz=%u start_khz=%u valid=%d aborted=%d", 
         nextFrequency, startFrequency, found, g_seekAborted);

// In isValidSeekResult
SCAN_LOG("isValidSeekResult khz=%u start=%u rssi=%u snr=%u pass=%d", 
         frequencyKhz, startFrequencyKhz, rssi, snr, result);
```

#### stopSeekingCallback() (radio_service.cpp:471)
```cpp
if (abortRequested) {
  SCAN_LOG("seek_abort reason=callback");
  return true;
}
```

### 4.4 Minimal Logging (Realtime-Safe)
```cpp
// Use ring buffer to avoid blocking during seek
struct LogEntry {
  uint32_t timestamp;
  char message[64];
};

static LogEntry g_logBuffer[16];
static uint8_t g_logIndex = 0;

void logScanEvent(const char* fmt, ...) {
  if (g_logIndex >= 16) return;
  
  va_list args;
  va_start(args, fmt);
  vsnprintf(g_logBuffer[g_logIndex].message, sizeof(g_logBuffer[g_logIndex].message), fmt, args);
  va_end(args);
  
  g_logBuffer[g_logIndex].timestamp = millis();
  g_logIndex++;
}

// Dump logs when scan completes
void dumpScanLogs() {
  for (uint8_t i = 0; i < g_logIndex; i++) {
    Serial.printf("[%lu] %s\n", g_logBuffer[i].timestamp, g_logBuffer[i].message);
  }
  g_logIndex = 0;
}
```

## 5. Ranked Root Causes & Minimal Fixes

### 5.1 Rank 1: First Seek from Band Edge Rejected → Immediate Exit

**Hypothesis**: Starting scan at band min/max causes `seekStationProgress()` to return same frequency or weak signal, `isValidSeekResult()` rejects it, scan finalizes with 0 stations.

**Evidence**: 
- `isValidSeekResult()` requires `frequencyKhz != startFrequencyKhz`
- Band edges often have no stations or weak signals
- User reports: "shows first frequency, then nothing happens, then original frequency"

**Minimal Fix**:
```cpp
// In tickFmSeekScan(), after seekForScan()
if (!found && g_fmScanTempCount == 0 && g_scanVisited <= 1) {
  // Don't finalize immediately on first seek from band edge
  // Try one more seek from current frequency
  g_nextActionMs = nowMs + 1;
  return true;
}
```

**Why it works**: Prevents immediate exit when starting from band edge with no stations.

**Risks**: May do extra seeks in empty bands. Mitigation: limit to first 1-2 seeks.

### 5.2 Rank 2: seekStationProgress() Blocks Indefinitely

**Hypothesis**: `seekStationProgress()` blocks for full timeout (45s) when no stations found, perceived as "block never exits."

**Evidence**:
- `seekStationProgress()` is blocking with no progress callback
- `kSeekTimeoutMs = 45000` (45 seconds)
- User reports: "block never exists, I can never hear anything"

**Minimal Fix**:
```cpp
// In seekImpl(), reduce timeout for scan operations
if (!retryOppositeEdge) { // This is scan mode
  g_rx.setMaxSeekTime(10000); // 10 seconds instead of 45
} else {
  g_rx.setMaxSeekTime(app::kSeekTimeoutMs); // 45 seconds for normal seek
}
```

**Why it works**: Reduces wait time when no stations found, improves responsiveness.

**Risks**: May exit too early in weak signal areas. Mitigation: 10s is reasonable for scan.

### 5.3 Rank 3: Encoder Abort During Seek

**Hypothesis**: Encoder movement during seek sets `g_abortRequested`, causing immediate cancel.

**Evidence**:
- `onEncoderChange()` sets `g_abortRequested = true` on any movement
- `stopSeekingCallback()` checks `consumeAbortEventRequest()`
- User reports: "if rotating encoder, nothing happens"

**Minimal Fix**:
```cpp
// In requestScan(), ensure clean state
void requestScan(int8_t direction) {
  if (g_operation != Operation::None) {
    return;
  }
  
  services::input::clearAbortRequest();
  (void)services::input::consumeEncoderDelta(); // Clear any pending deltas
  g_direction = direction >= 0 ? 1 : -1;
  // ... rest of function
}

// In tickFmSeekScan(), before seek
services::input::clearAbortRequest();
```

**Why it works**: Ensures no stale encoder events abort the scan.

**Risks**: Slightly delays cancel response. Mitigation: only clear before seek, still allow cancel between seeks.

## 6. Regression Test Plan

### 6.1 Test Cases by Band

#### FM Band Tests
- **World Region**: 87.5-108 MHz, 100kHz steps
- **US Region**: 88.1-107.9 MHz, 100kHz steps  
- **Japan Region**: 76-90 MHz, 100kHz steps
- **OIRT Region**: 65.8-74 MHz, 100kHz steps
- **Expected**: Full band scan, station detection, proper wrap handling

#### AM Band Tests
- **MW**: 530-1700 kHz (9kHz/10kHz steps by region)
- **LW**: 150-300 kHz
- **Expected**: Segment-based scanning, proper step handling

#### SW Band Tests
- **Broadcast Bands**: 120m, 90m, 75m, 60m, 49m, 41m, 31m, 25m, 22m, 19m, 16m, 15m, 13m, 11m
- **Expected**: Red-line segment scanning, 5kHz steps

### 6.2 Edge Cases

#### Band Edge Behavior
- **Test**: Start scan at exact band min/max frequency
- **Expected**: No hang, proper station detection or graceful exit

#### Empty Band
- **Test**: Scan band with no stations (e.g., out-of-range frequencies)
- **Expected**: Scan completes in reasonable time (≤10s), 0 stations found

#### Strong Station
- **Test**: Scan with single strong station
- **Expected**: Station found, no duplicates, proper deduplication

#### Weak Signal
- **Test**: Scan with marginal RSSI/SNR
- **Expected**: Stations found if above thresholds, rejected if below

#### Noise/Interference
- **Test**: Scan in noisy RF environment
- **Expected**: Robust detection, no crashes or hangs

### 6.3 Performance & Watchdog

#### Timing Tests
- **FM Scan**: Measure total time for full band scan
- **AM/SW Scan**: Measure time per segment
- **Expected**: FM ≤ 30s, AM/SW ≤ 60s per band

#### Watchdog Safety
- **Test**: Run scan with watchdog enabled
- **Expected**: No watchdog resets during normal operation

#### UI Responsiveness
- **Test**: Rotate encoder during scan
- **Expected**: Cancel works, no UI freeze

### 6.4 Regression Scenarios

#### Pre-Fix Behavior
- **FM**: Blocking at band edge, immediate exit with 0 stations
- **AM/SW**: Proper step-and-measure operation
- **Expected**: Fixes should not break AM/SW, should improve FM

#### Post-Fix Validation
- **FM**: Full band scan works, proper station detection
- **AM/SW**: No regression in existing functionality
- **Cross-band**: Switching between bands during scan works correctly

## 7. Implementation Priority

1. **Add Instrumentation** (1-2 hours)
   - Add logging counters and traces
   - Run tests to identify which hypothesis is correct

2. **Apply Rank 1 Fix** (30 minutes)
   - Prevent immediate exit from band edge
   - Test FM scan behavior

3. **Apply Rank 2 Fix** (30 minutes)  
   - Reduce seek timeout for scan mode
   - Test responsiveness

4. **Apply Rank 3 Fix** (30 minutes)
   - Clean abort state handling
   - Test cancel functionality

5. **Regression Testing** (2-3 hours)
   - Run full test suite across all bands
   - Validate performance and edge cases

## 8. Success Criteria

- **FM Scan**: Completes full band scan in ≤30 seconds with proper station detection
- **AM/SW Scan**: No regression, maintains existing functionality  
- **Cancel**: Works reliably during scan
- **Edge Cases**: Handles band edges, empty bands, weak signals gracefully
- **Performance**: No watchdog resets, UI remains responsive
- **Cross-band**: Seamless switching between bands during scan

This analysis provides a systematic approach to debugging the band scan issue across all bands, with specific instrumentation and minimal fixes that can be applied incrementally while maintaining system stability.