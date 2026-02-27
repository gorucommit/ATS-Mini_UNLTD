#include <Arduino.h>

#include "../../include/app_config.h"
#include "../../include/app_services.h"
#include "../../include/bandplan.h"

namespace services::seekscan {
namespace {

enum class Operation : uint8_t {
  None = 0,
  SeekPending = 1,
  Seeking = 2,
};

struct ContextKey {
  uint8_t bandIndex;
  uint8_t family;
  uint8_t mwSpacingKhz;
  app::FmRegion fmRegion;
};

Operation g_operation = Operation::None;
int8_t g_direction = 1;
app::AppState* g_activeSeekState = nullptr;

ContextKey g_context = {0xFF, 0, 9, app::FmRegion::World};

inline bool isFmFamily(const app::Modulation modulation) {
  return modulation == app::Modulation::FM;
}

uint8_t mwSpacingKhzFor(const app::FmRegion region) {
  return app::defaultMwStepKhzForRegion(region);
}

ContextKey contextFor(const app::AppState& state) {
  ContextKey key{};
  key.bandIndex = state.radio.bandIndex;
  key.family = isFmFamily(state.radio.modulation) ? 1 : 0;
  key.mwSpacingKhz = mwSpacingKhzFor(state.global.fmRegion);
  key.fmRegion = state.global.fmRegion;
  return key;
}

bool sameContext(const ContextKey& lhs, const ContextKey& rhs) {
  return lhs.bandIndex == rhs.bandIndex &&
         lhs.family == rhs.family &&
         lhs.mwSpacingKhz == rhs.mwSpacingKhz &&
         lhs.fmRegion == rhs.fmRegion;
}

void clearOperationState() {
  g_operation = Operation::None;
  g_activeSeekState = nullptr;
}

void publishSeekCompleteState(app::AppState& state, bool found) {
  state.seekScan.active = false;
  state.seekScan.seeking = false;
  state.seekScan.scanning = false;
  state.seekScan.fineScanActive = false;
  state.seekScan.cursorScanPass = 0;
  state.seekScan.totalPoints = 0;
  state.seekScan.foundCount = found ? 1 : 0;
  state.seekScan.foundIndex = found ? 0 : -1;
}

void updateContext(app::AppState& state) {
  const ContextKey next = contextFor(state);
  if (!sameContext(next, g_context)) {
    g_context = next;
  }
}

}  // namespace

void requestSeek(int8_t direction) {
  if (g_operation != Operation::None) {
    return;
  }

  services::input::clearAbortRequest();
  g_direction = direction >= 0 ? 1 : -1;
  g_operation = Operation::SeekPending;
}

void requestCancel() {
  if (g_operation == Operation::SeekPending) {
    clearOperationState();
    return;
  }
  if (g_operation == Operation::Seeking) {
    services::input::requestAbortEvent();
  }
}

bool busy() { return g_operation != Operation::None; }

void syncContext(app::AppState& state) { updateContext(state); }

void notifySeekProgress(uint16_t frequencyKhz) {
  if (g_operation != Operation::Seeking || g_activeSeekState == nullptr) {
    return;
  }

  app::AppState& state = *g_activeSeekState;
  state.radio.frequencyKhz = frequencyKhz;
  state.radio.ssbTuneOffsetHz = 0;
  state.seekScan.bestFrequencyKhz = frequencyKhz;
  services::ui::render(state);
}

bool tick(app::AppState& state) {
  updateContext(state);

  if (g_operation != Operation::SeekPending) {
    return false;
  }

  state.seekScan.active = true;
  state.seekScan.seeking = true;
  state.seekScan.scanning = false;
  state.seekScan.direction = g_direction;

  g_operation = Operation::Seeking;
  g_activeSeekState = &state;
  const bool found = services::radio::seek(state, g_direction);

  uint8_t rssi = 0;
  uint8_t snr = 0;
  services::radio::readSignalQuality(&rssi, &snr);

  state.seekScan.bestFrequencyKhz = state.radio.frequencyKhz;
  state.seekScan.bestRssi = rssi;
  state.seekScan.pointsVisited = 1;
  publishSeekCompleteState(state, found);

  clearOperationState();
  return true;
}

}  // namespace services::seekscan
