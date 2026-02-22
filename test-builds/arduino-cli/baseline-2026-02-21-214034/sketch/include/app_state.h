#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/include/app_state.h"
#pragma once

#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include "bandplan.h"

namespace app {

inline constexpr uint8_t kMemoryCount = 20;
inline constexpr uint8_t kWifiCredentialCount = 3;
inline constexpr size_t kMemoryNameCapacity = 17;
inline constexpr size_t kWebCredentialCapacity = 33;
inline constexpr size_t kWifiSsidCapacity = 33;
inline constexpr size_t kWifiPasswordCapacity = 65;

enum class OperationMode : uint8_t {
  Tune = 0,
  Seek = 1,
  Scan = 2,
};

enum class UiLayer : uint8_t {
  NowPlaying = 0,
  QuickEdit = 1,
  Settings = 2,
  DialPad = 3,
};

enum class QuickEditItem : uint8_t {
  Band = 0,
  Step = 1,
  Bandwidth = 2,
  Agc = 3,
  Sql = 4,
  Sys = 5,
  Settings = 6,
  Favorite = 7,
  Fine = 8,
  Mode = 9,
};

enum class WifiMode : uint8_t {
  Off = 0,
  Station = 1,
  AccessPoint = 2,
};

enum class BleMode : uint8_t {
  Off = 0,
  On = 1,
};

enum class UsbMode : uint8_t {
  Auto = 0,
  Cdc = 1,
  MassStorage = 2,
};

enum class Theme : uint8_t {
  Classic = 0,
  Dark = 1,
  Light = 2,
};

enum class RdsMode : uint8_t {
  Off = 0,
  Basic = 1,
  Full = 2,
};

enum class UiLayout : uint8_t {
  Standard = 0,
  Compact = 1,
  Extended = 2,
};

enum class SleepMode : uint8_t {
  Disabled = 0,
  DisplaySleep = 1,
  DeepSleep = 2,
};

struct RadioState {
  uint8_t bandIndex;
  uint16_t frequencyKhz;
  Modulation modulation;
  int16_t bfoHz;
  uint8_t amStepKhz;
  uint8_t fmStepKhz;
  uint8_t volume;
};

struct UiState {
  OperationMode operation;
  OperationMode quickEditParent;
  UiLayer layer;
  QuickEditItem quickEditItem;
  bool quickEditEditing;
  uint8_t quickEditPopupIndex;
  bool settingsChipArmed;
  bool muted;
};

struct SeekScanState {
  bool active;
  bool seeking;
  bool scanning;
  int8_t direction;
  uint16_t bestFrequencyKhz;
  uint8_t bestRssi;
  uint16_t pointsVisited;
  uint8_t foundCount;
  int16_t foundIndex;
};

struct GlobalSettings {
  uint8_t volume;
  uint8_t lastBandIndex;

  WifiMode wifiMode;
  uint8_t brightness;
  uint8_t agcEnabled;
  uint8_t avcLevel;
  uint8_t softMuteEnabled;
  uint8_t softMuteMaxAttenuation;
  uint16_t sleepTimerMinutes;
  SleepMode sleepMode;
  Theme theme;
  RdsMode rdsMode;
  uint8_t zoomMenu;
  int8_t scrollDirection;
  int16_t utcOffsetMinutes;
  uint8_t squelch;
  FmRegion fmRegion;
  UiLayout uiLayout;
  BleMode bleMode;
  UsbMode usbMode;

