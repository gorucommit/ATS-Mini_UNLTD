# ETM Scan (Current Implementation)

Implementation reference for the ETM scanner in `src/services/etm_scan_service.cpp` and its integration with seek/navigation in the current firmware.

## Scope and ownership

- **ETM scan engine**: `src/services/etm_scan_service.cpp` (`namespace services::etm`)
- **One-shot seek service**: `src/services/seek_service.cpp` (`namespace services::seekscan`)
- **Radio threshold helpers / seek validation**: `src/services/radio_service.cpp`
- **Shared state**: `include/app_state.h`, `include/etm_scan.h`

Important current split:

- `seekscan` handles **seek only**
- `etm` handles **scan only**
- `main.cpp` bridges seek results into ETM memory via `services::etm::addSeekResult(...)`

## What ETM provides

- Unified scan engine for FM and AM-family (LW/MW/SW/ALL in AM mode)
- Per-band/per-region segment construction
- Thresholded candidate collection using `scanSensitivity`
- ETM station memory (`EtmMemory`) scoped to `(bandIndex, modulation)`
- Navigation in scan mode (`navigateNext/Prev/Nearest`)
- Non-blocking scan tick state machine (work spread across loop iterations)

## What ETM does not do

- It does not handle one-shot seek requests (that is `services::seekscan`)
- It does not support scanning in SSB (`requestScan()` returns `false`)
- It does not persist ETM memory across reboots (ETM memory is runtime-only)

## Key data structures (`include/etm_scan.h`)

- `ScanSensitivity { Low, High }`
- `ScanSpeed { Fast, Thorough }`
- `EtmStation`
- `EtmMemory`
- `EtmSegment`
- `EtmBandProfile`
- `EtmCandidate`
- `EtmFineWindow`
- `EtmPhase`

### Scan pass values

- `kScanPassSeek = 0` (seek-found, not scan-confirmed)
- `kScanPassCoarse = 1`
- `kScanPassFine = 2`

Eviction priority prefers keeping higher-confidence results:

- evict pass `0` first
- then pass `1`
- never evict pass `2` unless replacing within merge/cluster logic

## Current ETM phases

Current enum in code:

- `Idle`
- `CoarseScan`
- `FineScan`
- `Finalize`
- `Cancelling`
- `VerifyScan` (FM Thorough verification pass)

## Current scan behavior by mode

### FM

- `Fast`
  - coarse scan only
  - thresholded candidate collection
  - finalize/merge/sort
- `Thorough`
  - coarse scan with permissive coarse threshold (`kEtmCoarseThresholdFm`)
  - **verification pass** (`VerifyScan`) re-tunes each candidate and reads full FM RSQ (`RSSI`, `SNR`, `FREQOFF`, `PILOT`, `MULT`)
  - candidate scoring/clustering during finalize can keep only the clear winner in a close cluster

### AM-family (LW/MW/SW/ALL in AM)

- `Fast`
  - coarse scan only
- `Thorough`
  - currently still effectively coarse-only for shipped profiles because `fineStepKhz == 0` in AM/LW/MW/SW profiles
  - code supports fine-window scanning if future profiles enable non-zero fine steps

### SSB

- `requestScan()` returns `false`
- no ETM scan runs in `LSB` / `USB`

## Segment building (current)

Implemented in `EtmScanner::requestScan(...)` using bandplan + red-line tables:

- **FM**: one region-adjusted segment for the FM band (`bandMinKhzFor` / `bandMaxKhzFor`)
- **LW**: one segment, LW profile
- **MW**: one segment, MW profile with raster alignment (9/10 kHz depends on region)
- **SW broadcast bands**: clipped to broadcast red-line tables, fallback to full band if needed
- **ALL band (AM mode)**: iterate `kBroadcastRedLineAll`, clip per sub-band, choose MW vs SW profile by range

MW raster alignment uses region-specific origin (`530` or `531`) and step (`9` or `10` kHz).

## Band profiles and timing (current defaults)

