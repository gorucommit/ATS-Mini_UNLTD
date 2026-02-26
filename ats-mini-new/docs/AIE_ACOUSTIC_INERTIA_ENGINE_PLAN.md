# Acoustic Inertia Engine (AIE) — Implementation Plan & Viability Assessment

> Status (2026-02-26): Historical planning/assessment/session document.
> It may not reflect the current firmware implementation exactly. For current implementation docs, use docs/ARCHITECTURE.md, docs/FIRMWARE_MAP.md, docs/ETM_SCAN.md, docs/UI_INTERACTION_SPEC.md, and source under src/ and include/


**Spec version:** 1.0  
**Target:** ESP32-S3 (dual core) + SI4735  
**Objective:** Eliminate digital "chuffing" and switching transients during VFO rotation by replacing them with a soft-attack audio "bloom" (high-fidelity, phase-coherent feel).  
**This document:** Implementation approach, behaviour at any step level, and viability. No code changes — planning only.

---

## 1. Spec Summary (AIE 1.0)

| Parameter | Symbol | Value | Meaning |
|-----------|--------|-------|--------|
| Mute velocity | \(T_{drop}\) | 5 ms | Time to reach ~−60 dB once encoder moves |
| Sustain / dwell | \(T_{dwell}\) | 40 ms | Silence window; stays open while encoder pulses are detected |
| Bloom (release) | \(T_{bloom}\) | 150 ms | Sigmoid ramp-up after last encoder pulse |

**Model:** Volume recovery uses a sigmoid for an "analog" feel:

$$V_{out}(t) = V_{target} \cdot \left( \frac{1}{1 + e^{-k(t - t_0)}} \right)$$

with \(k\) = steepness, \(t_0\) = midpoint of the 150 ms bloom.

**Core split (spec):**

- **Core 0 — AIE Envelope Manager (high/critical):** Real-time volume ramping at 1 ms granularity.
- **Core 1 — VFO Control (medium):** Encoder polling, I2C frequency commands, UI updates.

**Data flow:** Encoder ISR → set `isTuning` + timestamp (`esp_timer_get_time()`) → Core 0 drops volume (raw register) → Core 1 sends TUNER_SET_FREQ → Core 0 waits \(T_{dwell}\) then runs sigmoid bloom until volume reaches user `SetVolume`.

---

## 2. Current Firmware Context (ats-mini-new)

Relevant facts for implementation:

- **Encoder:** Hardware ISR on both encoder pins (CHANGE), Ben Buxton state machine; updates `g_encoderDelta` / `g_encoderDeltaAccel` and uses `g_lastEncoderTime` (millis). No `isTuning` flag or microsecond timestamp today.
- **Tuning path:** `loop()` → `handleRotation(consumeEncoderDelta())` → when NowPlaying + Tune: `handleNowPlayingRotation()` → `changeFrequency(direction, repeats)`. Step size is already fully variable: FM step (e.g. 50/100/200 kHz), AM/MW step (e.g. 1/9/10 kHz), SSB BFO 25 Hz; `changeFrequency()` uses `repeats` and band/step from state. So **tuning is already step-agnostic**; AIE only needs to react to "encoder moved," not to step size.
- **Volume / mute:** SI4735 via `g_rx.setVolume(radio.volume)` and `g_rx.setAudioMute(0/1)` in `radio_service`. No raw volume register API in current code; library is standard SI4735 Arduino.
- **Concurrency:** Single-threaded. All work runs from Arduino `loop()` (typically on Core 1). No `xTaskCreate` / `xTaskCreatePinnedToCore` in app code; no `esp_timer` in app. I2C and SI4735 are used only from that single context.
- **Apply path:** `applyRadioState()` → `services::radio::apply()` → frequency/volume/band/mode applied; `apply()` already does `g_rx.setVolume(radio.volume)` when volume differs from last applied.

So: **AIE must insert itself between "encoder moved" and "audio heard"** without changing how often or at what step we tune; it only shapes the volume envelope around each tune event.

---

## 3. How It Would Work at Any Step Level

