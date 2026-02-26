# Acoustic Inertia Engine (AIE) — Combined Implementation Plan

**Document Version:** 2.2  
**Date:** 2026-02-22  
**Status:** Implemented & Tested  

---

## 1. Executive Summary

The Acoustic Inertia Engine (AIE) eliminates digital "chuffing" and switching transients during VFO rotation on the ATS-Mini UNLTD. This document combines the implementation assessment with the viability analysis and records the implemented, tested configuration.

**Verdict:** ✅ **Implemented & Tested** — AIE is in firmware (Phase 1 + Phase 2 + anti-click refinements). On-device testing confirms it does a good job; the combined configuration (adaptive dwell, bloom pre-charge, soft drop) was validated as best.

---

## 2. AIE Specification 1.0

### 2.1 Timing Parameters

| Parameter | Symbol | Value | Meaning |
|-----------|--------|-------|---------|
| Drop (mute) | \(T_{drop}\) | **Instant** (0 ms) | Use hardware/library mute for immediate silence (no I2C volume ramp). |
| Sustain / dwell | \(T_{dwell}\) | 40 ms | Silence window; stays open while encoder pulses are detected |
| Bloom (release) | \(T_{bloom}\) | 150 ms | Sigmoid ramp-up after last encoder pulse |

**Note:** Original spec had 5 ms volume ramp for DROP. Revised approach: use `setAudioMute(1)` (and thus the mute pin) for **instant** DROP, then sigmoid bloom via `setVolume()` for release. This avoids 5 ms I2C timing concerns and is more reliable.

**As implemented (validated):** Optional 2 ms soft drop (micro-fade) before mute; adaptive dwell (FM 65 ms, AM/SSB 40 ms); 2 ms bloom pre-charge + min volume 2 for anti-click. See §17.

### 2.2 Mathematical Model

Volume recovery uses a sigmoid for an "analog" feel:

$$V_{out}(t) = V_{target} \cdot \left( \frac{1}{1 + e^{-k(t - t_0)}} \right)$$

Where:
- \(k = 0.05\) (steepness factor)
- \(t_0 = 75ms\) (midpoint of 150ms bloom)
- \(t \in [0, 150ms]\)

### 2.3 Functional Requirements

| Requirement | Description | Priority |
|-------------|-------------|----------|
| FR-1 | Instant mute (DROP) on encoder movement; no I2C ramp | Critical |
| FR-2 | Dwell period while encoder active (40ms) | Critical |
| FR-3 | Sigmoid bloom ramp-up (150ms) | Critical |
| FR-4 | Non-blocking UI during tuning | High |
| FR-5 | Works at all step sizes (1kHz, 5kHz, 9kHz, 10kHz, 20kHz) | High |
| FR-6 | No impact on seek/scan operations | Medium |

### 2.4 AIE Activation Gate (Required)

AIE must **only** run when the user is actually VFO tuning, not when rotating in Quick Edit (Band/Mode/etc.) or in other layers:

```cpp
// AIE is active only when:
bool shouldActivateAIE(const app::AppState& state) {
  return state.ui.layer == app::UiLayer::NowPlaying &&
         state.ui.operation == app::OperationMode::Tune;
}
```

- **NowPlaying + Tune:** Encoder rotation calls `changeFrequency()` — AIE runs.
- **Quick Edit / Settings / Seek / Scan:** Encoder does other things — AIE must not run.

---

## 3. Current Architecture Analysis

### 3.1 Single-Core Event Loop (Current State)

The firmware currently operates on a single core (Arduino `loop()` on Core 1):

```
┌─────────────────────────────────────────────────────────────┐
│                        CORE 1 (Main Loop)                    │
├─────────────────────────────────────────────────────────────┤
│  loop() {                                                    │
│    services::input::tick()         // Button polling        │
│    handleRotation()                // Process encoder delta  │
│    changeFrequency() → applyRadioState()                    │
│    services::radio::apply()        // I2C freq command      │
│    services::ui::render()          // Display update         │
│    delay(5)                        // Yield to WiFi/BT      │
│  }                                                           │
└─────────────────────────────────────────────────────────────┘
```

**Key Files:**
- `src/main.cpp` — Main loop, frequency change handlers
- `src/services/input_service.cpp` — Rotary encoder ISR
- `src/services/radio_service.cpp` — SI4735 interface

