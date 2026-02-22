#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "app_state.h"

namespace app::quickedit {

inline constexpr uint8_t kFmBandwidthCount = 5;
inline constexpr uint8_t kAmBandwidthCount = 7;
inline constexpr uint8_t kSsbBandwidthCount = 6;
inline constexpr uint8_t kAgcLevels[] = {0, 8, 16, 24, 32, 40, 48, 56, 63};
inline constexpr uint8_t kAvcMin = 12;
inline constexpr uint8_t kAvcMax = 90;
inline constexpr uint8_t kAvcStep = 2;
inline constexpr uint8_t kAvcOptionCount = static_cast<uint8_t>(((kAvcMax - kAvcMin) / kAvcStep) + 1);
inline constexpr int16_t kFineMinHz = -500;
inline constexpr int16_t kFineMaxHz = 500;
inline constexpr int16_t kFineStepHz = 25;
inline constexpr uint8_t kSysOptionCount = 10;

struct ChipRect {
  int16_t x;
  int16_t y;
  int16_t w;
  int16_t h;
};

inline constexpr QuickEditItem kFocusOrder[] = {
    QuickEditItem::Mode,
    QuickEditItem::Band,
    QuickEditItem::Step,
    QuickEditItem::Bandwidth,
    QuickEditItem::Agc,
    QuickEditItem::Sql,
    QuickEditItem::Sys,
    QuickEditItem::Settings,
    QuickEditItem::Fine,
    QuickEditItem::Avc,
    QuickEditItem::Favorite,
};

inline constexpr uint8_t kFocusOrderCount = static_cast<uint8_t>(sizeof(kFocusOrder) / sizeof(kFocusOrder[0]));

inline constexpr const char* itemName(QuickEditItem item) {
  switch (item) {
    case QuickEditItem::Band:
      return "BAND";
    case QuickEditItem::Step:
      return "STEP";
    case QuickEditItem::Bandwidth:
      return "BW";
    case QuickEditItem::Agc:
      return "AGC";
    case QuickEditItem::Sql:
      return "SQL";
    case QuickEditItem::Sys:
      return "SYS";
    case QuickEditItem::Settings:
      return "SETTINGS";
    case QuickEditItem::Favorite:
      return "FAV";
    case QuickEditItem::Fine:
      return "BFO";
    case QuickEditItem::Avc:
      return "AVC";
    case QuickEditItem::Mode:
      return "MODE";
  }
  return "?";
}

inline constexpr ChipRect chipRect(QuickEditItem item) {
  switch (item) {
    case QuickEditItem::Fine:
      return {4, 18, 46, 16};
    case QuickEditItem::Avc:
      return {4, 36, 46, 16};
    case QuickEditItem::Favorite:
      return {4, 0, 46, 16};
    case QuickEditItem::Mode:
      return {52, 0, 58, 34};
    case QuickEditItem::Band:
      return {112, 0, 58, 34};
    case QuickEditItem::Step:
      return {172, 0, 46, 16};
    case QuickEditItem::Bandwidth:
      return {172, 18, 46, 16};
    case QuickEditItem::Agc:
      return {220, 0, 46, 16};
    case QuickEditItem::Sql:
      return {220, 18, 46, 16};
    case QuickEditItem::Sys:
      return {268, 0, 46, 34};
    case QuickEditItem::Settings:
      return {268, 36, 46, 16};
  }
  return {0, 0, 1, 1};
}

inline uint8_t focusOrderIndex(QuickEditItem item) {
  for (uint8_t i = 0; i < kFocusOrderCount; ++i) {
    if (kFocusOrder[i] == item) {
      return i;
    }
  }
  return 0;
}

inline bool itemEditable(const AppState& state, QuickEditItem item) {
  switch (item) {
    case QuickEditItem::Fine:
      return isSsb(state.radio.modulation);
    case QuickEditItem::Avc:
      return state.radio.modulation != Modulation::FM;
    case QuickEditItem::Mode: {
      const BandDef& band = kBandPlan[state.radio.bandIndex];
      return !(band.defaultMode == Modulation::FM && !band.allowSsb);
    }
    default:
      return true;
  }
}

inline QuickEditItem moveFocus(QuickEditItem current, int8_t direction) {
  uint8_t index = focusOrderIndex(current);
  if (direction > 0) {
    index = static_cast<uint8_t>((index + 1) % kFocusOrderCount);
  } else if (direction < 0) {
    index = static_cast<uint8_t>((index + kFocusOrderCount - 1) % kFocusOrderCount);
  }
  return kFocusOrder[index];
}

inline QuickEditItem moveFocus(const AppState& state, QuickEditItem current, int8_t direction) {
  if (direction == 0) {
    return current;
  }

  uint8_t index = focusOrderIndex(current);
  for (uint8_t i = 0; i < kFocusOrderCount; ++i) {
    if (direction > 0) {
      index = static_cast<uint8_t>((index + 1) % kFocusOrderCount);
    } else {
      index = static_cast<uint8_t>((index + kFocusOrderCount - 1) % kFocusOrderCount);
    }

    const QuickEditItem candidate = kFocusOrder[index];
    if (itemEditable(state, candidate)) {
      return candidate;
    }
  }

  return current;
}

inline uint8_t usedFavoriteCount(const AppState& state) {
  uint8_t count = 0;
  for (uint8_t i = 0; i < kMemoryCount; ++i) {
    if (state.memories[i].used) {
      ++count;
    }
  }
  return count;
}

inline bool favoriteSlotByUsedIndex(const AppState& state, uint8_t usedIndex, uint8_t* slotIndex) {
  if (slotIndex == nullptr) {
    return false;
  }

  uint8_t seen = 0;
  for (uint8_t i = 0; i < kMemoryCount; ++i) {
    if (!state.memories[i].used) {
      continue;
    }
    if (seen == usedIndex) {
      *slotIndex = i;
      return true;
    }
    ++seen;
  }

  return false;
}

inline uint8_t bandwidthCountFor(const RadioState& radio) {
  if (radio.modulation == Modulation::FM) {
    return kFmBandwidthCount;
  }
  if (isSsb(radio.modulation)) {
    return kSsbBandwidthCount;
  }
  return kAmBandwidthCount;
}

inline uint8_t clampBandwidthIndexFor(const RadioState& radio, uint8_t index) {
  const uint8_t count = bandwidthCountFor(radio);
  if (count == 0) {
    return 0;
  }
  return static_cast<uint8_t>(index % count);
}

inline void formatBandwidthOption(const RadioState& radio, uint8_t index, char* out, size_t outSize) {
  static const char* kFmBw[] = {"AUTO", "110k", "84k", "60k", "40k"};
  static const char* kAmBw[] = {"1.0k", "1.8k", "2.0k", "2.5k", "3.0k", "4.0k", "6.0k"};
  static const char* kSsbBw[] = {"0.5k", "1.0k", "1.2k", "2.2k", "3.0k", "4.0k"};

  const uint8_t safeIndex = clampBandwidthIndexFor(radio, index);
  if (radio.modulation == Modulation::FM) {
    snprintf(out, outSize, "%s", kFmBw[safeIndex]);
  } else if (isSsb(radio.modulation)) {
    snprintf(out, outSize, "%s", kSsbBw[safeIndex]);
  } else {
    snprintf(out, outSize, "%s", kAmBw[safeIndex]);
  }
}

inline uint8_t avcValueFromIndex(uint8_t index) {
  const uint16_t value = static_cast<uint16_t>(kAvcMin) + static_cast<uint16_t>(index % kAvcOptionCount) * kAvcStep;
  return static_cast<uint8_t>(value > kAvcMax ? kAvcMax : value);
}

inline uint8_t avcIndexFromValue(uint8_t value) {
  uint8_t clamped = value;
  if (clamped < kAvcMin) {
    clamped = kAvcMin;
  } else if (clamped > kAvcMax) {
    clamped = kAvcMax;
  }

  if (clamped % kAvcStep != 0) {
    clamped = static_cast<uint8_t>(clamped - (clamped % kAvcStep));
  }
  if (clamped < kAvcMin) {
    clamped = kAvcMin;
  }
  return static_cast<uint8_t>((clamped - kAvcMin) / kAvcStep);
}

inline uint8_t popupOptionCount(const AppState& state, QuickEditItem item) {
  switch (item) {
    case QuickEditItem::Band:
      return static_cast<uint8_t>(kBandCount);
    case QuickEditItem::Step:
      return static_cast<uint8_t>(state.radio.modulation == Modulation::FM ? kFmStepOptionCount : kAmStepOptionCount);
    case QuickEditItem::Bandwidth:
      return bandwidthCountFor(state.radio);
    case QuickEditItem::Agc:
      return static_cast<uint8_t>(1 + sizeof(kAgcLevels) / sizeof(kAgcLevels[0]));
    case QuickEditItem::Sql:
      return 64;
    case QuickEditItem::Sys:
      return kSysOptionCount;
    case QuickEditItem::Avc:
      return state.radio.modulation == Modulation::FM ? 1 : kAvcOptionCount;
    case QuickEditItem::Settings:
      return 1;
    case QuickEditItem::Favorite:
      return static_cast<uint8_t>(1 + usedFavoriteCount(state));
    case QuickEditItem::Fine:
      if (!isSsb(state.radio.modulation)) {
        return 1;
      }
      return static_cast<uint8_t>(((kFineMaxHz - kFineMinHz) / kFineStepHz) + 1);
    case QuickEditItem::Mode: {
      const BandDef& band = kBandPlan[state.radio.bandIndex];
      return band.defaultMode == Modulation::FM && !band.allowSsb ? 1 : 3;
    }
  }
  return 1;
}

inline uint8_t popupIndexForCurrentValue(const AppState& state, QuickEditItem item) {
  switch (item) {
    case QuickEditItem::Band:
      return state.radio.bandIndex;
    case QuickEditItem::Step:
      return state.radio.modulation == Modulation::FM ? fmStepIndexFromKhz(state.radio.fmStepKhz) : amStepIndexFromKhz(state.radio.amStepKhz);
    case QuickEditItem::Bandwidth: {
      const uint8_t bw = state.perBand[state.radio.bandIndex].bandwidthIndex;
      return clampBandwidthIndexFor(state.radio, bw);
    }
    case QuickEditItem::Agc:
      if (state.global.agcEnabled) {
        return 0;
      }
      for (uint8_t i = 0; i < sizeof(kAgcLevels) / sizeof(kAgcLevels[0]); ++i) {
        if (kAgcLevels[i] >= state.global.avcLevel) {
          return static_cast<uint8_t>(i + 1);
        }
      }
      return static_cast<uint8_t>(sizeof(kAgcLevels) / sizeof(kAgcLevels[0]));
    case QuickEditItem::Sql:
      return state.global.squelch;
    case QuickEditItem::Sys:
      if (state.global.sleepTimerMinutes > 0) {
        switch (state.global.sleepTimerMinutes) {
          case 5:
            return 6;
          case 15:
            return 7;
          case 30:
            return 8;
          case 60:
          default:
            return 9;
        }
      }
      if (state.global.wifiMode == WifiMode::Station) {
        return 3;
      }
      if (state.global.wifiMode == WifiMode::AccessPoint) {
        return 4;
      }
      if (state.global.zoomMenu > 0) {
        return 1;
      }
      return 0;
    case QuickEditItem::Avc:
      if (state.radio.modulation == Modulation::FM) {
        return 0;
      }
      return avcIndexFromValue(isSsb(state.radio.modulation) ? state.global.avcSsbLevel : state.global.avcAmLevel);
    case QuickEditItem::Settings:
      return 0;
    case QuickEditItem::Favorite:
      return 0;
    case QuickEditItem::Fine:
      if (!isSsb(state.radio.modulation)) {
        return 0;
      }
      return static_cast<uint8_t>((static_cast<int32_t>(state.radio.bfoHz) - kFineMinHz) / kFineStepHz);
    case QuickEditItem::Mode: {
      const BandDef& band = kBandPlan[state.radio.bandIndex];
      if (band.defaultMode == Modulation::FM && !band.allowSsb) {
        return 0;
      }
      switch (state.radio.modulation) {
        case Modulation::AM:
          return 0;
        case Modulation::LSB:
          return 1;
        case Modulation::USB:
          return 2;
        case Modulation::FM:
        default:
          return 0;
      }
    }
  }
  return 0;
}

inline void formatPopupOption(const AppState& state, QuickEditItem item, uint8_t index, char* out, size_t outSize) {
  switch (item) {
    case QuickEditItem::Band:
      if (index < kBandCount) {
        const BandDef& band = kBandPlan[index];
        const uint16_t minKhz = bandMinKhzFor(band, state.global.fmRegion);
        const uint16_t maxKhz = bandMaxKhzFor(band, state.global.fmRegion);
        snprintf(out, outSize, "%s [%u-%u]",
                 band.name,
                 static_cast<unsigned>(minKhz),
                 static_cast<unsigned>(maxKhz));
      } else {
        snprintf(out, outSize, "?");
      }
      return;
    case QuickEditItem::Step:
      if (state.radio.modulation == Modulation::FM) {
        snprintf(out, outSize, "%ukHz", static_cast<unsigned>(kFmStepOptionsKhz[index]));
      } else {
        snprintf(out, outSize, "%ukHz", static_cast<unsigned>(kAmStepOptionsKhz[index]));
      }
      return;
    case QuickEditItem::Bandwidth: {
      formatBandwidthOption(state.radio, index, out, outSize);
      return;
    }
    case QuickEditItem::Agc:
      if (index == 0) {
        snprintf(out, outSize, "AUTO");
      } else {
        snprintf(out, outSize, "LVL %u", static_cast<unsigned>(kAgcLevels[index - 1]));
      }
      return;
    case QuickEditItem::Sql:
      snprintf(out, outSize, "LEVEL %u", static_cast<unsigned>(index));
      return;
    case QuickEditItem::Avc:
      if (state.radio.modulation == Modulation::FM) {
        snprintf(out, outSize, "N/A FM");
      } else {
        snprintf(out, outSize, "AVC %u", static_cast<unsigned>(avcValueFromIndex(index)));
      }
      return;
    case QuickEditItem::Sys: {
      static const char* kSys[] = {
          "PWR NORM", "PWR SAVE", "WIFI OFF", "WIFI STA", "WIFI AP",
          "SLEEP OFF", "SLEEP 5m", "SLEEP 15m", "SLEEP 30m", "SLEEP 60m"};
      snprintf(out, outSize, "%s", kSys[index]);
      return;
    }
    case QuickEditItem::Settings:
      snprintf(out, outSize, "OPEN SETTINGS");
      return;
    case QuickEditItem::Favorite:
      if (index == 0) {
        snprintf(out, outSize, "SAVE CURRENT");
      } else {
        uint8_t slotIndex = 0;
        if (favoriteSlotByUsedIndex(state, static_cast<uint8_t>(index - 1), &slotIndex)) {
          const MemorySlot& slot = state.memories[slotIndex];
          snprintf(out, outSize, "%s %u", slot.name, static_cast<unsigned>(slot.frequencyKhz));
        } else {
          snprintf(out, outSize, "EMPTY");
        }
      }
      return;
    case QuickEditItem::Fine:
      if (isSsb(state.radio.modulation)) {
        const int16_t bfoHz = static_cast<int16_t>(kFineMinHz + static_cast<int16_t>(index) * kFineStepHz);
        snprintf(out, outSize, "BFO %+d", static_cast<int>(bfoHz));
      } else {
        snprintf(out, outSize, "BFO 0");
      }
      return;
    case QuickEditItem::Mode: {
      const BandDef& band = kBandPlan[state.radio.bandIndex];
      if (band.defaultMode == Modulation::FM && !band.allowSsb) {
        snprintf(out, outSize, "FM");
      } else {
        static const char* kModes[] = {"AM", "LSB", "USB"};
        snprintf(out, outSize, "%s", kModes[index]);
      }
      return;
    }
  }

  snprintf(out, outSize, "?");
}

}  // namespace app::quickedit
