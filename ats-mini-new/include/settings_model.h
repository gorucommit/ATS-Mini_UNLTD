#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "app_config.h"
#include "app_state.h"
#include "etm_scan.h"

namespace app::settings {

enum class Item : uint8_t {
  Rds = 0,
  Eibi = 1,
  Brightness = 2,
  Region = 3,
  SoftMute = 4,
  Theme = 5,
  UiLayout = 6,
  ScanSens = 7,
  ScanSpeed = 8,
  About = 9,
};

inline constexpr uint8_t kItemCount = 10;
inline constexpr uint8_t kBrightnessStep = 10;
inline constexpr uint8_t kBrightnessMax = 250;
inline constexpr uint8_t kBrightnessOptionCount = (kBrightnessMax / kBrightnessStep) + 1;
inline constexpr uint8_t kSoftMuteOptionCount = 33;  // 0..32

inline constexpr Item itemFromIndex(uint8_t index) {
  return static_cast<Item>(index % kItemCount);
}

inline constexpr const char* itemLabel(Item item) {
  switch (item) {
    case Item::Rds:
      return "RDS";
    case Item::Eibi:
      return "EiBi";
    case Item::Brightness:
      return "Brightness";
    case Item::Region:
      return "FM Region";
    case Item::SoftMute:
      return "SoftMute";
    case Item::Theme:
      return "Theme";
    case Item::UiLayout:
      return "UI Layout";
    case Item::ScanSens:
      return "Scan Sens";
    case Item::ScanSpeed:
      return "Scan Speed";
    case Item::About:
      return "About";
  }
  return "?";
}

inline constexpr bool itemEditable(Item item) {
  return item != Item::About;
}

inline bool itemEditable(const AppState& state, Item item) {
  if (item == Item::SoftMute) {
    return state.radio.modulation != Modulation::FM;
  }
  return itemEditable(item);
}

inline constexpr uint8_t valueCount(Item item) {
  switch (item) {
    case Item::Rds:
      return 4;
    case Item::Eibi:
      return 2;
    case Item::Brightness:
      return kBrightnessOptionCount;
    case Item::Region:
      return 4;
    case Item::SoftMute:
      return kSoftMuteOptionCount;
    case Item::Theme:
      return 3;
    case Item::UiLayout:
      return 3;
    case Item::ScanSens:
      return 2;  // Low, High
    case Item::ScanSpeed:
      return 2;  // Fast, Thorough
    case Item::About:
      return 1;
  }
  return 1;
}

inline constexpr const char* regionLabel(FmRegion region) {
  switch (region) {
    case FmRegion::World:
      return "EU/World";
    case FmRegion::US:
      return "US";
    case FmRegion::Japan:
      return "Japan";
    case FmRegion::Oirt:
      return "OIRT";
  }
  return "?";
}

inline constexpr const char* themeLabel(Theme theme) {
  switch (theme) {
    case Theme::Classic:
      return "Classic";
    case Theme::Dark:
      return "Dark";
    case Theme::Light:
      return "Light";
  }
  return "?";
}

inline constexpr const char* layoutLabel(UiLayout layout) {
  switch (layout) {
    case UiLayout::Standard:
      return "Standard";
    case UiLayout::Compact:
      return "Compact";
    case UiLayout::Extended:
      return "Extended";
  }
  return "?";
}

inline uint8_t brightnessToIndex(uint8_t brightness) {
  uint8_t clamped = brightness;
  if (clamped > kBrightnessMax) {
    clamped = kBrightnessMax;
  }
  return static_cast<uint8_t>(clamped / kBrightnessStep);
}

inline uint8_t brightnessFromIndex(uint8_t index) {
  const uint16_t value = static_cast<uint16_t>(index % kBrightnessOptionCount) * kBrightnessStep;
  return static_cast<uint8_t>(value > kBrightnessMax ? kBrightnessMax : value);
}

inline uint8_t valueIndexForCurrent(const AppState& state, Item item) {
  switch (item) {
    case Item::Rds: {
      const uint8_t mode = static_cast<uint8_t>(state.global.rdsMode);
      return mode > 3 ? 1 : mode;
    }
    case Item::Eibi:
      return state.global.scrollDirection > 0 ? 1 : 0;
    case Item::Brightness:
      return brightnessToIndex(state.global.brightness);
    case Item::Region: {
      const uint8_t region = static_cast<uint8_t>(state.global.fmRegion);
      return region > 3 ? 0 : region;
    }
    case Item::SoftMute:
      if (state.radio.modulation == Modulation::FM) {
        return 0;
      }
      return isSsb(state.radio.modulation) ? state.global.softMuteSsbLevel : state.global.softMuteAmLevel;
    case Item::Theme: {
      const uint8_t theme = static_cast<uint8_t>(state.global.theme);
      return theme > 2 ? 0 : theme;
    }
    case Item::UiLayout: {
      const uint8_t layout = static_cast<uint8_t>(state.global.uiLayout);
      return layout > 2 ? 0 : layout;
    }
    case Item::ScanSens: {
      const uint8_t s = static_cast<uint8_t>(state.global.scanSensitivity);
      return s > 1 ? 1 : s;
    }
    case Item::ScanSpeed: {
      const uint8_t s = static_cast<uint8_t>(state.global.scanSpeed);
      return s > 1 ? 1 : s;
    }
    case Item::About:
      return 0;
  }
  return 0;
}

inline void applyValue(AppState& state, Item item, uint8_t valueIndex) {
  switch (item) {
    case Item::Rds:
      state.global.rdsMode = static_cast<RdsMode>(valueIndex % valueCount(item));
      break;
    case Item::Eibi:
      state.global.scrollDirection = (valueIndex % valueCount(item)) == 0 ? -1 : 1;
      break;
    case Item::Brightness:
      state.global.brightness = brightnessFromIndex(valueIndex);
      break;
    case Item::Region:
      state.global.fmRegion = static_cast<FmRegion>(valueIndex % valueCount(item));
      break;
    case Item::SoftMute: {
      const uint8_t softMute = static_cast<uint8_t>(valueIndex % kSoftMuteOptionCount);
      if (isSsb(state.radio.modulation)) {
        state.global.softMuteSsbLevel = softMute;
      } else if (state.radio.modulation == Modulation::AM) {
        state.global.softMuteAmLevel = softMute;
      }
      state.global.softMuteEnabled = softMute > 0 ? 1 : 0;
      state.global.softMuteMaxAttenuation = softMute;
      break;
    }
    case Item::Theme:
      state.global.theme = static_cast<Theme>(valueIndex % valueCount(item));
      break;
    case Item::UiLayout:
      state.global.uiLayout = static_cast<UiLayout>(valueIndex % valueCount(item));
      break;
    case Item::ScanSens:
      state.global.scanSensitivity = static_cast<app::ScanSensitivity>(valueIndex % 2);
      break;
    case Item::ScanSpeed:
      state.global.scanSpeed = static_cast<app::ScanSpeed>(valueIndex % valueCount(item));
      break;
    case Item::About:
      break;
  }
}

inline void formatValue(const AppState& state, Item item, char* out, size_t outSize) {
  if (out == nullptr || outSize == 0) {
    return;
  }

  switch (item) {
    case Item::Rds:
      switch (state.global.rdsMode) {
        case RdsMode::Off:
          snprintf(out, outSize, "Off");
          return;
        case RdsMode::Ps:
          snprintf(out, outSize, "PS");
          return;
        case RdsMode::FullNoCt:
          snprintf(out, outSize, "Full-CT");
          return;
        case RdsMode::All:
          snprintf(out, outSize, "ALL");
          return;
      }
      break;
    case Item::Eibi:
      snprintf(out, outSize, "%s", state.global.scrollDirection > 0 ? "On" : "Off");
      return;
    case Item::Brightness:
      snprintf(out, outSize, "%u", static_cast<unsigned>(state.global.brightness));
      return;
    case Item::Region:
      snprintf(out, outSize, "%s", regionLabel(state.global.fmRegion));
      return;
    case Item::SoftMute:
      if (state.radio.modulation == Modulation::FM) {
        snprintf(out, outSize, "N/A");
      } else {
        const uint8_t value = isSsb(state.radio.modulation) ? state.global.softMuteSsbLevel : state.global.softMuteAmLevel;
        snprintf(out, outSize, "%u", static_cast<unsigned>(value));
      }
      return;
    case Item::Theme:
      snprintf(out, outSize, "%s", themeLabel(state.global.theme));
      return;
    case Item::UiLayout:
      snprintf(out, outSize, "%s", layoutLabel(state.global.uiLayout));
      return;
    case Item::ScanSens: {
      static const char* kSens[] = {"Low", "High"};
      snprintf(out, outSize, "%s", kSens[static_cast<uint8_t>(state.global.scanSensitivity) % 2]);
      return;
    }
    case Item::ScanSpeed: {
      snprintf(out, outSize, "%s", state.global.scanSpeed == app::ScanSpeed::Thorough ? "Thorough" : "Fast");
      return;
    }
    case Item::About:
      snprintf(out, outSize, "%s", app::kFirmwareVersion);
      return;
  }

  snprintf(out, outSize, "?");
}

}  // namespace app::settings