### 3.2 Encoder Handling (Current)

The encoder uses a state machine ISR (`onEncoderChange()`) that:
- Runs on **CHANGE** interrupt on pins A and B
- Accumulates `g_encoderDelta` and `g_encoderDeltaAccel`
- Applies acceleration factors based on rotation speed
- Sets `g_abortRequested` flag for canceling seek/scan

**Location:** `src/services/input_service.cpp:75-92`

```cpp
void IRAM_ATTR onEncoderChange() {
  const uint8_t pinState = (digitalRead(hw::kPinEncoderB) << 1) | digitalRead(hw::kPinEncoderA);
  g_rotaryState = kRotaryTable[g_rotaryState & 0x0F][pinState];
  const uint8_t emit = g_rotaryState & 0x30;

  if (emit == kDirCw || emit == kDirCcw) {
    const int8_t dir = emit == kDirCw ? 1 : -1;
    // ... accumulation logic ...
    g_abortRequested = true;
  }
}
```

### 3.3 Volume Control (Current)

Volume is controlled via SI4735 I2C commands:
- **API:** `g_rx.setVolume(uint8_t volume)` where `volume` is 0-63
- **Called from:** `services::radio::apply()` in `radio_service.cpp`
- **Current behavior:** Volume set only when changed; no ramping

### 3.4 Mute Control (Current)

Two mute mechanisms exist:
1. **SI4735 Digital Mute:** `g_rx.setAudioMute(1/0)` — mutes audio internally; the library also drives `hw::kPinAudioMute` when configured via `setAudioMuteMcuPin()`.
2. **Hardware Mute Pin:** `hw::kPinAudioMute` (GPIO 3) — external amp mute (library-controlled when `setAudioMuteMcuPin()` is used).

**Current behavior:** Mute is binary (on/off), no soft transitions. For AIE DROP, use `setAudioMute(1)` for instant silence (no 5 ms I2C volume ramp); the mute pin then gives fast hardware silence.

---

## 4. Step Size Compatibility Analysis

The AIE must work correctly at all tuning step sizes:

| Step Size | Use Case | Tuning Speed | AIE Behavior |
|-----------|----------|--------------|--------------|
| 1 kHz | SSB fine tuning | Slow | Normal bloom |
| 5 kHz | SW broadcast | Medium | Normal bloom |
| 9 kHz | MW (EU) | Medium | Normal bloom |
| 10 kHz | MW (US), FM | Medium | Normal bloom |
| 20 kHz | FM fast scan | Fast | Bloom still completes |

**Key Insight:** The 40ms dwell timer resets on each encoder pulse, so continuous fast tuning keeps the volume suppressed. The bloom only begins after tuning stops.

**Step level is irrelevant to AIE.** The engine reacts to **rotation events** (and their timestamp), not to the size of the frequency step.

---

## 5. Implementation Approach

### 5.1 State Machine

```
┌─────────────────────────────────────────────────────────────────────┐
│                      AIE STATE MACHINE                                │
├─────────────────────────────────────────────────────────────────────┤
│                                                                      │
│    ┌──────────┐    encoder move    ┌──────────┐                     │
│    │          │ ─────────────────► │          │                     │
│    │   IDLE   │                    │   DROP   │                     │
│    │          │ ◄───────────────── │          │                     │
│    └──────────┘    bloom done      └──────────┘                     │
│         ▲                                   │                        │
│         │                                   ▼                        │
│         │                      ┌──────────────────┐                  │
│         │                      │                  │                   │
│         │                      │      DWELL       │◄─────────────────┤
│         │                      │                  │  encoder moves   │
│         │                      └──────────────────┘  (reset timer)   │
│         │                                  │                         │
│         │                     time > 40ms │                         │
│         │                                  ▼                         │
│         │                      ┌──────────────────┐                  │
│         │                      │                  │                   │
│         │                      │      BLOOM       │──────────────────┘
│         │                      │  (sigmoid ramp)  │  bloom complete
│         │                      │                  │
│         │                      └──────────────────┘
│         │
│         └──────────────────────────────────────┘
│
│ States:
│ - IDLE:  Normal operation, volume = user target
│ - DROP:  Instant mute (setAudioMute(1)) — no I2C volume ramp
│ - DWELL: Volume = 0 (mute held), wait 40ms (T_dwell) for encoder to stop
│ - BLOOM: setAudioMute(0) then sigmoid volume ramp 0→target over 150ms (T_bloom)
└─────────────────────────────────────────────────────────────────────┘
```

