# Acoustic Inertia Engine (AIE) — Implementation Assessment

**Document Version:** 1.0  
**Date:** 2026-02-22  
**Author:** Engineering Analysis  
**Status:** Planning / No Implementation

---

## 1. Executive Summary

The Acoustic Inertia Engine (AIE) is a proposed feature to eliminate digital "chuffing" and switching transients during VFO rotation on the ATS-Mini UNLTD. This document assesses the technical feasibility, visibility into required components, and provides a detailed implementation plan.

**Verdict:** ✅ **Technically Feasible** — All required components are accessible and the ESP32-S3 dual-core architecture is well-suited for this feature.

---

## 2. Current Architecture Analysis

### 2.1 Single-Core Event Loop (Current State)

The firmware currently operates on a single core (Arduino `loop()` on Core 1):

```
┌─────────────────────────────────────────────────────────────┐
│                        CORE 1 (Main Loop)                    │
├─────────────────────────────────────────────────────────────┤
│  loop() {                                                    │
│    services::input::tick()         // Button polling        │
│    handleRotation()                // Process encoder delta │
│    changeFrequency() → applyRadioState()                    │
│    services::radio::apply()        // I2C freq command      │
│    services::ui::render()          // Display update        │
│    delay(5)                        // Yield to WiFi/BT      │
│  }                                                           │
└─────────────────────────────────────────────────────────────┘
```

**Key Files:**
- `src/main.cpp` — Main loop, frequency change handlers
- `src/services/input_service.cpp` — Rotary encoder ISR
- `src/services/radio_service.cpp` — SI4735 interface

### 2.2 Encoder Handling (Current)

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

### 2.3 Volume Control (Current)

Volume is controlled via SI4735 I2C commands:
- **API:** `g_rx.setVolume(uint8_t volume)` where `volume` is 0-63
- **Called from:** `services::radio::apply()` in `radio_service.cpp`
- **Current behavior:** Volume set only when changed; no ramping

```cpp
// radio_service.cpp:348-350
if (radio.volume != g_lastApplied.volume) {
  g_rx.setVolume(radio.volume);
}
```

### 2.4 Mute Control (Current)

Two mute mechanisms exist:
1. **SI4735 Digital Mute:** `g_rx.setAudioMute(1/0)` — mutes audio internally
2. **Hardware Mute Pin:** `hw::kPinAudioMute` (GPIO 3) — external amp mute

**Current behavior:** Mute is binary (on/off), no soft transitions.

---

## 3. AIE Requirements Analysis

### 3.1 Functional Requirements

| Requirement | Description | Priority |
|-------------|-------------|----------|
| FR-1 | Volume ramp-down on encoder movement (5ms to -60dB) | Critical |
| FR-2 | Dwell period while encoder active (40ms) | Critical |
| FR-3 | Sigmoid bloom ramp-up (150ms) | Critical |
| FR-4 | Non-blocking UI during tuning | High |
| FR-5 | Works at all step sizes (1kHz, 5kHz, 9kHz, 10kHz, 20kHz) | High |
| FR-6 | No impact on seek/scan operations | Medium |

### 3.2 Timing Parameters

```
┌────────────────────────────────────────────────────────────────────┐
│                     AIE TIMING DIAGRAM                              │
├────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  Encoder Pulse:  ▂▔▂▔▂▔▂▔▂▔▂                                       │
│                  ↑                                                  │
│                  │                                                  │
│  Volume:    100% ┤     ╭─────╮     ╭────────────────────────────   │
│                  │    ╱       ╲   ╱                                  │
│              0% ─┤──╯         ╰─╯                                    │
│                  │     │←Tdrop→│←Tdwell→│←── Tbloom (150ms) ──→│   │
│                  │       5ms     40ms                               │
│                                                                     │
└────────────────────────────────────────────────────────────────────┘
```

### 3.3 Mathematical Model

**Sigmoid Bloom Function:**

