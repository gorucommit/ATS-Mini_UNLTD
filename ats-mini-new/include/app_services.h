#pragma once

#include <stdint.h>

#include "app_state.h"

namespace services {

namespace radio {
struct RdsGroupSnapshot {
  bool received;
  bool sync;
  bool syncFound;
  bool syncLost;
  bool groupLost;
  uint8_t fifoUsed;
  uint8_t groupType;
  bool versionB;
  uint8_t pty;
  uint8_t textAbFlag;
  uint8_t segmentAddress;
  uint16_t blockA;
  uint16_t blockB;
  uint16_t blockC;
  uint16_t blockD;
  uint8_t bleA;
  uint8_t bleB;
  uint8_t bleC;
  uint8_t bleD;
};

void prepareBootPower();
bool begin();
bool ready();
const char* lastError();
void apply(const app::AppState& state);
void applyVolumeOnly(uint8_t volume);
void setAieMuted(bool muted);
void applyRuntimeSettings(const app::AppState& state);
bool seek(app::AppState& state, int8_t direction);
bool seekForScan(app::AppState& state, int8_t direction);
bool lastSeekAborted();
void setMuted(bool muted);
bool readSignalQuality(uint8_t* rssi, uint8_t* snr);
bool pollRdsGroup(RdsGroupSnapshot* snapshot);
void resetRdsDecoder();
void tick();
}  // namespace radio

namespace input {
bool begin();
void tick();
int8_t consumeEncoderDelta();
bool consumeSingleClick();
bool consumeDoubleClick();
bool consumeTripleClick();
bool consumeLongPress();
bool consumeVeryLongPress();
bool isButtonHeld();
void setMultiClickWindowMs(uint32_t windowMs);
void clearAbortRequest();
bool consumeAbortRequest();
bool consumeAbortEventRequest();
}  // namespace input

namespace ui {
bool begin();
void showBoot(const char* message);
void notifyVolumeAdjust(uint8_t volume);
void render(const app::AppState& state);
}  // namespace ui

namespace clock {
void tick(app::AppState& state);
void setRdsUtcBase(app::AppState& state, uint16_t mjd, uint8_t hourUtc, uint8_t minuteUtc);
void clearRdsUtcBase(app::AppState& state);
}  // namespace clock

namespace settings {
bool begin();
bool load(app::AppState& state);
void markDirty();
void tick(const app::AppState& state);
}  // namespace settings

namespace seekscan {
void requestSeek(int8_t direction);
void requestScan(int8_t direction);
void requestCancel();
bool busy();
void syncContext(app::AppState& state);
bool navigateFound(app::AppState& state, int8_t direction);
bool tick(app::AppState& state);
}  // namespace seekscan

namespace etm {
bool requestScan(const app::AppState& state);
bool tick(app::AppState& state);
void requestCancel();
bool busy();
void syncContext(app::AppState& state);
void publishState(app::AppState& state);
void addSeekResult(uint16_t frequencyKhz, uint8_t rssi, uint8_t snr);
void navigateNext(app::AppState& state);
void navigatePrev(app::AppState& state);
void navigateNearest(app::AppState& state);
}  // namespace etm

namespace rds {
void tick(app::AppState& state);
void reset(app::AppState& state);
}  // namespace rds

}  // namespace services