- **Idle:** Volume = user volume; no suppression.
- **Drop:** On first encoder move (when AIE is active), apply **instant** mute via `setAudioMute(1)` (and thus the mute pin). No 5 ms volume ramp.
- **Dwell:** Keep mute on. While encoder pulses keep arriving, keep resetting "last move" timestamp. No bloom yet.
- **Bloom:** When `(now - lastMove) > T_{dwell}` (40 ms), call `setAudioMute(0)` then sigmoid ramp volume from 0 to \(V_{target}\) over 150 ms. After that, transition back to Idle.

### 5.2 Execution Model: Single-Thread First (Option C), Then Optional Task (Option B)

**Option C (Recommended First):** Single-threaded — AIE driven from main loop

- No new FreeRTOS task. In `loop()`, call `services::aie::tick(g_state)` once per iteration (e.g. after `handleRotation()` or at a defined point).
- AIE state machine runs one step per loop: read `esp_timer_get_time()` and last-move timestamp; if in DWELL, keep mute; if past DWELL, advance bloom LUT and call `radio::applyVolumeOnly(lut_value)`.
- **Resolution:** One volume update per loop (typically every 5 ms when `delay(5)`). Bloom is coarser (~30 steps over 150 ms) but removes most chuffing and fits the existing architecture (no second task, no mutex).
- **Drop:** In the path that leads to `changeFrequency()`, call `aie::notifyTuning()` **before** `changeFrequency()`. That call does **synchronous** instant mute (`setAudioMute(1)`) so volume is down before any `setFrequency()` I2C.

**Option B (Optional Later):** Envelope task on Core 1 (same core as loop)

- Dedicated task or 1 ms `esp_timer` drives the envelope for true 1 ms resolution.
- **Critical:** Two execution contexts (loop and task) both use `g_rx` (I2C). Use a **mutex** around all SI4735 access (or a single “radio executor”) so only one context runs `g_rx.*` at a time.
- Envelope must **not** use a blocking `while (elapsed < 40ms)`; instead, each tick re-read `now` and `lastMoveTimeUs`, and only transition DWELL→BLOOM when `(now - lastMoveTimeUs) >= 40 ms`.

**Option A (Future):** Core 0 for envelope, Core 1 for VFO with serialized volume commands.

### 5.3 Trigger, Timing, and Ordering

**Timing source:** Use **`esp_timer_get_time()`** (microseconds) for all AIE timing (last-move timestamp, dwell comparison, bloom index). Do not rely on `millis()` for envelope logic. (Note: the existing encoder ISR uses `millis()` inside `accelerateEncoder()` — that remains unchanged; AIE uses its own µs timestamp.)

**When to notify AIE (and ensure drop-before-frequency):**

- AIE must be notified only when we are **about to** change frequency (Tune + NowPlaying), and **volume must drop before** `setFrequency()` runs.
- **Recommended:** Notify from **main**, not from the ISR. In `handleNowPlayingRotation()`, when `operation == Tune` and we have encoder delta, **before** calling `changeFrequency()`:
  1. If `shouldActivateAIE(g_state)`, call `aie::notifyTuning()` (or equivalent) which (a) updates last-move timestamp and (b) performs **synchronous instant mute** (`setAudioMute(1)` or equivalent) so the audio path is suppressed before any I2C frequency change.
  2. Then call `changeFrequency()` → `applyRadioState()` → `radio::apply()`.
- **Last-move timestamp:** Set in `notifyTuning()` (or in the ISR if we keep a shared `g_aie_last_move_time_us` updated from main when we call `notifyTuning()`). For dwell extension: each time we're about to call `changeFrequency()` again, call `notifyTuning()` again so the timestamp resets; the envelope logic (tick or task) then keeps DWELL until 40 ms have passed since that last call.

**Dwell/Bloom (tick-based, no blocking loop):**

- Each envelope step (loop iteration or 1 ms task tick): read `now = esp_timer_get_time()` and volatile `lastMoveTimeUs`. If `(now - lastMoveTimeUs) < 40 ms`, remain in DWELL (mute on). Otherwise, advance BLOOM: compute LUT index from elapsed bloom time, call `applyVolumeOnly(lut_value)` (or set volume then release mute when reaching target). Do **not** block in a `while (elapsed < 40ms)`; always one state-machine step per tick.