$$V_{out}(t) = V_{target} \cdot \left( \frac{1}{1 + e^{-k(t - t_0)}} \right)$$

Where:
- $k = 0.05$ (steepness factor)
- $t_0 = 75ms$ (midpoint of 150ms bloom)
- $t \in [0, 150ms]$

**Decibel Mapping (SI4735 volume 0-63):**

The SI4735 volume scale is roughly logarithmic. To achieve -60dB:
- Volume 0 = Mute (effectively -∞ dB)
- Volume 1 ≈ -60 dB
- Volume 63 = 0 dB (max)

---

## 4. Implementation Plan

### 4.1 Multi-Core Architecture

The AIE requires FreeRTOS tasks pinned to specific cores:

```
┌─────────────────────────────────────────────────────────────────────┐
│                       CORE 0 (AIE Task)                              │
├─────────────────────────────────────────────────────────────────────┤
│  xTaskCreatePinnedToCore(aieEnvelopeTask, "AIE", 4096, NULL,        │
│                          configMAX_PRIORITIES-1, NULL, 0);          │
│                                                                      │
│  aieEnvelopeTask() {                                                 │
│    while(1) {                                                        │
│      if (isTuning) {                                                 │
│        // Phase 1: DROP (5ms)                                        │
│        rampVolume(targetVolume, 0, 5);                               │
│                                                                      │
│        // Phase 2: DWELL (wait for 40ms idle)                        │
│        while ((now - lastEncoderTime) < 40ms) {                      │
│          vTaskDelay(1);                                              │
│        }                                                             │
│                                                                      │
│        // Phase 3: BLOOM (150ms sigmoid)                             │
│        rampVolumeSigmoid(0, targetVolume, 150);                      │
│        isTuning = false;                                             │
│      }                                                               │
│      vTaskDelay(1);  // 1ms tick                                     │
│    }                                                                 │
│  }                                                                   │
└─────────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────────┐
│                       CORE 1 (Main Loop)                             │
├─────────────────────────────────────────────────────────────────────┤
│  loop() {                                                            │
│    services::input::tick();                                          │
│    handleRotation();        // Sets isTuning flag                    │
│    services::ui::render();  // Runs at 60fps                         │
│    // AIE runs independently on Core 0                               │
│  }                                                                   │
└─────────────────────────────────────────────────────────────────────┘
```

### 4.2 New Files Required

| File | Purpose |
|------|---------|
| `include/aie_engine.h` | AIE public interface |
| `src/services/aie_engine.cpp` | AIE implementation |

### 4.3 Interface Design

```cpp
// include/aie_engine.h
#pragma once

#include <stdint.h>

namespace services::aie {

// Configuration constants
inline constexpr uint16_t kDropMs = 5;
inline constexpr uint16_t kDwellMs = 40;
inline constexpr uint16_t kBloomMs = 150;
inline constexpr uint8_t kMinVolume = 0;
inline constexpr uint8_t kMaxVolume = 63;

// Initialize AIE engine (creates FreeRTOS task on Core 0)
void begin();

// Called from encoder ISR to signal tuning activity
void IRAM_ATTR notifyEncoderActivity();

// Called when user changes volume (updates target)
void setTargetVolume(uint8_t volume);

// Get current AIE volume (for display)
uint8_t getCurrentVolume();

// Check if AIE is currently in envelope phase
bool isEnvelopeActive();

}  // namespace services::aie
```

### 4.4 Sigmoid LUT Implementation

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

### 4.5 Integration Points

#### 4.5.1 Encoder ISR Modification

```cpp
// src/services/input_service.cpp

#include "../../include/aie_engine.h"

void IRAM_ATTR onEncoderChange() {
  // ... existing logic ...
  
  if (emit == kDirCw || emit == kDirCcw) {
    // ... existing accumulation ...
    
    // NEW: Notify AIE of tuning activity
    services::aie::notifyEncoderActivity();
  }
}
```

