# Scan / ETM Model Plan

## Scope

This document records:

- The FM scan fix implemented in the current firmware tree.
- The FM scan performance changes implemented with it.
- The recommended path to bring MW/SW/AM scan behavior closer to ETM-style quality.

The comparison target was:

- `ats-mini-new` (this firmware)
- `ats-mini-signalscale` (open-source reference for timing/UI patterns, not station ATS detection)
- closed-source "Chinese firmware" behavior (binary-only; used as behavioral reference, no source code available)

## Problem Summary (FM)

Observed symptom:

- FM scan completed but detected very few stations (example: ~3 vs ~26 in another firmware under same conditions).

Primary causes identified in the previous FM scan path:

1. FM scan used a manual stepped threshold/merge detector instead of a seek-loop ATS/ETM model.
2. FM merge/dedupe distance logic was effectively too aggressive due to FM frequency unit scaling (FM frequencies are stored in 10 kHz units).
3. UI continued polling signal quality and rendering at normal cadence during scan, slowing scan throughput.

## Implemented FM Fix (Current)

### 1) FM scan backend switched to ETM-like seek loop

FM scan now uses repeated `radio::seek()` calls to collect stations, dedupe them, and stop when the scan wraps/repeats.

Behavior:

- Seed from the FM band edge (region-aware)
- Seek repeatedly in the selected direction
- Record found frequencies with RSSI
- Stop on wrap/repeat or user cancel
- Finalize into the shared found-station list

This is much closer to ETM/ATS behavior than manual stepped sampling for FM.

### 2) FM dedupe/merge corrected for FM frequency units

FM frequencies are stored in 10 kHz units (`10 == 100 kHz`).

The new implementation separates:

- FM raw merge distance (for raw cluster logic when used)
- FM found-list dedupe distance (used to avoid collapsing adjacent 100 kHz channels)

### 3) FM scan performance pass

Implemented performance improvements for active scan:

- UI skips periodic RSSI/SNR polling while scan is active
- UI render cadence is reduced during scan
- Main loop tail delay is reduced while seek/scan is active

These changes reduce radio bus contention and redraw overhead during scan.

## Why This Fix Was Chosen

FM station detection quality on SI473x is generally better when using the chip's seek validity logic than when manually sampling every 100 kHz and trying to reconstruct stations with threshold + merge heuristics.

This approach also improves speed because it jumps between valid stations instead of evaluating every bin.

## Comparison Notes

### ats-mini-new (this firmware, before FM fix)

- Full-band stepped sampler + threshold gate + merge
- Good for custom segmented scans
- Weak for FM ETM-style behavior if merge logic is off

### signalscale

- "Scan" is a fixed-size raw graph sampler (200 points), not a station ATS list scan
- Useful timing/reference behavior (tune delay handling, scan UI)
- Not a direct station-count comparison target

### Chinese firmware (binary only)

- No source available in local folder (binaries + changelog only)
- Behavioral reference suggests strong FM ATS-like station acquisition

## Remaining Work To Make MW/SW/AM "Top"

### Goal

Make AM-family scanning (LW/MW/SW in AM mode) behave closer to ETM/ATS quality while preserving segmented scan rules.

### Recommended architecture

Use one scan controller with two backends:

1. FM backend: seek-loop ATS/ETM (implemented)
2. AM-family backend:
   - Preferred: segment-aware seek-loop ATS backend
   - Fallback/advanced: stepped sampler for SSB and optional graph-style scan

### MW/SW/AM changes needed (recommended)

#### A) Add AM-family seek-loop scan backend (segment-aware)

For `AM` mode bands (LW/MW/SW/ALL):

- Reuse the radio seek path in a loop, but make it segment-aware
- Scan each segment independently (broadcast sub-bands, band ranges)
- Dedupe results using region-aware spacing logic
- Stop cleanly at segment boundaries and continue to next segment

Important design note:

- A scan-specific seek-next API is preferable to reusing one-shot seek behavior unchanged,
  because one-shot seek may retry from the opposite edge (good for user seek, not ideal for scan iteration).

#### B) Keep SSB on manual scan backend

`LSB/USB` cannot use the current seek path and should remain manual (or unsupported for ATS).

For manual SSB/AM fallback, improve the current stepped detector:

- Implement below->above threshold edge gating (drop-then-rise)
- Track local peak while above threshold
- Commit one hit per signal island
- Optional tune-complete-aware sampling instead of fixed-delay-only sampling

#### C) Merge / dedupe correctness for AM-family

- Raw hit cluster merge distance should use regional MW spacing (`9/10 kHz`) where specified
- Found-list dedupe policy should be separate from raw cluster merge policy
- Avoid using the same value for all stages if it harms dense-band behavior

#### D) Spec alignment for ALL-band AM scan

- Current code path should be reviewed against spec for whether MW in `ALL` should be skipped or included.
- If spec requires "ignore MW for now" in `ALL`, enforce it in segment building.

## Performance Plan For MW/SW/AM (after FM)

The following performance changes should also apply to AM-family scan:

1. Skip UI signal polling while scan is active (implemented generically in UI)
2. Lower UI redraw cadence while scan is active (implemented generically in UI)
3. Reduce main-loop delay while scan is active (implemented)
4. Consider scan-specific radio delay tuning (library/API level)
5. Avoid extra radio reads from non-scan services during scan when possible

## Validation Plan

### FM (implemented changes)

Measure on the same antenna/location:

1. Station count vs previous firmware build
2. Station count vs reference firmware
3. Total scan duration
4. Duplicate rate / incorrect frequency stops
5. Cancel reliability

### MW/SW/AM (future)

1. Count parity vs manual known stations
2. Repeatability across runs
3. Segment coverage correctness (`ALL`, broadcast bands, MW/LW)
4. False positives vs missed stations

## Suggested Next Steps

1. Test FM scan on hardware and record:
   - station count
   - total scan time
   - any duplicate frequencies
2. If FM count is still low:
   - add temporary serial trace of each seek result (frequency/RSSI)
   - add a scan-specific `seekNoWrap` or `seekNextInRange` path in `radio_service`
3. Implement segment-aware AM seek-loop backend
4. Retain manual stepped backend for SSB and advanced scan modes

