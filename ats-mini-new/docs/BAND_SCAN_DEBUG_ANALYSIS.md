# Band Scan Debug Analysis

Senior embedded/firmware debugging analysis for the broken band-scan feature (FM + AM/SW/SSB). **No code changes**—analysis and instrumentation/fix proposals only.

---

## 1. Hypothesis Tree for Root Causes (All Bands)

### 1.1 State machine / scan loop logic

- **FM path never advances:** `tickFmSeekScan()` sets `g_nextActionMs = nowMs + 1` after a found station; if `seekForScan()` never returns or returns in a way that always takes the `!found` or `seekAborted` path, the loop never progresses or exits immediately.
- **AM/SW path:** `g_segmentCount == 0` triggers `beginScan()` once; if `beginScan()` leaves `g_operation == None` (e.g. no segments), scan is cleared without running.
- **Operation vs. context mismatch:** `requestScan()` sets `g_operation = ScanRunning` but does **not** call `beginScan()` for FM; FM uses `beginFmSeekScan()` only inside `tickFmSeekScan()` when `!g_fmScanInitialized`. So FM scan state is split (no segment list; separate init flag).
- **Cancel/abort semantics:** `seekForScan()` uses `allowHoldAbort = false` so only **event** abort is checked (`consumeAbortEventRequest()`). Encoder ISR sets `g_abortRequested = true` on any movement; if that flag is not cleared before the first seek, or is set during the blocking seek, the first seek can abort and scan finalizes as canceled.
- **Double-exit or stuck:** `clearOperationState()` clears `g_fmScanInitialized` via `resetFmScanState()`. If we finalize but something still thinks scan is active, UI can look stuck.

### 1.2 Frequency stepping and band limits (wrap/stop)

- **FM:** No step loop in firmware; hardware seek advances. Wrap is detected by `fmScanWrappedToStart()` (compare current to `g_fmScanFirstHitKhz` / `g_fmScanLastHitKhz`). If the chip returns the same frequency as start (e.g. at band edge), `isValidSeekResult()` rejects (frequency == startFrequency) → `found = false` → scan finalizes with 0 stations.
- **AM/SW:** `advanceScanPoint()` uses `g_segments[].minKhz/maxKhz/stepKhz`. Off-by-one at segment boundary (e.g. `next > segment.maxKhz` then advance segment) can skip the last channel or duplicate.
- **Unit bugs:** FM uses 100 kHz steps; `kFmScanStepKhz = 10` in seek_scan_service (10×10 kHz = 100 kHz). Radio uses `seekSpacingKhzFor()` → 10 for FM. Confirm SI4735 API expects the same unit (often “step” in 10 kHz for FM).
- **Band edge:** Starting FM scan at `bandMinKhz`/`bandMaxKhz`; first hardware seek from that edge may return “no station” or same frequency → immediate “scan done, 0 stations.”

### 1.3 Timing / dwell / settle delays

- **Blocking seek:** `seekForScan()` → `seekImpl()` → `g_rx.seekStationProgress(..., stopSeekingCallback, ...)` is **blocking**. Main loop does not run during seek (no UI, no encoder handling). Long or infinite seek → “block never exits.”
- **FM only:** After a found station, `g_nextActionMs = nowMs + 1` (1 ms). No settle after seek before reading RSSI; `readSignalQuality()` is called immediately after seek returns. Possible I2C/AGC race.
- **AM/SW:** `g_scanSettleMs = settleDelayMsFor(modulation)` (FM 60 ms, AM/LSB/USB 80 ms). Tune → wait settle → read RSSI/SNR → advance. If settle is too short, thresholds may never be met.

### 1.4 Signal-quality gating (RSSI/SNR / valid flag)