- **Step level is irrelevant to AIE.** The engine reacts to **rotation events** (and their timestamp), not to the size of the frequency step. So:
  - **FM 50 / 100 / 200 kHz:** One or more encoder steps → `changeFrequency(direction, repeats)` runs at the chosen step; AIE drops audio on first encoder activity, keeps it suppressed for \(T_{dwell}\) after the last pulse, then blooms over 150 ms. Same behaviour regardless of step.
  - **AM/MW (e.g. 1, 9, 10 kHz):** Same: each encoder event triggers the same drop/dwell/bloom; only the number of Hz per step changes in `changeFrequency()`.
  - **SSB (BFO 25 Hz):** Same again; fast spins produce many BFO steps and possibly many `apply()` calls, but AIE still uses a single "last move" timestamp and one dwell window, then one bloom. So rapid SSB tuning still gets one continuous silence window and one bloom after the user stops turning.

- **Bursts of steps:** The spec’s "dwell" is defined as "silence window that stays open as long as encoder pulses are detected." So every new pulse resets the "last move" time; the 40 ms countdown only starts after the **last** pulse. That matches any step size and any repeat count: one bloom per "tuning gesture."

- **Edge case:** If the user changes volume while tuning, we must define whether AIE’s target is the previous user volume or the new one. Recommendation: AIE target = user’s `SetVolume` at the moment the bloom **starts** (or at last encoder pulse), so that mid-dwell volume changes don’t cut off the bloom early; optional refinement is to clamp the bloom target to the latest user volume when we’re in the bloom phase.

---

## 4. Implementation Approach

### 4.1 State Machine (Conceptual)

- **Idle:** Volume = user volume; no suppression.
- **Drop (0 → \(T_{drop}\)):** On first encoder move, drive volume to 0 (or −60 dB) over 5 ms. Spec favours "raw volume register" rather than `setMute()` so we can ramp.
- **Dwell:** Keep volume at 0. While encoder pulses keep arriving, keep resetting "last move" timestamp. No bloom yet.
- **Bloom:** When `(now - lastMove) > T_{dwell}` (40 ms), start sigmoid ramp from 0 to \(V_{target}\) over 150 ms. After that, transition back to Idle.

So: **one** state machine driven by encoder activity and time; step size does not appear in the state machine.

### 4.2 Trigger and Timing

- **ISR:** On each encoder **step** (direction already decoded), set a volatile `isTuning` (or "encoder just moved") and update a volatile `lastMoveTimeUs` using `esp_timer_get_time()`. Keep the rest of the ISR minimal; no I2C or heavy work in ISR.
- **Drop:** As soon as the envelope manager sees "encoder moved," it applies the 5 ms drop (either 5× 1 ms steps of volume down, or a short linear/sigmoid ramp to 0). Current code has no 1 ms tick; we’d add either an **esp_timer 1 ms periodic callback** or a **high-priority task** that runs every 1 ms (e.g. blocking on a 1 ms delay or a timer semaphore). That task drives the envelope (drop → dwell → bloom).
- **Dwell:** Envelope task compares `esp_timer_get_time()` with `lastMoveTimeUs`; if difference &lt; 40 ms, stay in dwell (volume = 0). Any new encoder pulse updates `lastMoveTimeUs`, so the 40 ms window extends.
- **Bloom:** When `(now - lastMoveTimeUs) > 40 ms`, compute volume from the sigmoid LUT (see below) and apply it every 1 ms until volume reaches the user’s target; then Idle.

### 4.3 Sigmoid LUT

- Precompute \(V_{out}(t)\) for \(t \in [0, 150]\) ms at 1 ms resolution. Normalize so that at \(t=0\) we have 0 (or near 0) and at \(t=150\) we have 1.0; then map to SI4735 volume range (0–63). Store as a 151-entry LUT (e.g. `uint8_t aie_bloom_lut[151]`). At runtime, index by elapsed bloom time; interpolate if we want sub-ms later.
- Choice of \(k\) and \(t_0\): e.g. \(t_0 = 75\) ms (midpoint), \(k\) such that the curve is smooth (e.g. 0.05–0.08 per ms). Tune by ear so the sound doesn’t "jump" at the start or end of the bloom.

### 4.4 Bypassing setMute() / Using "Raw" Volume

- **Spec says:** Bypass standard `setMute()` in favour of raw volume register manipulation. So during AIE we don’t call `setAudioMute(1)`; we drive volume to 0 (or very low) and then ramp via the LUT.
- **SI4735:** Volume is typically one register (e.g. RX_VOLUME). The Arduino SI4735 library usually wraps this in `setVolume()`. So we have two options:
  1. **Use setVolume() only:** Envelope task calls `g_rx.setVolume(0)` for drop/dwell and `g_rx.setVolume(aie_bloom_lut[i])` during bloom. That is "logical" raw control without touching I2C registers directly. No library change.
  2. **True raw register:** If the library exposes a way to write the volume register directly (or we add a small extension), we can use that for consistency with the spec wording. Not strictly necessary for the effect.