---

## 6. Sigmoid LUT Implementation

Pre-computed Look-Up Table avoids runtime math:

```cpp
// src/services/aie_engine.cpp

// 150-entry LUT for sigmoid curve (1ms per entry)
// Values normalized to 0-63 range
static const uint8_t kSigmoidLut[150] = {
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,      // 0-9ms: near-silent
  0, 0, 0, 0, 0, 1, 1, 1, 1, 2,      // 10-19ms: soft start
  2, 2, 3, 3, 4, 5, 6, 7, 8, 9,      // 20-29ms: acceleration
  10, 12, 14, 16, 18, 20, 22, 25,    // 30-37ms: building
  28, 31, 34, 37, 40, 43, 46, 49,    // 38-45ms: approaching midpoint
  51, 53, 55, 57, 58, 59, 60, 60,    // 46-53ms: curve inflection
  61, 61, 62, 62, 62, 62, 63, 63,    // 54-61ms: leveling
  63, 63, 63, 63, 63, 63, 63, 63,    // 62-69ms: plateau
  // ... (remaining entries stay at 63)
};
```

**LUT Generation Formula:**

```python
import math

def sigmoid_lut(size=150, max_val=63):
    k = 0.05
    t0 = size / 2
    lut = []
    for t in range(size):
        val = max_val / (1 + math.exp(-k * (t - t0)))
        lut.append(int(round(val)))
    return lut
```

---

## 7. New Files Required

| File | Purpose |
|------|---------|
| `include/aie_engine.h` | AIE public interface |
| `src/services/aie_engine.cpp` | AIE implementation |

### 7.1 Interface Design

```cpp
// include/aie_engine.h
#pragma once

#include <stdint.h>
#include "app_state.h"  // for AppState in tick() and shouldActivateAIE()

namespace services::aie {

// Configuration constants (DROP is instant mute; no kDropMs ramp)
inline constexpr uint16_t kDwellMs = 40;
inline constexpr uint16_t kBloomMs = 150;
inline constexpr uint8_t kMinVolume = 0;
inline constexpr uint8_t kMaxVolume = 63;

// Initialize AIE (Option C: no task; Option B: creates task on Core 1)
void begin();

// Call once per loop iteration (Option C). Advances state machine one step.
void tick(const app::AppState& state);

// Call from main when about to change frequency (Tune + NowPlaying).
// Updates last-move timestamp and performs synchronous instant mute (DROP).
// Must be called *before* changeFrequency() so volume is down before setFrequency().
void notifyTuning();

// Called when user changes volume (updates target for bloom)
void setTargetVolume(uint8_t volume);

// Get current AIE volume (for display)
uint8_t getCurrentVolume();

// Check if AIE is currently in envelope phase
bool isEnvelopeActive();

// Check if AIE owns volume control (for apply path — skip volume only)
bool ownsVolume();

// True only when AIE should run (Tune + NowPlaying). Used by main before notifyTuning().
bool shouldActivateAIE(const app::AppState& state);

}  // namespace services::aie
```

**Optional (if keeping ISR notification for dwell extension):** `void IRAM_ATTR notifyEncoderActivity()` — only sets volatile `g_aie_last_move_time_us = esp_timer_get_time()`. Use only if AIE is not gated by UI state in main; otherwise last-move time is set in `notifyTuning()`.

---

## 8. Integration Points

### 8.1 handleRotation() and Drop-Before-Frequency

AIE must intercept **before** frequency change. The only path that calls `changeFrequency()` is:

`handleRotation()` → `handleNowPlayingRotation()` (when layer == NowPlaying) → `changeFrequency()` (when operation == Tune).

**Integration in main.cpp:**

```cpp
// handleNowPlayingRotation()
void handleNowPlayingRotation(int8_t direction, int8_t repeats) {
  switch (g_state.ui.operation) {
    case app::OperationMode::Tune:
      // Activate AIE only when actually VFO tuning
      if (services::aie::shouldActivateAIE(g_state)) {
        services::aie::notifyTuning();  // instant mute + last-move timestamp
      }
      changeFrequency(direction, repeats);
      break;
    // ... Seek, Scan ...
  }
}
```