- **isValidSeekResult():** For FM, requires RSSI ≥ 5, SNR ≥ 2, frequency in band, frequency ≠ start. If the chip reports a carrier but RSSI/SNR below threshold (or read too early), `found = false` and that seek is treated as “no station.”
- **FM scan:** No extra threshold in `tickFmSeekScan()`; we trust `seekForScan()` result and then read RSSI only for storing. So “station valid” is entirely determined inside `seekImpl()` via `isValidSeekResult()`.
- **AM/SW scan:** `aboveThreshold = rssi >= thresholdRssiFor() && snr >= thresholdSnrFor()`; only then we add to `g_rawHits`. Thresholds: FM 5/2, AM 10/3.

### 1.5 SI47xx command sequencing and status polling

- **seekStationProgress():** Behavior is library-dependent (internal loop with callback). If the library never calls the callback, or waits only on hardware interrupt that never fires, seek can block until timeout (e.g. 45 s via `setMaxSeekTime(kSeekTimeoutMs)`).
- **State after apply:** `beginFmSeekScan()` sets `state.radio.frequencyKhz = seedKhz` and `services::radio::apply(state)`. Next tick we call `seekForScan()`, which uses `state.radio.frequencyKhz` (already at band edge) and may snap again in `seekImpl()`. Duplicate or redundant setFrequency could confuse the chip.
- **RDS/signal poll during seek:** UI skips RSSI/SNR poll when `scanActive`; RDS still runs in main loop but after `tick()`. While `tick()` is blocked in seek, RDS doesn’t run—acceptable.

### 1.6 Concurrency (UI, encoder, audio, FreeRTOS)

- **Main loop order:** `handleButtonEvents()` → `handleRotation(consumeEncoderDelta())` → `seekscan::tick()`. So when `tick()` is inside `seekForScan()`, encoder deltas accumulate; on next loop after seek returns, `handleRotation()` can consume them and call `requestCancel()` because `busy()` is true.
- **Encoder abort during seek:** `stopSeekingCallback()` uses `consumeAbortEventRequest()` for scan. So any **prior** encoder event that set `g_abortRequested` (and wasn’t cleared) will abort the seek. `requestScan()` calls `clearAbortRequest()` so normally we start clean; but if long-press and encoder are processed in same frame, ordering matters.
- **Audio:** No separate audio task in the snippets; blocking in main loop mutes effective UI/input for the duration of seek.

### 1.7 Persistence / data structure corruption

- **g_found / g_fmScanTemp:** Not persisted across power cycle; only in-memory. Corruption (e.g. overwrite, wrong count) would affect “navigate found” and finalize.
- **Band/config:** `buildScanSegments()` and `beginFmSeekScan()` use `state.radio.bandIndex`, `state.global.fmRegion`, and `app::kBandPlan`. If band index or region is wrong, segment list or band edge could be wrong.
- **Context key:** `updateContext()` can call `resetFoundStations()` when band/family/region changes; if that runs mid-scan it could clear found list (unlikely during single scan).

### 1.8 Unit mismatch and off-by-one

- **FM step:** `kFmScanStepKhz = 10` (seek_scan_service) vs `seekSpacingKhzFor()` = 10 (radio). Comment says “100 kHz”; confirm SI4735 expects 10 = 100 kHz (10 kHz units).
- **Dedupe:** `kFmFoundDedupeDistanceKhz = kFmScanStepKhz - 1` = 9 (kHz). Adjacent 100 kHz channels not merged. Correct.
- **advanceScanPoint:** `next = g_scanCurrentKhz + stepKhz`; if `next <= segment.maxKhz` we set `g_scanCurrentKhz = next`. So we include maxKhz only if (maxKhz - minKhz) % stepKhz == 0; otherwise we might stop before end. Possible off-by-one at segment end.

---

## 2. Exact Scan Control Flow (Code Path Map)

### 2.1 Entry point(s) for band scan

- **User:** Long press in Now Playing, operation mode **Scan** → `handleLongPress()` (main.cpp ~729–733):  
  `consumeEncoderDelta()` then `services::seekscan::requestScan(g_state.seekScan.direction >= 0 ? 1 : -1)`.