#### 4.5.2 Main Loop Integration

```cpp
// src/main.cpp

#include "../include/aie_engine.h"

void setup() {
  // ... existing initialization ...
  
  // Initialize AIE after radio is ready
  services::aie::begin();
}

void changeVolume(int8_t direction, int8_t repeats) {
  // ... existing volume logic ...
  
  // Update AIE target volume
  services::aie::setTargetVolume(g_state.radio.volume);
}
```

#### 4.5.3 Radio Service Integration

```cpp
// src/services/radio_service.cpp

// AIE bypasses normal volume setting during envelope
void apply(const app::AppState& state) {
  // ...
  
  // Skip volume set if AIE is controlling it
  if (!services::aie::isEnvelopeActive()) {
    if (radio.volume != g_lastApplied.volume) {
      g_rx.setVolume(radio.volume);
    }
  }
}
```

### 4.6 Raw Volume Register Access

The SI4735 library provides `setVolume()` which sends I2C command `0x12` (SET_PROPERTY) with property `0x4000` (RX_VOLUME).

For faster access, we could use direct property writes:

```cpp
void setVolumeDirect(uint8_t volume) {
  // Property 0x4000 = RX_VOLUME
  si47x_property property;
  property.raw = 0x4000;
  
  g_rx.sendProperty(property.raw, volume);
}
```

---

## 5. Step Size Compatibility Analysis

The AIE must work correctly at all tuning step sizes:

| Step Size | Use Case | Tuning Speed | AIE Behavior |
|-----------|----------|--------------|--------------|
| 1 kHz | SSB fine tuning | Slow | Normal bloom |
| 5 kHz | SW broadcast | Medium | Normal bloom |
| 9 kHz | MW (EU) | Medium | Normal bloom |
| 10 kHz | MW (US), FM | Medium | Normal bloom |
| 20 kHz | FM fast scan | Fast | Bloom still completes |

**Key Insight:** The 40ms dwell timer resets on each encoder pulse, so continuous fast tuning keeps the volume suppressed. The bloom only begins after tuning stops.

### 5.1 Acceleration Interaction

The encoder already has acceleration logic (`kAccelerationFactors[] = {1, 2, 4, 8, 16}`). When accelerated:

- **Single pulse:** 1 step, AIE triggers
- **Fast rotation:** 16 steps per pulse, AIE still triggers once

The AIE's `notifyEncoderActivity()` should be called per-interrupt, not per-step, ensuring proper dwell timing regardless of acceleration.

---

## 6. Visibility Assessment

### 6.1 Components with Full Visibility ✅

| Component | File(s) | Status |
|-----------|---------|--------|
| Encoder ISR | `input_service.cpp` | Full access |
| Volume API | `radio_service.cpp` | Full access |
| SI4735 object | `radio_service.cpp` | Can add methods |
| State machine | `app_state.h` | Full access |
| Timing constants | `app_config.h` | Can extend |
| Hardware pins | `hardware_pins.h` | Full access |

### 6.2 Components Requiring Extension

| Component | Current State | Required Change |
|-----------|---------------|-----------------|
| SI4735 library | External dependency | May need `setVolumeDirect()` method |
| FreeRTOS config | Not configured | Must enable in `platformio.ini` |
| Core affinity | Not used | Must add `xTaskCreatePinnedToCore()` |

### 6.3 Potential Visibility Issues ⚠️

1. **SI4735 I2C Timing:** The SI4735 library may have internal delays. Need to verify I2C transaction time for volume commands.

2. **FreeRTOS Configuration:** ESP32 Arduino core provides FreeRTOS, but configuration may need adjustment:
   ```ini
   ; platformio.ini
   build_flags = 
     -DCONFIG_FREERTOS_HZ=1000
   ```

3. **ISR to Task Communication:** Need atomic flag or queue between encoder ISR and AIE task. Already using `volatile` pattern in `input_service.cpp`.

---