No change to the encoder ISR for AIE notification when using main-driven gating; last-move time is set in `notifyTuning()` each time we're about to tune.

### 8.2 Main Loop Integration

```cpp
// src/main.cpp

void setup() {
  // ... existing ...
  services::aie::begin();
  // After radio ready, set initial AIE target
  services::aie::setTargetVolume(g_state.radio.volume);
}

void loop() {
  // ... syncContext, input::tick, handleButtonEvents ...
  handleRotation(services::input::consumeEncoderDelta());

  // Option C: one AIE state-machine step per loop
  services::aie::tick(g_state);

  // ... etm/seekscan, radio::tick, rds, clock, settings ...
  // ... render, delay ...
}

void changeVolume(int8_t direction, int8_t repeats) {
  // ... existing volume logic ...
  services::aie::setTargetVolume(g_state.radio.volume);
}
```

### 8.3 Radio Service: Volume Seam and ownsVolume()

**Clarification:** When AIE owns volume, we only **skip** applying volume in `apply()`; all other I2C (frequency, BFO, bandwidth, AGC, etc.) still run. To keep responsibilities clear, add a dedicated volume path. Declare in `include/app_services.h` and implement in `radio_service.cpp`:

```cpp
// app_services.h — add to namespace radio:
void applyVolumeOnly(uint8_t volume);

// radio_service.cpp — implementation
void applyVolumeOnly(uint8_t volume) {
  if (!g_ready) return;
  g_rx.setVolume(volume);
}

void apply(const app::AppState& state) {
  // ... existing full reconfigure and incremental frequency/BFO/step logic ...

  // Apply volume only when AIE does not own it
  if (!services::aie::ownsVolume()) {
    if (radio.volume != g_lastApplied.volume) {
      g_rx.setVolume(radio.volume);
    }
  }
  // When AIE owns volume, the envelope calls applyVolumeOnly() during bloom.
  g_lastApplied = radio;
  // ...
}
```

AIE bloom phase calls `services::radio::applyVolumeOnly(lut_value)` (and releases mute when appropriate). User mute (`g_muted`): when entering BLOOM, if user is muted, ramp to 0 and leave mute on; do not override user mute.

---

## 9. Visibility Assessment

### 9.1 Components with Full Visibility ✅

| Component | File(s) | Status |
|-----------|---------|--------|
| Encoder ISR | `input_service.cpp` | Full access |
| Volume API | `radio_service.cpp` | Full access |
| SI4735 object | `radio_service.cpp` | Can add methods |
| State machine | `app_state.h` | Full access |
| Timing constants | `app_config.h` | Can extend |
| Hardware pins | `hardware_pins.h` | Full access |

### 9.2 Components Requiring Extension

| Component | Current State | Required Change |
|-----------|---------------|-----------------|
| SI4735 library | External dependency | May need `setVolumeDirect()` method |
| FreeRTOS config | Not configured | Must enable in `platformio.ini` |
| Core affinity | Not used | Must add task creation |

### 9.3 Potential Visibility Issues ⚠️

1. **SI4735 I2C Timing:** The SI4735 library may have internal delays. Using instant mute for DROP avoids 5 ms I2C ramp timing.

2. **FreeRTOS (Option B only):** If adding an envelope task, consider `esp_timer` for 1 ms period instead of changing global `CONFIG_FREERTOS_HZ`; otherwise 1 ms resolution requires `CONFIG_FREERTOS_HZ=1000` and higher scheduler overhead.

3. **ISR:** AIE uses `esp_timer_get_time()` for last-move timestamp (µs, ISR-safe). Existing encoder ISR uses `millis()` in `accelerateEncoder()` — unchanged; no AIE call required in ISR when using main-driven `notifyTuning()`.

---

## 10. Risk Assessment and Mitigations

### 10.1 Technical Risks

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| I2C latency exceeds 1ms budget | Medium | High | Pre-compute volume values, batch I2C |
| Audio pops from SI4735 internal AGC | Low | Medium | Bloom timing masks AGC settling |
| FreeRTOS scheduler jitter | Low | Medium | Use `vTaskDelayUntil()` for precise timing |
| UI lag during rapid tuning | Low | Low | Core isolation prevents this |
| **I2C from two cores (bus contention)** | Medium | High | **Use Option B (single core)** - keep all I2C on one core |
| **Library thread-safety** | Medium | High | Keep all `g_rx.*` calls on one task |