- **requestScan(direction)** (seek_scan_service.cpp 791–801):  
  If `g_operation != None` return. Else `clearAbortRequest()`, `g_direction = ±1`, `g_segmentCount = 0`, `resetFmScanState()`, `g_operation = Operation::ScanRunning`.

### 2.2 Loop and state transitions

- **Main loop** (main.cpp 833–872):  
  `syncContext()` → input tick → `handleButtonEvents()` → `handleRotation(consumeEncoderDelta())` → **`seekscan::tick(g_state)`** → radio/rds/clock/settings tick → UI render → `delay(busy() ? 1 : 5)`.

- **tick()** (seek_scan_service.cpp 909–956):
  - If `g_operation == None` → return false.
  - If `SeekPending` → one-shot seek, update found, `clearOperationState()`, return.
  - **If `ScanRunning` and FM** → **return tickFmSeekScan(state)** (see below).
  - If `ScanRunning` and not FM: if `g_segmentCount == 0` → `beginScan(state)` (builds segments, sets `g_scanCurrentKhz`, `Operation::ScanRunning`), then set `state.seekScan.*` and fall through to segment loop.
  - If cancel → restore frequency, `clearOperationState()`, return true.
  - If `nowMs < g_nextActionMs` → return false (throttle).
  - If `!g_scanAwaitingMeasure` → set `state.radio.frequencyKhz = g_scanCurrentKhz`, apply, set `g_scanAwaitingMeasure = true`, `g_nextActionMs = nowMs + g_scanSettleMs`, return true.
  - Else: read RSSI/SNR, update best, if above threshold push raw hit, advance `g_scanVisited`, then `advanceScanPoint()`. If no more point → `finalizeScan()`, `clearOperationState()`. Else clear `g_scanAwaitingMeasure`, `g_nextActionMs = nowMs`, return true.

### 2.3 FM-specific loop: tickFmSeekScan()

- **First time** (`!g_fmScanInitialized`): `beginFmSeekScan(state)` → set restore/best/visited, `resetFmScanState()`, `g_fmScanInitialized = true`, tune to `bandMinKhz` (dir≥0) or `bandMaxKhz` (dir<0), apply. Set `state.seekScan.*`, return true.
- **Later:** If `g_cancelRequested` → finalize canceled, clear state, return true.
- If `nowMs < g_nextActionMs` → return false.
- **Blocking call:** `found = services::radio::seekForScan(state, g_direction)` and `seekAborted = lastSeekAborted()`.
- Read RSSI (for storage only).
- If seekAborted or cancel → finalize canceled, clear state, return true.
- If `!found` → finalize not canceled (merge 0 stations), clear state, return true.
- If wrap detected (`fmScanWrappedToStart(foundKhz)`) → finalize not canceled, clear state, return true.
- Else: add to `g_fmScanTemp`, update first/last hit, best; set `g_nextActionMs = nowMs + 1`, return true.

### 2.4 How next frequency is computed

- **FM:** Next frequency is whatever the hardware seek returns in `state.radio.frequencyKhz` after `seekForScan()`. No explicit step in this firmware.
- **AM/SW:** `advanceScanPoint()`: `next = g_scanCurrentKhz + segment.stepKhz`; if `next <= segment.maxKhz` then `g_scanCurrentKhz = next`; else next segment, `g_scanCurrentKhz = g_segments[g_segmentIndex].minKhz`.

### 2.5 How “station valid” is computed

- **FM (seek path):** Inside `seekImpl()`: after `seekStationProgress()` returns, `nextFrequency = g_rx.getCurrentFrequency()`, then `found = !g_seekAborted && isValidSeekResult(state, nextFrequency, startFrequency, bandMinKhz, bandMaxKhz)`.  
  **isValidSeekResult():** frequency in [bandMinKhz, bandMaxKhz], frequency ≠ startFrequency, and RSSI/SNR from `readCurrentSignalQuality()` ≥ seek thresholds (FM: 5, 2).
