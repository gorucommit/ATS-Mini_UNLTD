#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/include/app_config.h"
#pragma once

#include <stdint.h>

namespace app {
inline constexpr const char* kFirmwareName = "ats-mini-new";
inline constexpr const char* kFirmwareVersion = "0.1.0-alpha";
inline constexpr uint32_t kSerialBaud = 115200;
inline constexpr uint16_t kUiRefreshMs = 50;
inline constexpr int16_t kBfoStepHz = 25;
inline constexpr uint32_t kInputDebounceMs = 30;
inline constexpr uint32_t kMultiClickWindowMs = 700;
inline constexpr uint32_t kMenuClickWindowMs = 220;
inline constexpr uint32_t kLongPressMs = 700;
inline constexpr uint32_t kVeryLongPressMs = 1800;
inline constexpr uint32_t kSettingsSaveDebounceMs = 1500;
inline constexpr uint32_t kSeekTimeoutMs = 45000;
inline constexpr uint16_t kScanSettleMs = 85;
inline constexpr uint32_t kSi473xPowerSettleMs = 100;
}  // namespace app