  uint8_t memoryWriteIndex;
};

struct BandRuntimeState {
  uint16_t frequencyKhz;
  Modulation modulation;
  uint8_t stepIndex;
  uint8_t bandwidthIndex;
  int16_t usbCalibrationHz;
  int16_t lsbCalibrationHz;
};

struct MemorySlot {
  uint8_t used;
  uint16_t frequencyKhz;
  uint8_t bandIndex;
  Modulation modulation;
  char name[kMemoryNameCapacity];
};

struct WifiCredential {
  uint8_t used;
  char ssid[kWifiSsidCapacity];
  char password[kWifiPasswordCapacity];
};

struct NetworkCredentials {
  char webUsername[kWebCredentialCapacity];
  char webPassword[kWebCredentialCapacity];
  WifiCredential wifi[kWifiCredentialCount];
};

struct AppState {
  RadioState radio;
  UiState ui;
  SeekScanState seekScan;
  GlobalSettings global;
  BandRuntimeState perBand[kBandCount];
  MemorySlot memories[kMemoryCount];
  NetworkCredentials network;
};

template <size_t N>
inline void copyText(char (&dst)[N], const char* src) {
  if (N == 0) {
    return;
  }

  if (src == nullptr) {
    dst[0] = '\0';
    return;
  }

  strncpy(dst, src, N - 1);
  dst[N - 1] = '\0';
}

inline constexpr bool isSsb(Modulation modulation) {
  return modulation == Modulation::LSB || modulation == Modulation::USB;
}

inline constexpr bool bandSupportsModulation(uint8_t bandIndex, Modulation modulation) {
  if (bandIndex >= kBandCount) {
    return false;
  }

  const BandDef& band = kBandPlan[bandIndex];

  if (modulation == Modulation::FM) {
    return band.defaultMode == Modulation::FM && !band.allowSsb;
  }

  if (modulation == Modulation::AM) {
    return band.defaultMode != Modulation::FM;
  }

  return band.allowSsb;
}

inline constexpr uint8_t kFmStepOptionsKhz[] = {5, 10, 20};
inline constexpr uint8_t kAmStepOptionsKhz[] = {1, 5, 9, 10};

inline constexpr size_t kFmStepOptionCount = sizeof(kFmStepOptionsKhz) / sizeof(kFmStepOptionsKhz[0]);
inline constexpr size_t kAmStepOptionCount = sizeof(kAmStepOptionsKhz) / sizeof(kAmStepOptionsKhz[0]);

inline constexpr uint8_t stepIndexFromKhz(const uint8_t* options, size_t count, uint8_t stepKhz) {
  for (size_t i = 0; i < count; ++i) {
    if (options[i] == stepKhz) {
      return static_cast<uint8_t>(i);
    }
  }
  return 0;
}

inline constexpr uint8_t stepKhzFromIndex(const uint8_t* options, size_t count, uint8_t stepIndex) {
  return count == 0 ? 1 : options[stepIndex % count];
}

inline constexpr uint8_t fmStepIndexFromKhz(uint8_t stepKhz) {
  return stepIndexFromKhz(kFmStepOptionsKhz, kFmStepOptionCount, stepKhz);
}

inline constexpr uint8_t amStepIndexFromKhz(uint8_t stepKhz) {
  return stepIndexFromKhz(kAmStepOptionsKhz, kAmStepOptionCount, stepKhz);
}

inline constexpr uint8_t fmStepKhzFromIndex(uint8_t stepIndex) {
  return stepKhzFromIndex(kFmStepOptionsKhz, kFmStepOptionCount, stepIndex);
}

inline constexpr uint8_t amStepKhzFromIndex(uint8_t stepIndex) {
  return stepKhzFromIndex(kAmStepOptionsKhz, kAmStepOptionCount, stepIndex);
}

inline constexpr uint8_t defaultFmBandIndex() {
  for (uint8_t i = 0; i < kBandCount; ++i) {
    if (kBandPlan[i].defaultMode == Modulation::FM && !kBandPlan[i].allowSsb) {
      return i;
    }
  }
  return 0;
}

inline constexpr bool isHamBandId(BandId id) {
  switch (id) {
    case BandId::HAM160m:
    case BandId::HAM80m:
    case BandId::HAM60m:
    case BandId::HAM40m:
    case BandId::HAM30m:
    case BandId::HAM20m:
    case BandId::HAM17m:
    case BandId::HAM15m:
    case BandId::HAM12m:
    case BandId::HAM10m:
      return true;
    default:
      return false;
  }
}

inline constexpr uint8_t defaultStepIndexForBand(const BandDef& band, FmRegion region = FmRegion::World) {
  if (band.defaultMode == Modulation::FM) {
    // signalscale FM default step: 100kHz.
    return fmStepIndexFromKhz(10);
  }

  if (isHamBandId(band.id) || band.id == BandId::CB) {
    // signalscale SSB/CB defaults: 1kHz.
    return amStepIndexFromKhz(1);
  }

  if (band.id == BandId::MW || band.id == BandId::LW) {
    return amStepIndexFromKhz(defaultMwStepKhzForRegion(region));
  }

  // signalscale AM broadcast/ALL default step: 5kHz.
  return amStepIndexFromKhz(5);
}

inline constexpr uint8_t defaultBandwidthIndexForBand(const BandDef& band) {
  if (band.defaultMode == Modulation::FM) {
    // signalscale FM default bandwidth: Auto.
    return 0;
  }

  // signalscale AM/SSB default bandwidth index points to 3.0k.
  return 4;
}

inline void setBandRuntimeDefaults(uint8_t bandIndex, BandRuntimeState& bandState, FmRegion region = FmRegion::World) {
  const BandDef& band = kBandPlan[bandIndex];
  bandState.frequencyKhz = bandDefaultKhzFor(band, region);
  bandState.modulation = band.defaultMode;
  bandState.stepIndex = defaultStepIndexForBand(band, region);
  bandState.bandwidthIndex = defaultBandwidthIndexForBand(band);
  bandState.usbCalibrationHz = 0;
  bandState.lsbCalibrationHz = 0;
}

inline void syncPersistentStateFromRadio(AppState& state) {
  if (state.radio.bandIndex >= kBandCount) {
    return;
  }

  state.global.volume = state.radio.volume;
  state.global.lastBandIndex = state.radio.bandIndex;

  BandRuntimeState& bandState = state.perBand[state.radio.bandIndex];
  bandState.frequencyKhz = state.radio.frequencyKhz;
  bandState.modulation = state.radio.modulation;

  if (state.radio.modulation == Modulation::FM) {
    bandState.stepIndex = fmStepIndexFromKhz(state.radio.fmStepKhz);
  } else {
    bandState.stepIndex = amStepIndexFromKhz(state.radio.amStepKhz);
  }

  if (state.radio.modulation == Modulation::USB) {
    bandState.usbCalibrationHz = state.radio.bfoHz;
  } else if (state.radio.modulation == Modulation::LSB) {
    bandState.lsbCalibrationHz = state.radio.bfoHz;
  }
}

inline void applyBandRuntimeToRadio(AppState& state, uint8_t bandIndex) {
  if (bandIndex >= kBandCount) {
    return;
  }

  const BandDef& band = kBandPlan[bandIndex];
  const BandRuntimeState& bandState = state.perBand[bandIndex];
  const uint16_t bandMinKhz = bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = bandMaxKhzFor(band, state.global.fmRegion);
  const uint16_t bandDefaultKhz = bandDefaultKhzFor(band, state.global.fmRegion);

  state.radio.bandIndex = bandIndex;
  state.radio.frequencyKhz = bandState.frequencyKhz;
  state.radio.modulation = bandState.modulation;

  if (state.radio.modulation == Modulation::FM) {
    state.radio.fmStepKhz = fmStepKhzFromIndex(bandState.stepIndex);
    state.radio.bfoHz = 0;
  } else {
    state.radio.amStepKhz = amStepKhzFromIndex(bandState.stepIndex);
    if (state.radio.modulation == Modulation::USB) {
      state.radio.bfoHz = bandState.usbCalibrationHz;
    } else if (state.radio.modulation == Modulation::LSB) {
      state.radio.bfoHz = bandState.lsbCalibrationHz;
    } else {
      state.radio.bfoHz = 0;
    }
  }

  if (!bandSupportsModulation(bandIndex, state.radio.modulation)) {
    state.radio.modulation = band.defaultMode;
    state.radio.bfoHz = 0;
  }

  if (state.radio.frequencyKhz < bandMinKhz || state.radio.frequencyKhz > bandMaxKhz) {
    state.radio.frequencyKhz = bandDefaultKhz;
  }
}

inline AppState makeDefaultState() {
  AppState state{};

  state.radio.bandIndex = defaultFmBandIndex();
  state.radio.frequencyKhz = 9040;
  state.radio.modulation = Modulation::FM;
  state.radio.bfoHz = 0;
  state.radio.amStepKhz = 1;
  state.radio.fmStepKhz = 10;
  state.radio.volume = 35;

  state.ui.operation = OperationMode::Tune;
  state.ui.quickEditParent = OperationMode::Tune;
  state.ui.layer = UiLayer::NowPlaying;
  state.ui.quickEditItem = QuickEditItem::Mode;
  state.ui.quickEditEditing = false;
  state.ui.quickEditPopupIndex = 0;
  state.ui.settingsChipArmed = false;
  state.ui.muted = false;

  state.seekScan.active = false;
  state.seekScan.seeking = false;
  state.seekScan.scanning = false;
  state.seekScan.direction = 1;
  state.seekScan.bestFrequencyKhz = state.radio.frequencyKhz;
  state.seekScan.bestRssi = 0;
  state.seekScan.pointsVisited = 0;
  state.seekScan.foundCount = 0;
  state.seekScan.foundIndex = -1;

  state.global.volume = state.radio.volume;
  state.global.lastBandIndex = state.radio.bandIndex;
  state.global.wifiMode = WifiMode::Off;
  state.global.brightness = 180;
  state.global.agcEnabled = 1;
  state.global.avcLevel = 0;
  state.global.softMuteEnabled = 1;
  state.global.softMuteMaxAttenuation = 8;
  state.global.sleepTimerMinutes = 0;
  state.global.sleepMode = SleepMode::Disabled;
  state.global.theme = Theme::Classic;
  state.global.rdsMode = RdsMode::Basic;
  state.global.zoomMenu = 0;
  state.global.scrollDirection = 1;
  state.global.utcOffsetMinutes = 0;
  state.global.squelch = 0;
  state.global.fmRegion = FmRegion::World;
  state.global.uiLayout = UiLayout::Standard;
  state.global.bleMode = BleMode::Off;
  state.global.usbMode = UsbMode::Auto;
  state.global.memoryWriteIndex = 0;

  for (uint8_t i = 0; i < kBandCount; ++i) {
    setBandRuntimeDefaults(i, state.perBand[i], state.global.fmRegion);
  }
  syncPersistentStateFromRadio(state);

  for (uint8_t i = 0; i < kMemoryCount; ++i) {
    state.memories[i].used = 0;
    state.memories[i].frequencyKhz = 0;
    state.memories[i].bandIndex = 0;
    state.memories[i].modulation = Modulation::AM;
    state.memories[i].name[0] = '\0';
  }

  copyText(state.network.webUsername, "admin");
  copyText(state.network.webPassword, "admin");

  for (uint8_t i = 0; i < kWifiCredentialCount; ++i) {
    state.network.wifi[i].used = 0;
    state.network.wifi[i].ssid[0] = '\0';
    state.network.wifi[i].password[0] = '\0';
  }

  return state;
}

}  // namespace app