- **AM/SW:** `aboveThreshold = (rssi >= thresholdRssiFor && snr >= thresholdSnrFor)`; only then add to `g_rawHits`. No “valid” from chip; we only use our thresholds.

### 2.6 Stop conditions and timeouts

- **FM:** Stop when: cancel requested, seek aborted, `!found` (no valid station), or `fmScanWrappedToStart()` (back near first hit). No explicit timeout in scan loop; each seek can run up to `kSeekTimeoutMs` (45 s) inside the library.
- **AM/SW:** Stop when: cancel, or `!advanceScanPoint()` (all segments done). Per-point delay is `g_scanSettleMs`; no global scan timeout.
- **Seek abort:** `stopSeekingCallback()` returns true if (for scan) `consumeAbortEventRequest()` is true, setting `g_seekAborted`. So any encoder-driven abort event aborts the **current** seek and then tick sees `seekAborted` and finalizes scan as canceled.

### 2.7 Call graph (concise)

```
loop()
  handleLongPress() [when Scan mode]
    requestScan(±1)
  seekscan::tick(state)
    tickFmSeekScan(state)   [FM only]
      beginFmSeekScan()     [first time]
        radio::apply(state)
      seekForScan(state, g_direction)
        seekImpl(..., false, false)
          clearAbortRequest()
          setSeekFmLimits / setSeekFmSpacing
          seekStationProgress(nullptr, stopSeekingCallback, up/down)  ← BLOCKING
          isValidSeekResult(...)
      readSignalQuality(&rssi, nullptr)
      finalizeFmSeekScan() or continue with g_nextActionMs = nowMs + 1
```

Key variables: `g_operation`, `g_fmScanInitialized`, `g_nextActionMs`, `g_direction`, `g_cancelRequested`, `g_seekAborted`, `state.radio.frequencyKhz`, `g_scanRestoreKhz`, `g_fmScanTempCount`, `g_fmScanFirstHitKhz`, `g_fmScanLastHitKhz`.

---

## 3. FM-Only Fix vs Shared Scan Code

### 3.1 What the FM-only fix did

- FM band scan was changed to use **repeated hardware seek** instead of the shared step-and-measure loop: `tickFmSeekScan()` + `beginFmSeekScan()` + `seekForScan()` loop, with its own state (`g_fmScanInitialized`, `g_fmScanTemp*`, wrap detection).
- Shared path (AM/SW) still uses: `beginScan()` → `buildScanSegments()` → step over `g_scanCurrentKhz` with settle → read RSSI/SNR → threshold → raw hits → `advanceScanPoint()` → `finalizeScan()` (merge raw hits, add to found).

### 3.2 Why an FM-only patch doesn’t fix the remaining issue

- The **blocking** behavior is in the **shared** radio API: `seekImpl()` is used by both one-shot seek and by `seekForScan()`. So any bug in `seekImpl()` (e.g. never returning, or returning with wrong `found`/abort) affects FM scan.
- **Abort semantics** are shared: `stopSeekingCallback()` is used for both seek and scan; only `g_seekAllowHoldAbort` differs. So if the callback is not called by the library, or abort/event state is wrong, FM scan is still affected.
- **Validation** is shared: `isValidSeekResult()` is used after every seek (including inside `seekForScan()`). If it’s too strict (e.g. at band edge or right after seek), FM scan will often get `found = false` and exit after one seek with 0 stations.
- **Entry and lifecycle** are shared: `requestScan()` and `tick()` are the same for all bands; only inside `tick()` we branch to `tickFmSeekScan()` for FM. So any bug in “scan start” (e.g. abort flag, encoder delta) affects FM the same.

### 3.3 Shared components still relevant to the bug

| Component | Used by FM scan? | Used by AM/SW scan? |
|-----------|-------------------|----------------------|
| `requestScan()` | ✓ | ✓ |
| `tick()` dispatch | ✓ | ✓ |
| `seekImpl()` / `seekForScan()` | ✓ (FM only) | No (AM/SW use step loop) |
| `stopSeekingCallback()` | ✓ | No (no seek in AM/SW scan) |
| `isValidSeekResult()` | ✓ | No |
| `clearAbortRequest()` at start | ✓ | ✓ |
| `buildScanSegments()` | No | ✓ |
| `beginScan()` | No | ✓ |
| `finalizeScan()` (merge raw hits) | No | ✓ |
| `finalizeFmSeekScan()` | ✓ | No |