## 7. Risk Assessment

### 7.1 Technical Risks

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| I2C latency exceeds 1ms budget | Medium | High | Pre-compute volume values, batch I2C |
| Audio pops from SI4735 internal AGC | Low | Medium | Bloom timing masks AGC settling |
| FreeRTOS scheduler jitter | Low | Medium | Use `vTaskDelayUntil()` for precise timing |
| UI lag during rapid tuning | Low | Low | Core 0 isolation prevents this |

### 7.2 User Experience Risks

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Bloom too slow for user preference | Medium | Low | Make timing configurable |
| Unnatural feel | Low | Medium | Fine-tune sigmoid parameters |
| Interference with mute button | Low | Medium | Check `g_muted` state before bloom |

---

## 8. Implementation Complexity Estimate

| Phase | Effort | Dependencies |
|-------|--------|--------------|
| Core 0 task scaffolding | 2 hours | None |
| Volume ramp logic | 4 hours | SI4735 API |
| Sigmoid LUT generation | 1 hour | None |
| ISR integration | 2 hours | None |
| State management | 2 hours | None |
| Testing & tuning | 4 hours | Hardware |
| **Total** | **15 hours** | |

---

## 9. Alternative Approaches

### 9.1 Hardware Mute Pin (Simpler)

Use `hw::kPinAudioMute` for instant silence, then analog ramp:

```cpp
void aieSimpleMute() {
  digitalWrite(hw::kPinAudioMute, HIGH);  // Mute
  // ... tune ...
  delay(40);  // Dwell
  // Soft un-mute via volume ramp
  for (int v = 0; v <= targetVolume; v++) {
    g_rx.setVolume(v);
    delay(3);  // ~150ms total
  }
  digitalWrite(hw::kPinAudioMute, LOW);
}
```

**Pros:** Simpler, no FreeRTOS needed  
**Cons:** Less elegant, not true "analog feel"

### 9.2 SI4735 Soft Mute Feature

The SI4735 has built-in soft mute (`RX_SOFT_MUTE_MAX_ATTENUATION`). This could be leveraged:

```cpp
g_rx.setAmSoftMuteMaxAttenuation(32);  // Max soft mute
// Tune happens while soft mute active
g_rx.setAmSoftMuteMaxAttenuation(0);   // Release
```

**Pros:** Hardware-accelerated  
**Cons:** Not tunable, doesn't apply to FM

---

## 10. Recommendations

### 10.1 Recommended Approach

**Implement the full AIE as specified** using:
- FreeRTOS task on Core 0
- Sigmoid LUT for bloom curve
- Direct volume register manipulation

This provides the best user experience and matches the spec's "analog feel" objective.

### 10.2 Configuration Options

Add to `app_config.h`:

```cpp
namespace aie {
inline constexpr uint16_t kDropMs = 5;
inline constexpr uint16_t kDwellMs = 40;
inline constexpr uint16_t kBloomMs = 150;
inline constexpr float kSigmoidK = 0.05f;
}  // namespace aie
```

### 10.3 Future Enhancements

1. **User-tunable timing:** Expose timing parameters in Quick Edit
2. **Curve selection:** Linear, sigmoid, or exponential options
3. **Per-band profiles:** Different AIE behavior for FM vs. SSB

---

## 11. Conclusion

The Acoustic Inertia Engine is **technically feasible** with the current codebase. All required components have sufficient visibility for implementation. The ESP32-S3's dual-core architecture is ideal for this feature, allowing the UI to remain responsive while Core 0 handles the volume envelope.

**Key Implementation Steps:**
1. Create `aie_engine.h` and `aie_engine.cpp`
2. Add FreeRTOS task pinned to Core 0
3. Integrate `notifyEncoderActivity()` into encoder ISR
4. Implement sigmoid LUT and volume ramping
5. Test with all step sizes and modulation modes

---

**Document Status:** Assessment Complete — Ready for Implementation Approval