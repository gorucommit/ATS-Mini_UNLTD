#include <Arduino.h>
#include <esp_timer.h>

#include "../../include/aie_engine.h"
#include "../../include/app_services.h"

namespace services::aie {
namespace {

enum class State { Idle, Drop, Dwell, Bloom };

State g_state = State::Idle;
int64_t g_lastMoveTimeUs = 0;
int64_t g_bloomStartTimeUs = 0;
uint8_t g_targetVolume = kMaxVolume;
uint8_t g_currentVolume = kMaxVolume;
bool g_initialized = false;
bool g_bloomUnmuted = false;  // true after pre-charge: we've called setAieMuted(false)

// Phase 2: 1 ms envelope driver (Option B)
esp_timer_handle_t g_envelope_timer = nullptr;
bool g_cachedActive = false;
bool g_cachedMuted = false;
bool g_cachedFm = false;  // adaptive dwell: FM needs longer

// 150-entry sigmoid LUT: V(t) = 63 / (1 + exp(-0.05*(t - 75))), t in [0, 149]
static const uint8_t kSigmoidLut[150] = {
    1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6,
    6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 11, 11, 11, 12, 12, 13, 13, 14, 15, 15, 16, 16, 17, 18, 18, 19, 20,
    20, 21, 22, 22, 23, 24, 25, 25, 26, 27, 28, 28, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36, 37, 38, 38, 39, 40, 41, 41, 42,
    43, 43, 44, 45, 45, 46, 47, 47, 48, 48, 49, 50, 50, 51, 51, 52, 52, 52, 53, 53, 54, 54, 54, 55, 55, 55, 56, 56, 56, 57,
    57, 57, 58, 58, 58, 58, 58, 59, 59, 59, 59, 59, 60, 60, 60, 60, 60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 63,
};

inline constexpr int64_t kDwellUs = static_cast<int64_t>(kDwellMs) * 1000;
inline constexpr int64_t kDwellFmUs = static_cast<int64_t>(kDwellFmMs) * 1000;
inline constexpr int64_t kBloomUs = static_cast<int64_t>(kBloomMs) * 1000;
inline constexpr int64_t kPrechargeUs = static_cast<int64_t>(kPrechargeMs) * 1000;
inline constexpr int64_t kTotalBloomUs = kPrechargeUs + kBloomUs;  // precharge + sigmoid

void runEnvelopeStep() {
  const int64_t now = esp_timer_get_time();

  if (!g_cachedActive) {
    return;
  }

  switch (g_state) {
    case State::Idle:
      g_currentVolume = g_targetVolume;
      break;

    case State::Drop:
      g_state = State::Dwell;
      break;

    case State::Dwell: {
      const int64_t dwellUs = g_cachedFm ? kDwellFmUs : kDwellUs;
      const int64_t elapsed = now - g_lastMoveTimeUs;
      if (elapsed >= dwellUs) {
        g_state = State::Bloom;
        g_bloomStartTimeUs = now;
        g_bloomUnmuted = false;
        // Keep mute ON during pre-charge; we'll set volume 1 and unmute after kPrechargeMs
      }
      break;
    }

    case State::Bloom: {
      const int64_t elapsed = now - g_bloomStartTimeUs;
      const uint8_t bloomTarget = g_cachedMuted ? 0 : g_targetVolume;

      if (elapsed >= kTotalBloomUs) {
        g_state = State::Idle;
        g_currentVolume = bloomTarget;
        services::radio::applyVolumeOnly(bloomTarget);
        break;
      }

      // Pre-charge: keep mute on, set volume 1 for kPrechargeMs so path is "pre-charged"
      if (elapsed < kPrechargeUs) {
        services::radio::applyVolumeOnly(1);
        g_currentVolume = 1;
        break;
      }

      // After precharge: unmute once, then run sigmoid from min volume 2 (anti-click)
      if (!g_bloomUnmuted) {
        services::radio::setAieMuted(false);
        g_bloomUnmuted = true;
      }

      // Sigmoid ramp: start from min volume 2 to avoid 0→1 pop (anti-click)
      const int64_t rampElapsed = elapsed - kPrechargeUs;
      const size_t index = static_cast<size_t>(rampElapsed / 1000);
      const size_t safeIndex = index < 150 ? index : 149;
      uint8_t lutVal = kSigmoidLut[safeIndex];
      if (lutVal < kBloomMinVolume) {
        lutVal = kBloomMinVolume;
      }
      const uint8_t volume = bloomTarget == 0 ? 0 : static_cast<uint8_t>((static_cast<uint16_t>(lutVal) * bloomTarget) / 63);
      g_currentVolume = volume;
      services::radio::applyVolumeOnly(volume);
      break;
    }
  }
}

void envelopeTimerCallback(void* arg) {
  (void)arg;
  runEnvelopeStep();
}

}  // namespace

void begin() {
  g_state = State::Idle;
  g_lastMoveTimeUs = 0;
  g_bloomStartTimeUs = 0;
  g_bloomUnmuted = false;
  g_cachedActive = false;
  g_cachedMuted = false;
  g_cachedFm = false;
  g_initialized = true;

  const esp_timer_create_args_t args = {
      .callback = &envelopeTimerCallback,
      .arg = nullptr,
      .dispatch_method = ESP_TIMER_TASK,
      .name = "aie_env",
      .skip_unhandled_events = true,
  };
  if (g_envelope_timer == nullptr && esp_timer_create(&args, &g_envelope_timer) == ESP_OK) {
    esp_timer_start_periodic(g_envelope_timer, 1000);
  }
}

bool shouldActivateAIE(const app::AppState& state) {
  return state.ui.layer == app::UiLayer::NowPlaying &&
         state.ui.operation == app::OperationMode::Tune;
}

void notifyTuning() {
  if (!g_initialized) {
    return;
  }
  const int64_t now = esp_timer_get_time();
  g_lastMoveTimeUs = now;
  g_state = State::Drop;

  if (kSoftDropMs > 0) {
    // Micro-fade before mute: avoids "mute slam" (speaker snapping to zero)
    const uint8_t half = g_currentVolume / 2;
    services::radio::applyVolumeOnly(half);
    delay(1);
    services::radio::applyVolumeOnly(0);
    delay(1);
  }
  services::radio::setAieMuted(true);
}

void setTargetVolume(uint8_t volume) {
  if (volume > kMaxVolume) {
    volume = kMaxVolume;
  }
  g_targetVolume = volume;
}

uint8_t getCurrentVolume() { return g_currentVolume; }

bool isEnvelopeActive() {
  return g_state != State::Idle;
}

bool ownsVolume() {
  return g_state == State::Dwell || g_state == State::Bloom;
}

void tick(const app::AppState& state) {
  if (!g_initialized) {
    return;
  }

  g_cachedMuted = state.ui.muted;
  g_cachedActive = shouldActivateAIE(state);
  g_cachedFm = (state.radio.modulation == app::Modulation::FM);

  if (!g_cachedActive && g_state != State::Idle) {
    g_state = State::Idle;
    services::radio::setAieMuted(false);
    services::radio::applyVolumeOnly(g_targetVolume);
    g_currentVolume = g_targetVolume;
  }
}

}  // namespace services::aie