So the **shared** pieces that can still break FM scan are: `seekImpl()` (blocking, return value, abort), `isValidSeekResult()`, and input/abort handling around `requestScan()` and inside the seek callback.

---

## 4. Targeted Instrumentation Plan

### 4.1 Logging counters and one-line traces

Add (e.g. behind `#if ATS_SCAN_DEBUG` or a compile flag) the following.

- **Counters (global or passed through):**  
  `scan_ticks`, `scan_seek_calls`, `scan_seek_found`, `scan_seek_aborted`, `scan_finalize_reason` (0=done, 1=cancel, 2=no station, 3=wrap), `scan_points_visited`, `scan_fm_temp_count`.

- **One-line traces (frequency, band, step, dwell, thresholds, valid, state):**  
  Format example:  
  `[scan] band=%u fm=%d khz=%u step=%u dwell=%u rssi=%u snr=%u thr_rssi=%u thr_snr=%u valid=%d op=%u\n`

### 4.2 Where to log (function / line)

- **requestScan()** (seek_scan_service.cpp, after setting `g_operation`):  
  Log: `requestScan dir=%d`, and optionally that abort was cleared.

- **tick()** (seek_scan_service.cpp):  
  At top when `g_operation == ScanRunning`: log `tick scan_running fm=%d segment_count=%u`.

- **tickFmSeekScan()**:  
  - On first entry (`!g_fmScanInitialized`): log `fm_scan_begin dir=%d band_min=%u band_max=%u restore=%u`.  
  - Before `seekForScan()`: log `fm_seek_start khz=%u dir=%d`.  
  - After `seekForScan()`: log `fm_seek_done found=%d aborted=%d khz=%u rssi=%u snr=%u`.  
  - When finalizing: log `fm_scan_finalize canceled=%d temp_count=%u restore=%u`.

- **seekImpl()** (radio_service.cpp):  
  - After `seekStationProgress()` returns: log `seekImpl done next_khz=%u start_khz=%u valid=%d aborted=%d`.  
  - Inside or right after `readCurrentSignalQuality()` in `isValidSeekResult()`: log `isValidSeekResult khz=%u start=%u rssi=%u snr=%u pass=%d`.

- **beginFmSeekScan()**:  
  After setting seed frequency: log `fm_seed khz=%u applied`.

- **stopSeekingCallback()** (radio_service.cpp):  
  When returning true (abort): log `seek_abort reason=callback`.

### 4.3 Instrumentation checklist (where to log)

| Location | File:Line (approx) | What to log |
|---------|--------------------|-------------|
| After setting `g_operation = ScanRunning` | seek_scan_service.cpp:800 | `requestScan dir=%d` |
| When entering FM branch in tick() | seek_scan_service.cpp:917 | `tick scan_running fm=1` |
| Start of tickFmSeekScan, first time | seek_scan_service.cpp:699 | `fm_scan_begin dir=%d band_min=%u band_max=%u restore=%u` |
| Just before seekForScan() | seek_scan_service.cpp:719 | `fm_seek_start khz=%u dir=%d` |
| Just after seekForScan() | seek_scan_service.cpp:722 | `fm_seek_done found=%d aborted=%d khz=%u rssi=%u` |
| On finalize (cancel or done) | seek_scan_service.cpp:726, 735, 741 | `fm_scan_finalize canceled=%d temp_count=%u` |
| After seekStationProgress() returns | radio_service.cpp:634 | `seekImpl done next_khz=%u valid=%d aborted=%d` |
| Inside isValidSeekResult before return | radio_service.cpp:350–360 | `isValid rssi=%u snr=%u pass=%d` |
| When stopSeekingCallback returns true | radio_service.cpp:471 | `seek_abort callback` |