Important: **user mute** (button) should still use the existing `setMuted()` path; AIE only overrides volume during the tuning envelope. When AIE is Idle, `g_state.radio.volume` and `applyMuteState()` remain the source of truth.

### 4.5 Multi-Core and I2C Constraint

- **Spec:** Core 0 = envelope (1 ms volume ramping); Core 1 = encoder, I2C frequency, UI.
- **Constraint (from existing analysis):** All SI4735 / I2C access must stay on one core to avoid bus contention and NACKs. So we cannot have Core 0 and Core 1 both calling `g_rx.*` whenever they like.

**Two viable patterns:**

- **A) Envelope on Core 0, volume commands serialized:**  
  Core 0 runs the 1 ms envelope task and computes the desired volume. It does **not** call I2C itself; it writes the desired volume into a shared variable (e.g. `aie_current_volume` with a flag `aie_owns_volume`). Core 1 in `loop()` (or in `radio::apply()` / a dedicated radio task) checks: if `aie_owns_volume`, apply `aie_current_volume` to the SI4735 (e.g. `setVolume(aie_current_volume)`), else apply `state.radio.volume`. So only Core 1 touches I2C; Core 0 only does math and writes shared state. Granularity is then limited by how often Core 1 runs (currently every loop iteration, e.g. 50–80 ms for UI refresh, but we could run a faster "radio tick" or a dedicated 1 ms task on Core 1 that only does volume update when AIE is active). To get true 1 ms granularity, Core 1 would need a 1 ms timer or high-frequency task that only runs "if AIE active, then setVolume(shared_volume)."

- **B) Envelope and radio on same core:**  
  Keep a single "radio" core. A 1 ms timer (or high-priority task) on that core runs the envelope state machine and, when it needs to change volume, calls `setVolume()` directly. Encoder polling and frequency changes also run on that core (as today). So no I2C from two cores; we give up the spec’s "Core 0 = envelope, Core 1 = VFO" split and instead use one core for both envelope and VFO, with the envelope at higher priority so that volume updates happen every 1 ms. UI could still be on the other core (as in existing dual-core proposals) to keep 60 fps.

Recommendation: **Implement first with (B)** — one core for envelope + VFO + I2C, 1 ms timer or task on that core for the envelope; then, if we want to offload UI to the second core, we can do that without changing AIE. **Option (A)** is viable if we add a 1 ms "volume applicator" on the radio core that reads shared `aie_current_volume` and calls `setVolume()`; then Core 0 can run the envelope without touching I2C.

### 4.6 Integration Points in Code

- **Encoder ISR** (`input_service.cpp`): In the branch where we emit a direction (CW/CCW), add: set `g_aie_last_move_time_us = esp_timer_get_time()` (or equivalent shared variable) and set a flag `g_aie_tuning_active = true`. Keep ISR minimal; no I2C.
- **Envelope task / timer:** New module (e.g. `aie_service` or inside `radio_service`). Every 1 ms: read `g_aie_last_move_time_us` and current time; implement drop → dwell → bloom; write either desired volume to shared memory (Option A) or call `setVolume()` (Option B). When entering Idle, clear `g_aie_tuning_active` and ensure `applyMuteState()` and user volume are restored.
- **apply() / applyRadioState():** When AIE is active (in drop/dwell/bloom), we must not overwrite volume with `state.radio.volume` in the middle of a bloom. So: either (1) in `apply()`, if AIE owns volume, skip the `setVolume(radio.volume)` line, or (2) have AIE set a "don’t touch volume" flag so that apply only updates frequency/mode and leaves volume to the envelope task. Frequency updates (Core 1) continue as today: `changeFrequency()` → `applyRadioState()` → `apply()` → `setFrequency()` etc.; the SI4735 may "chuff" internally but the audio path is already suppressed by AIE.
- **User volume change during bloom:** If the user turns the encoder for volume (e.g. button held) or changes volume by other means, we can set the bloom target to the new user volume at the next envelope tick so that the ramp converges to the right value.

---

## 5. Viability Assessment

### 5.1 Feasibility