### 10.2 User Experience Risks

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Bloom too slow for user preference | Medium | Low | Make timing configurable |
| Unnatural feel | Low | Medium | Fine-tune sigmoid parameters |
| Interference with mute button | Low | Medium | Check `g_muted` state before bloom |

### 10.3 Critical I2C Handling

**Must follow these rules:**
1. All SI4735 I2C calls must occur on **one core only**
2. If using Option B (task): use a **mutex** (or single executor) around all `g_rx.*` calls so loop and envelope task never run them concurrently
3. If using Option A (future): add a dedicated "volume applicator" on the radio core that reads shared `aie_current_volume`
4. Never call `g_rx.*` from both cores simultaneously

### 10.4 Concerns Addressed in This Revision

| Concern | Resolution in plan |
|--------|---------------------|
| **1 ms vs loop delay** | Option C (tick from loop): one update per iteration (~5 ms). Option B (task): true 1 ms from task/timer. Documented in §5.2. |
| **ISR / millis()** | AIE uses `esp_timer_get_time()` for all envelope timing. Encoder ISR unchanged; no AIE call in ISR when using main-driven notify. |
| **Drop before frequency** | `notifyTuning()` called from main **before** `changeFrequency()`, with synchronous instant mute so volume is down before any `setFrequency()`. §5.3, §8.1. |
| **UI gating** | `shouldActivateAIE(state)` — Tune + NowPlaying only. §2.4, §8.1. |
| **Volume ownership** | `ownsVolume()` only skips the volume line in `apply()`; other I2C unchanged. `applyVolumeOnly()` added as clear seam. §8.3. |
| **Instant DROP** | DROP uses `setAudioMute(1)` (and mute pin) for instant silence; no 5 ms I2C ramp. Bloom via `setVolume()` LUT. §2.1, §3.4, §5.1. |

---

## 11. Implementation Complexity Estimate

| Phase | Effort | Dependencies |
|-------|--------|--------------|
| Core task scaffolding | 2 hours | None |
| Volume ramp logic | 4 hours | SI4735 API |
| Sigmoid LUT generation | 1 hour | None |
| ISR integration | 2 hours | None |
| State management | 2 hours | None |
| Testing & tuning | 4 hours | Hardware |
| **Total** | **15 hours** | |

---

## 12. Alternative Approaches

### 12.1 Instant Mute for DROP (Adopted)

The plan **adopts** instant mute for DROP: call `setAudioMute(1)` when entering the envelope (in `notifyTuning()`). The SI4735 library drives `hw::kPinAudioMute` when so configured, giving immediate hardware silence. No 5 ms I2C volume ramp. Release with `setAudioMute(0)` at bloom start, then sigmoid volume ramp. This is the recommended implementation.

### 12.2 SI4735 Soft Mute Feature

The SI4735 has built-in soft mute (`RX_SOFT_MUTE_MAX_ATTENUATION`). This could be leveraged:

```cpp
g_rx.setAmSoftMuteMaxAttenuation(32);  // Max soft mute
// Tune happens while soft mute active
g_rx.setAmSoftMuteMaxAttenuation(0);   // Release
```

**Pros:** Hardware-accelerated  
**Cons:** Not tunable, doesn't apply to FM

### 12.3 Single-Thread Option C (Recommended First)

See §5.2 Option C: AIE driven from `loop()` via `aie::tick(g_state)`. One state-machine step per iteration; bloom has ~30 steps over 150 ms with `delay(5)`. No FreeRTOS task, no mutex; fits existing architecture. Implement this first; add Option B (task) later if finer resolution is needed.

---

## 13. Configuration Options

Add to `app_config.h` (or keep in `aie_engine.h`):

```cpp
namespace aie {
inline constexpr uint16_t kDwellMs = 40;
inline constexpr uint16_t kBloomMs = 150;
inline constexpr float kSigmoidK = 0.05f;
}  // namespace aie
```

(DROP is instant mute; no timing constant.)

---

## 14. Future Enhancements

1. **User-tunable timing:** Expose timing parameters in Quick Edit
2. **Curve selection:** Linear, sigmoid, or exponential options
3. **Per-band profiles:** Different AIE behavior for FM vs. SSB
4. **Dual-core Option A:** If needed, migrate envelope to Core 0 with serialized volume commands