### 4.4 Minimal logging (realtime-safe)

- Avoid `Serial.printf` in ISR; keep all logging in main loop or inside the blocking seek (callback runs in same context as seek).
- Use a small ring buffer of preformatted lines (e.g. 8×64 bytes) and a single “last log” line; dump from loop when `!busy()` or on a timer every 500 ms so seek path only does a non-blocking enqueue.
- Or: only counters (no printf) and dump counters once when scan finalizes (e.g. in `finalizeFmSeekScan` and `clearOperationState`). That gives zero impact during seek.

---

## 5. Most Likely Root Causes (Top 3) and Minimal Fixes

### 5.1 Rank 1: First seek from band edge treated as “no station” and scan exits immediately

**Hypothesis:** We start at `bandMinKhz` or `bandMaxKhz`. The hardware seek runs but returns the same frequency (or the next channel with RSSI/SNR below threshold). `isValidSeekResult()` requires `frequencyKhz != startFrequencyKhz` and RSSI/SNR above threshold, so `found = false`. We then call `finalizeFmSeekScan(state, false)` with 0 stations and restore the original frequency. User sees: jump to band edge, then back to original frequency, “scan done” with no stations; if the UI doesn’t clearly show “scan finished,” it can feel like “block never exits” or “nothing happens.”

**Minimal fix (pseudo-diff):**

- In **tickFmSeekScan()**, after the first seek (e.g. when `g_scanVisited == 1`), if `!found` and `g_fmScanTempCount == 0`, **do not** finalize immediately; instead advance logically to the next “virtual” start (e.g. move frequency one seek step from band edge and try one more seek), or skip “no station” once at band edge and set `g_nextActionMs = nowMs + 1` to run another seek from the current chip frequency.  
  **Or**, in **seekImpl()**, when used for scan (`retryOppositeEdge == false`): if we’re at band min/max and `nextFrequency == startFrequency` and the chip actually moved (e.g. check getCurrentFrequency() again after a 20 ms delay), treat as “no station” but don’t restore start frequency so the next scan tick can try again from a different start.  
  **Simpler variant:** In `tickFmSeekScan()`, when `!found` and `g_fmScanTempCount == 0` and `g_scanVisited <= 1`, do not call `finalizeFmSeekScan(state, false)`; set `g_nextActionMs = nowMs + 1` and optionally nudge frequency by one step (e.g. `state.radio.frequencyKhz += (g_direction >= 0 ? 10 : -10)` in 10 kHz units, clamped to band) so the next seek doesn’t start from the same spot. Then return true so the loop runs again.

**Why it fixes the symptom:** Prevents “one seek from band edge → no station → immediate finalize with 0 stations.” Gives the scan at least one more chance to find a station or to wrap.

**Risks:** If the band is truly empty, we might do a few extra seeks before finalizing. Mitigate: only allow this “retry” once or twice (e.g. when `g_scanVisited <= 2` and temp count still 0).

---

### 5.2 Rank 2: seekStationProgress() blocks for a long time or until timeout

**Hypothesis:** The SI4735 library’s `seekStationProgress()` runs a loop that only exits when the chip reports “seek done” or the callback returns true. If the chip never reports completion (e.g. bad I2C, wrong mode, or library bug), the call blocks until `setMaxSeekTime()` (45 s). User perceives “first frequency, then nothing, then [after 45 s] original frequency” or “block never exits” if they don’t wait 45 s.

**Minimal fix (pseudo-diff):**

- **Do not change library.** Add a **non-blocking** or **cooperative** seek path for scan: e.g. start a single seek step (if the library supports “seek one step” instead of “seek until valid”), or run `seekStationProgress()` in a state machine that yields (e.g. call it from a task that can timeout).  
  **Simpler:** Reduce `kSeekTimeoutMs` for scan-only (e.g. 5–10 s) so that if the chip hangs, we exit sooner and finalize with whatever we have.  
  **Instrumentation first:** Log before and after `seekStationProgress()` with timestamps; if the delta is always ~45 s when “nothing happens,” confirm this hypothesis.