| Aspect | Assessment |
|--------|------------|
| **Hardware** | ESP32-S3 dual core and SI4735 are present. No new hardware. |
| **Encoder timing** | Already have ISR; adding a timestamp and a flag is straightforward. `esp_timer_get_time()` is available and suitable for 40 ms / 150 ms timing. |
| **1 ms granularity** | ESP32 supports `esp_timer` (high-res) and FreeRTOS timers. A 1 ms periodic timer or a task blocked on `vTaskDelay(1)` (1 tick, typically 1 ms) is feasible. Slight jitter is acceptable for perceptual smoothness. |
| **Sigmoid LUT** | Simple offline computation; 151 bytes; no runtime cost. |
| **Step-agnostic behaviour** | Already satisfied: tuning path is independent of step; AIE only uses "encoder moved" and "last move time." |

### 5.2 Risks and Mitigations

| Risk | Mitigation |
|------|-------------|
| **I2C from two cores** | Do not call SI4735 from both cores. Use Option (B) or Option (A) with a single "volume applicator" on the radio core. |
| **Library thread-safety** | SI4735 library is not designed for concurrent use. Keep all `g_rx.*` calls on one core (or one task with a mutex if we ever share). |
| **ISR length** | Only write a timestamp and a flag in the ISR; no I2C, no heavy work. |
| **User mute vs AIE** | When user presses mute, set `g_muted` and call `applyMuteState()` as today; AIE should release "volume ownership" so that mute takes effect. When unmuting, AIE can remain Idle. |
| **Seek/scan** | During seek/scan we may already mute or change frequency repeatedly. We can either (1) enable AIE only in Tune mode (encoder VFO tuning) and leave seek/scan as today, or (2) extend AIE to seek/scan so that the same bloom applies after the last frequency change. Spec focuses on "VFO rotation," so (1) is a safe first scope. |

### 5.3 Competitive Advantages (from spec, preserved here)

- **Zero CPU blocking:** With envelope on its own task/timer, the main loop (or UI task) doesn’t block on volume ramps; UI stays responsive.
- **Phase-coherent feel:** 150 ms bloom masks the SI4735’s internal AGC settling, reducing "digital" pops.
- **Energy:** Using `esp_timer` or task delay instead of busy `delay()` allows the CPU to sleep between updates.

### 5.4 Optional Simplification (Single-Thread, No New Core)

If we want to avoid a second task or timer initially:

- In `loop()`, at the start, check `(esp_timer_get_time() - g_aie_last_move_time_us)` and the encoder flag. If we’re in dwell, set volume to 0 before doing any frequency update; if we’re past dwell, run one step of the bloom LUT and set volume. That gives one volume update per loop iteration (e.g. every 10–50 ms depending on load), not true 1 ms. The bloom would be chunkier but might still remove most chuffing. We could then refine to 1 ms later.

---

## 6. Open Questions / Dependencies

1. **SI4735 library:** Confirm whether `setVolume()` is the only volume path or if direct register write is available (e.g. for minimal I2C traffic during ramp).
2. **T_drop 5 ms:** Implement as 5× 1 ms steps (linear or soft curve) from current volume to 0, or as instant drop to 0. Spec says "time taken to reach −60 dB" — 5 ms ramp is more consistent with that.
3. **Scope:** Limit AIE to Tune mode (encoder VFO) only, or also apply to seek/scan stop and ETM navigation; document in a follow-up.
4. **User volume range:** SI4735 volume 0–63; ensure LUT maps to the same range and that "0" is used for drop/dwell (or a very low value if 0 causes issues on the chip).

---

## 7. Summary

- **Implementation:** Add an encoder "last move" timestamp and tuning flag in the ISR; add a 1 ms envelope (state machine: drop → dwell → bloom) using a sigmoid LUT; drive volume to 0 during drop/dwell and ramp with the LUT during bloom; keep all I2C on one core (envelope either on same core as VFO or writing to shared volume consumed by the radio core).
- **Any step level:** AIE is independent of tuning step (FM/AM/SSB, any kHz or BFO step). It only reacts to encoder events and time; one dwell and one bloom per tuning gesture.
- **Viability:** High, provided we respect single-core (or serialized) I2C and keep the ISR light. A single-core 1 ms envelope (Option B) is the lowest-risk first step; dual-core (Option A) is viable with a dedicated volume applicator on the radio core.

No code changes were made in this document; it is a plan and viability assessment only.
