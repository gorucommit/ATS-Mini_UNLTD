#include <Arduino.h>

#include "../../include/app_services.h"

namespace services::clock {
namespace {

int16_t normalizeMinuteToken(int32_t minute) {
  constexpr int32_t kDayMinutes = 24 * 60;
  minute %= kDayMinutes;
  if (minute < 0) {
    minute += kDayMinutes;
  }
  return static_cast<int16_t>(minute);
}

void applyDisplayMinute(app::ClockState& clock, int16_t minuteToken) {
  clock.displayMinuteToken = minuteToken;
  clock.displayHour = static_cast<uint8_t>(minuteToken / 60);
  clock.displayMinute = static_cast<uint8_t>(minuteToken % 60);
}

int16_t syntheticLocalMinuteToken(const app::AppState& state) {
  const int32_t baseMinutes = static_cast<int32_t>(millis() / 60000U);
  const int32_t localMinutes = baseMinutes + state.global.utcOffsetMinutes;
  return normalizeMinuteToken(localMinutes);
}

int16_t rdsLocalMinuteToken(const app::AppState& state) {
  const uint32_t nowMs = millis();
  const uint32_t elapsedMs = nowMs - state.clock.rdsBaseUptimeMs;
  const int32_t elapsedMinutes = static_cast<int32_t>(elapsedMs / 60000U);
  const int32_t utcMinutes = static_cast<int32_t>(state.clock.rdsUtcMinutesOfDay) + elapsedMinutes;
  const int32_t localMinutes = utcMinutes + state.global.utcOffsetMinutes;
  return normalizeMinuteToken(localMinutes);
}

bool shouldUseRdsCt(const app::AppState& state) {
  return state.global.rdsMode == app::RdsMode::All && state.clock.hasRdsBase;
}

}  // namespace

void tick(app::AppState& state) {
  const bool useRdsCt = shouldUseRdsCt(state);
  const int16_t minuteToken = useRdsCt ? rdsLocalMinuteToken(state) : syntheticLocalMinuteToken(state);
  applyDisplayMinute(state.clock, minuteToken);
  state.clock.usingRdsCt = static_cast<uint8_t>(useRdsCt ? 1 : 0);
}

void setRdsUtcBase(app::AppState& state, uint16_t mjd, uint8_t hourUtc, uint8_t minuteUtc) {
  if (hourUtc > 23 || minuteUtc > 59) {
    return;
  }

  state.clock.hasRdsBase = 1;
  state.clock.rdsMjd = mjd;
  state.clock.rdsUtcMinutesOfDay = static_cast<uint16_t>(hourUtc * 60U + minuteUtc);
  state.clock.rdsBaseUptimeMs = millis();
}

void clearRdsUtcBase(app::AppState& state) {
  state.clock.hasRdsBase = 0;
  state.clock.usingRdsCt = 0;
  state.clock.rdsMjd = 0;
  state.clock.rdsUtcMinutesOfDay = 0;
  state.clock.rdsBaseUptimeMs = 0;
}

}  // namespace services::clock