Defined in `include/etm_scan.h`:

- `kEtmProfileFm`
  - coarse step `10` (100 kHz in 10 kHz FM units)
  - coarse settle `30 ms`
  - verify settle `100 ms` (used in FM Thorough)
  - merge distance `9` (90 kHz)
- `kEtmProfileMw9`, `kEtmProfileMw10`, `kEtmProfileLw`, `kEtmProfileSw`
  - coarse-only profiles in current code (`fineStepKhz == 0`)

## State machine flow (current implementation)

### 1. `requestScan(state)`

- Reject if current modulation is SSB
- `syncContext(state)` (may clear ETM memory if band/modulation changed)
- Build segment list and select profiles
- Store restore frequency (`restoreKhz_`)
- Precompute coarse `totalPoints_`
- Initialize coarse scan cursor and phase → `CoarseScan`

### 2. `CoarseScan`

For each point:

- tune via `services::radio::apply(state)` to `currentKhz_`
- wait settle time (`coarseSettleMs`)
- read `RSSI/SNR`
- compare with thresholds
- add candidate if above threshold
- advance point / segment

When segments are exhausted:

- `Fast` → `Finalize`
- `Thorough`:
  - FM with verify settle > 0 → `VerifyScan`
  - otherwise build fine windows and run `FineScan` only if windows exist
  - else `Finalize`

### 3. `VerifyScan` (FM Thorough)

For each candidate:

- tune candidate frequency
- wait verify settle
- read full FM RSQ (`readFullRsqFm`)
- enrich candidate with `freqOff`, `pilotPresent`, `multipath`

Then → `Finalize`

### 4. `FineScan` (currently optional/inactive for shipped AM profiles)

- scan inside fine windows around coarse candidates
- promote best point in each window and upgrade candidate scan pass to `kScanPassFine`

Then → `Finalize`

### 5. `Finalize`

- build commit list
- FM Thorough may score/cluster candidates and keep clear winners
- merge into `EtmMemory` (dedupe by profile merge distance)
- sort ETM memory by frequency
- tune to strongest result if any; else restore original frequency
- publish `seekScan` fields
- phase → `Idle`

### 6. `Cancelling`

- restore original frequency (`restoreKhz_`)
- discard working candidates / scan progress
- leave existing `EtmMemory` intact
- publish idle state and return to `Idle`

## Published UI state (`state.seekScan`)

ETM updates `state.seekScan` so the UI can render scan state:

- `active`, `scanning`, `seeking`
- `pointsVisited`, `totalPoints`
- `bestFrequencyKhz`, `bestRssi`
- `foundCount`, `foundIndex`
- `fineScanActive`
  - true during `FineScan` **or** `VerifyScan` in current code
- `cursorScanPass`

## Seek integration (current path)

Seek results are added into ETM memory after seek completes (in `main.cpp`):

1. `services::seekscan::tick(g_state)` runs one blocking seek
2. On successful seek completion:
   - `main.cpp` reads signal quality
   - calls `services::etm::addSeekResult(freq, rssi, snr)`
   - calls `services::etm::publishState(g_state)`

This keeps scan-mode navigation and one-shot seek results in the same ETM list.

## Context and memory scoping

`EtmMemory` is scoped to:

- `bandIndex`
- `modulation`

`syncContext()` clears ETM memory when either changes.

## Settings used by ETM / seek

- `state.global.scanSensitivity`
  - two levels (`Low`, `High`)
  - shared by ETM and seek validation thresholds
- `state.global.scanSpeed`
  - `Fast` / `Thorough`
  - FM Thorough currently enables verify pass

## Related docs

- `docs/ARCHITECTURE.md`
- `docs/FIRMWARE_MAP.md`
- `docs/UI_INTERACTION_SPEC.md`

## Source of truth

- `include/etm_scan.h`
- `src/services/etm_scan_service.cpp`
- `src/services/seek_service.cpp`
- `src/services/radio_service.cpp`
- `src/main.cpp`