**Why it fixes:** Short timeout prevents “block forever”; “one-step” seek would avoid long blocks but requires library support.

**Risks:** Short timeout may end scan early in weak-signal areas. Mitigate: use a 10–15 s timeout only when in scan mode (e.g. pass a flag into seekImpl or set a different max seek time before calling seekForScan).

---

### 5.3 Rank 3: Abort/event flag or encoder clears scan before first seek completes

**Hypothesis:** Before the first `seekForScan()`, or during it, something sets `g_abortRequested` or `g_cancelRequested`. Then we either finalize as canceled or the seek callback returns true and `seekAborted` is set, so we finalize as canceled and restore. User sees: band edge, then original frequency, “nothing happens,” and rotation might still be ignored because we’re no longer busy.

**Minimal fix (pseudo-diff):**

- In **requestScan()**, after `clearAbortRequest()`, also call `consumeEncoderDelta()` (or ensure the main loop has already consumed it before we set `g_operation`; currently long-press handler consumes delta before requestScan). Ensure no code path sets `g_abortRequested` between `clearAbortRequest()` and the first entry into `tickFmSeekScan()`.  
  - In **tickFmSeekScan()**, right before calling `seekForScan()`, call `clearAbortRequest()` again so any encoder movement that occurred after the previous tick doesn’t abort the **next** seek.  
  - Optionally, ignore `consumeAbortEventRequest()` in **stopSeekingCallback()** for the first N ms of a scan (e.g. 500 ms) so accidental encoder noise doesn’t abort the first seek. (More invasive.)

**Why it fixes:** Ensures the first (and subsequent) seek isn’t aborted by stale or accidental abort/encoder events.

**Risks:** Slightly delays reaction to user cancel. Mitigate: only re-clear abort immediately before seek; still allow cancel between seeks.

---

## 6. Regression Checks

### 6.1 Test cases per band and step size

- **FM (World / US / Japan / Oirt):** Long-press in Scan mode; expect full band scan, list of found stations, restore or best frequency on exit; rotate to navigate found stations.
- **AM (MW/LW):** Same; step size 9 or 10 kHz per region; check band edges (e.g. 531–1602, 153–279).
- **SW (each broadcast band):** Scan red-line segments; check segment boundaries and step (5 kHz).
- **Step size:** Change FM step (e.g. 100 vs 50 kHz if supported) and AM step (9 vs 10 kHz); ensure seek/scan still finds stations and doesn’t hang.

### 6.2 Edge cases

- **Band edges:** Start scan at min and at max; ensure no hang, no infinite loop, correct wrap or stop.
- **Wrap behavior:** FM scan up from high frequency (e.g. 10700) and down from low (8800); expect wrap detection and clean finalize.
- **Empty band:** Band with no stations; expect scan to finish (with or without retries), 0 stations, restore to start frequency.
- **Very strong station:** Single strong station; expect it to be found and deduped correctly (no duplicate entries).
- **Noisy RF:** Weak/marginal RSSI/SNR; expect either station found or correctly rejected by threshold; no crash or hang.

### 6.3 Performance and watchdog

- **Duration:** Log total scan time per band; compare to 45 s × (number of seeks) for FM. If we add “retry at band edge,” ensure total time stays acceptable (e.g. &lt; 2–3 minutes for full FM).
- **Watchdog:** Ensure no single blocking call exceeds the watchdog timeout (e.g. 45 s seek is at the limit); consider feeding the watchdog inside the library’s seek loop if possible, or reducing seek timeout for scan.
- **UI:** With instrumentation, ensure render and input still run when not inside seek (delay(1) in loop when busy); confirm no stack overflow from logging.

---

**End of analysis.** Implement instrumentation first to confirm which of the top 3 causes applies, then apply the corresponding minimal fix and run the regression plan.
