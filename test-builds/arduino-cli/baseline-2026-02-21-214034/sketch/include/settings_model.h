#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/include/settings_model.h"
#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "app_config.h"
#include "app_state.h"

namespace app::settings {

enum class Item : uint8_t {
  Rds = 0,
  Eibi = 1,
  Brightness = 2,
  Region = 3,
  Theme = 4,
  UiLayout = 5,
  About = 6,
};

inline constexpr uint8_t kItemCount = 7;
inline constexpr uint8_t kBrightnessStep = 10;
inline constexpr uint8_t kBrightnessMax = 250;
inline constexpr uint8_t kBrightnessOptionCount = (kBrightnessMax / kBrightnessStep) + 1;

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
    case Item::Theme:
      return "Theme";
    case Item::UiLayout:
      return "UI Layout";
    case Item::About:
      return "About";
  }
  return "?";
}

inline constexpr bool itemEditable(Item item) {
  return item != Item::About;
}

inline constexpr uint8_t valueCount(Item item) {
  switch (item) {
    case Item::Rds:
      return 3;
    case Item::Eibi:
      return 2;
    case Item::Brightness:
      return kBrightnessOptionCount;
    case Item::Region:
      return 4;
    case Item::Theme:
      return 3;
    case Item::UiLayout:
      return 3;
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
      return mode > 2 ? 1 : mode;
    }
    case Item::Eibi:
      return state.global.scrollDirection > 0 ? 1 : 0;
    case Item::Brightness:
      return brightnessToIndex(state.global.brightness);
    case Item::Region: {
      const uint8_t region = static_cast<uint8_t>(state.global.fmRegion);
      return region > 3 ? 0 : region;
    }
    case Item::Theme: {
      const uint8_t theme = static_cast<uint8_t>(state.global.theme);
      return theme > 2 ? 0 : theme;
    }
    case Item::UiLayout: {
      const uint8_t layout = static_cast<uint8_t>(state.global.uiLayout);
      return layout > 2 ? 0 : layout;
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
    case Item::Theme:
      state.global.theme = static_cast<Theme>(valueIndex % valueCount(item));
      break;
    case Item::UiLayout:
      state.global.uiLayout = static_cast<UiLayout>(valueIndex % valueCount(item));
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
        case RdsMode::Basic:
          snprintf(out, outSize, "Basic");
          return;
        case RdsMode::Full:
          snprintf(out, outSize, "Full");
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
    case Item::Theme:
      snprintf(out, outSize, "%s", themeLabel(state.global.theme));
      return;
    case Item::UiLayout:
      snprintf(out, outSize, "%s", layoutLabel(state.global.uiLayout));
      return;
    case Item::About:
      snprintf(out, outSize, "%s", app::kFirmwareVersion);
      return;
  }

  snprintf(out, outSize, "?");
}

}  // namespace app::settings
