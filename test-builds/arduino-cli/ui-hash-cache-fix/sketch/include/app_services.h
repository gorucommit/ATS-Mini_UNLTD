#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/include/app_services.h"
#pragma once

#include <stdint.h>

#include "app_state.h"

namespace services {

namespace radio {
void prepareBootPower();
bool begin();
bool ready();
const char* lastError();
void apply(const app::AppState& state);
void applyRuntimeSettings(const app::AppState& state);
bool seek(app::AppState& state, int8_t direction);
void setMuted(bool muted);
bool readSignalQuality(uint8_t* rssi, uint8_t* snr);
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
}  // namespace input

namespace ui {
bool begin();
void showBoot(const char* message);
void notifyVolumeAdjust(uint8_t volume);
void render(const app::AppState& state);
}  // namespace ui

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

}  // namespace services