---

## 15. Implementation Checklist

**Phase 1 — Option C (single-thread, recommended first):**
- [x] Create `include/aie_engine.h` — AIE interface (`begin`, `tick`, `notifyTuning`, `setTargetVolume`, `ownsVolume`, `shouldActivateAIE`, etc.)
- [x] Create `src/services/aie_engine.cpp` — state machine (IDLE/DROP/DWELL/BLOOM), instant mute in `notifyTuning()`, sigmoid LUT, `esp_timer_get_time()` for timing
- [x] Add `services::radio::applyVolumeOnly(uint8_t)` and `setAieMuted(bool)` in `radio_service.cpp`
- [x] In `apply()` and full reconfigure path, skip volume when `services::aie::ownsVolume()`; other I2C unchanged
- [x] In `handleNowPlayingRotation()`, when Tune: if `shouldActivateAIE(g_state)` call `notifyTuning()` **before** `changeFrequency()`
- [x] In `loop()`, call `services::aie::tick(g_state)` once per iteration
- [x] In `setup()`, call `aie::begin()` after radio ready; in `changeVolume()`, call `setTargetVolume()`
- [x] Respect user mute in BLOOM (if `state.ui.muted`, ramp to 0 and leave mute on)

**Phase 2 — Optional (Option B task):**
- [x] Add `esp_timer` for 1 ms envelope; mutex around all `g_rx.*` in radio service
- [x] Envelope tick: re-read `now` and `lastMoveTimeUs` each tick; no blocking `while (elapsed < 40ms)`

**Testing:**
- [x] Test with all step sizes (1 kHz, 5 kHz, 9 kHz, 10 kHz, 20 kHz)
- [x] Test with all modulation modes (FM, AM, SSB)
- [x] Verify AIE only runs when Tune + NowPlaying (not in Quick Edit / Seek / Scan)
- [x] Verify user mute button still works and is not overridden by bloom

---

## 16. Summary

- **Implementation:** AIE runs only when **Tune + NowPlaying** (`shouldActivateAIE`). Main calls `notifyTuning()` **before** `changeFrequency()` to perform **instant mute** (DROP) and set last-move timestamp. Envelope state machine: DROP (instant mute) → DWELL (40 ms) → BLOOM (sigmoid volume ramp 150 ms) → IDLE. Use **`esp_timer_get_time()`** for all timing. **Option C first:** drive envelope from `loop()` via `aie::tick(g_state)` — one step per iteration, no new task. **Option B optional:** dedicated task/timer for 1 ms resolution, with mutex around SI4735 access.
- **Volume:** When AIE owns volume, `apply()` skips only the volume write; other I2C (frequency, BFO, etc.) unchanged. AIE uses `radio::applyVolumeOnly()` during bloom.
- **Any step level:** AIE is independent of tuning step; one dwell and one bloom per tuning gesture.
- **Viability:** High. Single-thread Option C fits existing architecture; Option B requires mutex if a task is added.

---

## 17. Implemented & Tested (2026-02-22)

**Status:** AIE is implemented and on-device tested. Behaviour is good; the following configuration was validated as best and is on `main`.

**Implemented:**
- Phase 1 (single-thread) and Phase 2 (1 ms `esp_timer` envelope + radio mutex).
- Anti-click refinements (tested as three single-feature variants plus combined):
  - **Adaptive dwell:** FM 65 ms, AM/SSB 40 ms (FM PLL/stereo needs longer to settle).
  - **Bloom pre-charge:** 2 ms with mute on, volume 1, then unmute; avoids hard 0→1 step.
  - **Anti-click min volume:** First bloom step ≥ 2 (no 0→1 pop).
  - **Soft drop:** 2 ms micro-fade (current → half → 0) before mute to avoid “mute slam”.

**Current constants** (`include/aie_engine.h`): `kDwellMs = 40`, `kDwellFmMs = 65`, `kBloomMs = 150`, `kPrechargeMs = 2`, `kBloomMinVolume = 2`, `kSoftDropMs = 2`.

**Files:** `include/aie_engine.h`, `src/services/aie_engine.cpp`; radio: `applyVolumeOnly()`, `setAieMuted()`, mutex around all SI4735 access.

---

**Document Status:** Combined Implementation Plan v2.2 — Implemented, tested, and validated. Configuration above is the chosen production setup.
