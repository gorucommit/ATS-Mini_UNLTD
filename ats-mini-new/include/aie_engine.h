#pragma once

#include <stdint.h>

#include "app_state.h"

namespace services::aie {

// Configuration constants
inline constexpr uint16_t kDwellMs = 40;       // AM/SSB
inline constexpr uint16_t kDwellFmMs = 65;   // FM (PLL/stereo needs longer to settle)
inline constexpr uint16_t kBloomMs = 150;
inline constexpr uint8_t kPrechargeMs = 2;    // Bloom: keep mute on, set vol 1, then unmute (anti-click)
inline constexpr uint8_t kBloomMinVolume = 2;// First step after unmute (avoids 0→1 pop)
inline constexpr uint8_t kSoftDropMs = 2;     // Micro-fade before mute (0 = instant mute)
inline constexpr uint8_t kMinVolume = 0;
inline constexpr uint8_t kMaxVolume = 63;

// Initialize AIE. Phase 2: 1 ms esp_timer drives envelope; tick() only syncs cached state.
void begin();

// Call once per loop iteration. Syncs cached state (muted, active); resets envelope when leaving Tune+NowPlaying.
void tick(const app::AppState& state);

// Call from main when about to change frequency (Tune + NowPlaying).
// Updates last-move timestamp and performs synchronous instant mute (DROP).
// Must be called *before* changeFrequency() so volume is down before setFrequency().
void notifyTuning();

// Called when user changes volume (updates target for bloom)
void setTargetVolume(uint8_t volume);

// Get current AIE volume (for display)
uint8_t getCurrentVolume();

// Check if AIE is currently in envelope phase (DROP, DWELL, or BLOOM)
bool isEnvelopeActive();

// True when AIE owns volume control — radio::apply() skips volume write
bool ownsVolume();

// True only when AIE should run (Tune + NowPlaying). Used by main before notifyTuning().
bool shouldActivateAIE(const app::AppState& state);

}  // namespace services::aie
