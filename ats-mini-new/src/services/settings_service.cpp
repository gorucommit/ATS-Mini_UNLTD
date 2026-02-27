#include <Arduino.h>
#include <Preferences.h>

#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include "../../include/app_config.h"
#include "../../include/app_services.h"
#include "../../include/bandplan.h"
#include "../../include/etm_scan.h"
#include "../../include/settings_model.h"

namespace services::settings {
namespace {

Preferences g_prefs;
bool g_ready = false;
bool g_dirty = false;
uint32_t g_lastDirtyMs = 0;

constexpr uint32_t kMagic = 0x4154534D;  // ATSM
constexpr uint16_t kSchemaV3 = 3;
constexpr uint16_t kSchemaV2 = 2;
constexpr uint8_t kLegacySchemaV1 = 1;
constexpr char kBlobKey[] = "cfg2";

constexpr int16_t kCalMinHz = -2000;
constexpr int16_t kCalMaxHz = 2000;
constexpr int16_t kMaxSsbTuneOffsetHz = 14000;

constexpr uint8_t kFmBandwidthCount = 5;
constexpr uint8_t kAmBandwidthCount = 7;
constexpr uint8_t kSsbBandwidthCount = 6;

struct PersistedRadioV3 {
  uint8_t bandIndex;
  uint16_t frequencyKhz;
  app::Modulation modulation;
  int16_t ssbTuneOffsetHz;
  uint8_t amStepKhz;
  uint8_t fmStepKhz;
  uint16_t ssbStepHz;
  uint8_t volume;
};

struct PersistedMemorySlotV3 {
  uint8_t used;
  uint32_t frequencyHz;
  uint8_t bandIndex;
  app::Modulation modulation;
  char name[app::kMemoryNameCapacity];
};

struct PersistedPayloadV3 {
  PersistedRadioV3 radio;
  app::GlobalSettings global;
  app::BandRuntimeState perBand[app::kBandCount];
  PersistedMemorySlotV3 memories[app::kMemoryCount];
  app::NetworkCredentials network;
};

struct PersistedBlobV3 {
  uint32_t magic;
  uint16_t schema;
  uint16_t payloadSize;
  uint32_t checksum;
  PersistedPayloadV3 payload;
};

struct PersistedRadioV2 {
  uint8_t bandIndex;
  uint16_t frequencyKhz;
  app::Modulation modulation;
  int16_t bfoHz;
  uint8_t amStepKhz;
  uint8_t fmStepKhz;
  uint8_t volume;
};

using GlobalSettingsV2 = app::GlobalSettings;

struct GlobalSettingsV2Legacy {
  uint8_t volume;
  uint8_t lastBandIndex;

  app::WifiMode wifiMode;
  uint8_t brightness;
  uint8_t agcEnabled;
  uint8_t avcLevel;
  uint8_t softMuteEnabled;
  uint8_t softMuteMaxAttenuation;
  uint16_t sleepTimerMinutes;
  app::SleepMode sleepMode;
  app::Theme theme;
  app::RdsMode rdsMode;
  uint8_t zoomMenu;
  int8_t scrollDirection;
  int16_t utcOffsetMinutes;
  uint8_t squelch;
  app::FmRegion fmRegion;
  app::UiLayout uiLayout;
  app::BleMode bleMode;
  app::UsbMode usbMode;

  uint8_t memoryWriteIndex;
};

struct PersistedMemorySlotV2 {
  uint8_t used;
  uint16_t frequencyKhz;
  uint8_t bandIndex;
  app::Modulation modulation;
  char name[app::kMemoryNameCapacity];
};

struct PersistedPayloadV2 {
  PersistedRadioV2 radio;
  GlobalSettingsV2 global;
  app::BandRuntimeState perBand[app::kBandCount];
  PersistedMemorySlotV2 memories[app::kMemoryCount];
  app::NetworkCredentials network;
};

struct PersistedPayloadV2Legacy {
  PersistedRadioV2 radio;
  GlobalSettingsV2Legacy global;
  app::BandRuntimeState perBand[app::kBandCount];
  PersistedMemorySlotV2 memories[app::kMemoryCount];
  app::NetworkCredentials network;
};

struct PersistedBlobV2 {
  uint32_t magic;
  uint16_t schema;
  uint16_t payloadSize;
  uint32_t checksum;
  PersistedPayloadV2 payload;
};

struct PersistedBlobV2Legacy {
  uint32_t magic;
  uint16_t schema;
  uint16_t payloadSize;
  uint32_t checksum;
  PersistedPayloadV2Legacy payload;
};

template <typename T>
T clampValue(T value, T minValue, T maxValue) {
  if (value < minValue) {
    return minValue;
  }
  if (value > maxValue) {
    return maxValue;
  }
  return value;
}

template <size_t N>
void ensureNullTerminated(char (&value)[N]) {
  if (N == 0) {
    return;
  }
  value[N - 1] = '\0';
}

template <size_t N>
bool isEmptyText(const char (&value)[N]) {
  return N == 0 || value[0] == '\0';
}

app::Modulation sanitizeModulationValue(app::Modulation modulation) {
  const uint8_t raw = static_cast<uint8_t>(modulation);
  if (raw > static_cast<uint8_t>(app::Modulation::AM)) {
    return app::Modulation::AM;
  }
  return modulation;
}

uint8_t bandIndexForId(app::BandId id) {
  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    if (app::kBandPlan[i].id == id) {
      return i;
    }
  }
  return 0;
}

uint8_t inferBandIndexFromFrequency(uint16_t frequencyKhz, app::Modulation modulation) {
  const uint8_t allBand = bandIndexForId(app::BandId::All);

  if (modulation == app::Modulation::FM) {
    return bandIndexForId(app::BandId::FM);
  }

  const uint8_t lwBand = bandIndexForId(app::BandId::LW);
  if (frequencyKhz >= app::kBandPlan[lwBand].minKhz && frequencyKhz <= app::kBandPlan[lwBand].maxKhz) {
    return lwBand;
  }

  const uint8_t mwBand = bandIndexForId(app::BandId::MW);
  if (frequencyKhz >= app::kBandPlan[mwBand].minKhz && frequencyKhz <= app::kBandPlan[mwBand].maxKhz) {
    return mwBand;
  }

  return allBand;
}

uint32_t checksumForBytes(const uint8_t* bytes, size_t length) {
  uint32_t acc = 2166136261u;
  for (size_t i = 0; i < length; ++i) {
    acc ^= bytes[i];
    acc *= 16777619u;
  }
  return acc;
}

uint16_t legacyChecksumFor(const PersistedRadioV2& radio) {
  uint32_t acc = 2166136261u;

  const uint8_t bytes[] = {
      radio.bandIndex,
      static_cast<uint8_t>(radio.modulation),
      static_cast<uint8_t>((radio.frequencyKhz >> 8) & 0xFF),
      static_cast<uint8_t>(radio.frequencyKhz & 0xFF),
      static_cast<uint8_t>((radio.bfoHz >> 8) & 0xFF),
      static_cast<uint8_t>(radio.bfoHz & 0xFF),
      radio.amStepKhz,
      radio.fmStepKhz,
      radio.volume,
  };

  for (uint8_t value : bytes) {
    acc ^= value;
    acc *= 16777619u;
  }

  return static_cast<uint16_t>((acc >> 16) ^ (acc & 0xFFFF));
}

int16_t quantizeCalibrationHz(int16_t value) {
  int32_t clamped = clampValue<int32_t>(value, kCalMinHz, kCalMaxHz);
  if (clamped >= 0) {
    clamped = ((clamped + 5) / 10) * 10;
  } else {
    clamped = ((clamped - 5) / 10) * 10;
  }
  clamped = clampValue<int32_t>(clamped, kCalMinHz, kCalMaxHz);
  return static_cast<int16_t>(clamped);
}

uint8_t nearestSsbStepIndexForHz(uint16_t hz) {
  uint8_t best = 0;
  uint32_t bestDiff = 0xFFFFFFFFUL;
  for (uint8_t i = 0; i < app::kSsbStepOptionCount; ++i) {
    const uint16_t candidate = app::kSsbStepOptionsHz[i];
    const uint32_t diff = candidate > hz ? static_cast<uint32_t>(candidate - hz) : static_cast<uint32_t>(hz - candidate);
    if (diff < bestDiff) {
      bestDiff = diff;
      best = i;
    }
  }
  return best;
}

uint8_t mapLegacySsbStepIndex(uint8_t legacyIndex) {
  const uint16_t legacyHz = static_cast<uint16_t>(app::amStepKhzFromIndex(legacyIndex)) * 1000U;
  return nearestSsbStepIndexForHz(legacyHz);
}

void clearMemorySlot(PersistedMemorySlotV3& slot) {
  slot.used = 0;
  slot.frequencyHz = 0;
  slot.bandIndex = 0;
  slot.modulation = app::Modulation::AM;
  slot.name[0] = '\0';
}

void sanitizeGlobal(app::GlobalSettings& global) {
  global.volume = clampValue<uint8_t>(global.volume, 0, 63);

  if (global.lastBandIndex >= app::kBandCount) {
    global.lastBandIndex = app::defaultFmBandIndex();
  }

  const uint8_t wifiRaw = static_cast<uint8_t>(global.wifiMode);
  if (wifiRaw > static_cast<uint8_t>(app::WifiMode::AccessPoint)) {
    global.wifiMode = app::WifiMode::Off;
  }

  global.brightness = app::settings::clampBrightness(global.brightness);

  global.agcEnabled = global.agcEnabled ? 1 : 0;
  global.avcLevel = clampValue<uint8_t>(global.avcLevel, 0, 63);

  if (global.avcAmLevel < 12 || global.avcAmLevel > 90) {
    global.avcAmLevel = 48;
  }
  if (global.avcAmLevel % 2 != 0) {
    --global.avcAmLevel;
  }
  if (global.avcAmLevel < 12) {
    global.avcAmLevel = 12;
  }

  if (global.avcSsbLevel < 12 || global.avcSsbLevel > 90) {
    global.avcSsbLevel = 48;
  }
  if (global.avcSsbLevel % 2 != 0) {
    --global.avcSsbLevel;
  }
  if (global.avcSsbLevel < 12) {
    global.avcSsbLevel = 12;
  }

  if (global.softMuteAmLevel > 32) {
    global.softMuteAmLevel = 4;
  }
  if (global.softMuteSsbLevel > 32) {
    global.softMuteSsbLevel = 4;
  }

  global.softMuteEnabled = (global.softMuteAmLevel > 0 || global.softMuteSsbLevel > 0) ? 1 : 0;
  global.softMuteMaxAttenuation =
      global.softMuteAmLevel > global.softMuteSsbLevel ? global.softMuteAmLevel : global.softMuteSsbLevel;
  global.sleepTimerMinutes = clampValue<uint16_t>(global.sleepTimerMinutes, 0, 1440);

  const uint8_t sleepRaw = static_cast<uint8_t>(global.sleepMode);
  if (sleepRaw > static_cast<uint8_t>(app::SleepMode::DeepSleep)) {
    global.sleepMode = app::SleepMode::Disabled;
  }

  const uint8_t themeRaw = static_cast<uint8_t>(global.theme);
  if (themeRaw > static_cast<uint8_t>(app::Theme::Light)) {
    global.theme = app::Theme::Classic;
  }

  const uint8_t rdsRaw = static_cast<uint8_t>(global.rdsMode);
  if (rdsRaw > static_cast<uint8_t>(app::RdsMode::All)) {
    global.rdsMode = app::RdsMode::Ps;
  }

  global.zoomMenu = clampValue<uint8_t>(global.zoomMenu, 0, 8);

  if (global.scrollDirection != 1 && global.scrollDirection != -1) {
    global.scrollDirection = 1;
  }

  global.utcOffsetMinutes = clampValue<int16_t>(global.utcOffsetMinutes, -720, 840);
  global.squelch = clampValue<uint8_t>(global.squelch, 0, 63);

  const uint8_t fmRegionRaw = static_cast<uint8_t>(global.fmRegion);
  if (fmRegionRaw > static_cast<uint8_t>(app::FmRegion::Oirt)) {
    global.fmRegion = app::FmRegion::World;
  }

  const uint8_t layoutRaw = static_cast<uint8_t>(global.uiLayout);
  if (layoutRaw > static_cast<uint8_t>(app::UiLayout::Extended)) {
    global.uiLayout = app::UiLayout::Standard;
  }

  const uint8_t bleRaw = static_cast<uint8_t>(global.bleMode);
  if (bleRaw > static_cast<uint8_t>(app::BleMode::On)) {
    global.bleMode = app::BleMode::Off;
  }

  const uint8_t usbRaw = static_cast<uint8_t>(global.usbMode);
  if (usbRaw > static_cast<uint8_t>(app::UsbMode::MassStorage)) {
    global.usbMode = app::UsbMode::Auto;
  }

  const uint8_t sensRaw = static_cast<uint8_t>(global.scanSensitivity);
  if (sensRaw > 1) {
    global.scanSensitivity = app::ScanSensitivity::High;
  }

  const uint8_t speedRaw = static_cast<uint8_t>(global.scanSpeed);
  if (speedRaw > static_cast<uint8_t>(app::ScanSpeed::Thorough)) {
    global.scanSpeed = app::ScanSpeed::Thorough;
  }

  if (global.memoryWriteIndex >= app::kMemoryCount) {
    global.memoryWriteIndex = 0;
  }
}

void migrateLegacyGlobal(const GlobalSettingsV2Legacy& legacy, app::GlobalSettings& global) {
  global.volume = legacy.volume;
  global.lastBandIndex = legacy.lastBandIndex;
  global.wifiMode = legacy.wifiMode;
  global.brightness = app::settings::clampBrightness(legacy.brightness);
  global.agcEnabled = legacy.agcEnabled;
  global.avcLevel = legacy.avcLevel;
  global.softMuteEnabled = legacy.softMuteEnabled;
  global.softMuteMaxAttenuation = legacy.softMuteMaxAttenuation;
  global.sleepTimerMinutes = legacy.sleepTimerMinutes;
  global.sleepMode = legacy.sleepMode;
  global.theme = legacy.theme;
  global.rdsMode = legacy.rdsMode;
  global.zoomMenu = legacy.zoomMenu;
  global.scrollDirection = legacy.scrollDirection;
  global.utcOffsetMinutes = legacy.utcOffsetMinutes;
  global.squelch = legacy.squelch;
  global.fmRegion = legacy.fmRegion;
  global.uiLayout = legacy.uiLayout;
  global.bleMode = legacy.bleMode;
  global.usbMode = legacy.usbMode;
  global.memoryWriteIndex = legacy.memoryWriteIndex;

  global.avcAmLevel = 48;
  global.avcSsbLevel = 48;
  global.scanSensitivity = app::ScanSensitivity::High;
  global.scanSpeed = app::ScanSpeed::Thorough;

  const uint8_t legacySoftMute = legacy.softMuteEnabled ? clampValue<uint8_t>(legacy.softMuteMaxAttenuation, 0, 32) : 0;
  global.softMuteAmLevel = legacySoftMute;
  global.softMuteSsbLevel = legacySoftMute;
}

void sanitizeBandRuntime(uint8_t bandIndex, app::BandRuntimeState& bandState, app::FmRegion region) {
  const app::BandDef& band = app::kBandPlan[bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, region);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, region);

  if (bandState.frequencyKhz < bandMinKhz || bandState.frequencyKhz > bandMaxKhz) {
    bandState.frequencyKhz = app::bandDefaultKhzFor(band, region);
  }

  bandState.modulation = sanitizeModulationValue(bandState.modulation);
  if (!app::bandSupportsModulation(bandIndex, bandState.modulation)) {
    bandState.modulation = band.defaultMode;
  }

  if (bandState.modulation == app::Modulation::FM) {
    bandState.stepIndex = static_cast<uint8_t>(bandState.stepIndex % app::kFmStepOptionCount);
    bandState.bandwidthIndex = static_cast<uint8_t>(bandState.bandwidthIndex % kFmBandwidthCount);
  } else if (app::isSsb(bandState.modulation)) {
    bandState.stepIndex = static_cast<uint8_t>(bandState.stepIndex % app::kSsbStepOptionCount);
    bandState.bandwidthIndex = static_cast<uint8_t>(bandState.bandwidthIndex % kSsbBandwidthCount);
  } else {
    bandState.stepIndex = static_cast<uint8_t>(bandState.stepIndex % app::kAmStepOptionCount);
    bandState.bandwidthIndex = static_cast<uint8_t>(bandState.bandwidthIndex % kAmBandwidthCount);
  }

  bandState.usbCalibrationHz = quantizeCalibrationHz(bandState.usbCalibrationHz);
  bandState.lsbCalibrationHz = quantizeCalibrationHz(bandState.lsbCalibrationHz);

  if (!band.allowSsb) {
    bandState.usbCalibrationHz = 0;
    bandState.lsbCalibrationHz = 0;
  }
}

void sanitizeRadio(PersistedRadioV3& radio, const app::BandRuntimeState* perBand, app::FmRegion region) {
  if (radio.bandIndex >= app::kBandCount) {
    radio.bandIndex = app::defaultFmBandIndex();
  }

  radio.modulation = sanitizeModulationValue(radio.modulation);

  const app::BandDef& band = app::kBandPlan[radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, region);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, region);
  const uint16_t bandDefaultKhz = app::bandDefaultKhzFor(band, region);

  if (!app::bandSupportsModulation(radio.bandIndex, radio.modulation)) {
    radio.modulation = band.defaultMode;
  }

  if (radio.frequencyKhz < bandMinKhz || radio.frequencyKhz > bandMaxKhz) {
    uint16_t fallback = bandDefaultKhz;
    if (perBand != nullptr) {
      const uint16_t candidate = perBand[radio.bandIndex].frequencyKhz;
      if (candidate >= bandMinKhz && candidate <= bandMaxKhz) {
        fallback = candidate;
      }
    }
    radio.frequencyKhz = fallback;
  }

  radio.volume = clampValue<uint8_t>(radio.volume, 0, 63);

  radio.fmStepKhz = app::fmStepKhzFromIndex(app::fmStepIndexFromKhz(radio.fmStepKhz));
  radio.amStepKhz = app::amStepKhzFromIndex(app::amStepIndexFromKhz(radio.amStepKhz));

  if (app::isSsb(radio.modulation)) {
    const uint16_t stepHz = radio.ssbStepHz == 0 ? 1000 : radio.ssbStepHz;
    radio.ssbStepHz = app::ssbStepHzFromIndex(nearestSsbStepIndexForHz(stepHz));
    radio.ssbTuneOffsetHz = clampValue<int16_t>(radio.ssbTuneOffsetHz, -kMaxSsbTuneOffsetHz, kMaxSsbTuneOffsetHz);
  } else {
    radio.ssbTuneOffsetHz = 0;
    radio.ssbStepHz = 1000;
  }
}

bool memoryFrequencyInBandRange(const PersistedMemorySlotV3& slot, app::FmRegion region) {
  if (slot.bandIndex >= app::kBandCount) {
    return false;
  }

  const app::BandDef& band = app::kBandPlan[slot.bandIndex];
  const app::Modulation modulation = sanitizeModulationValue(slot.modulation);
  if (!app::bandSupportsModulation(slot.bandIndex, modulation)) {
    return false;
  }

  if (modulation == app::Modulation::FM) {
    constexpr app::FmRegion kFmRegions[] = {
        app::FmRegion::World,
        app::FmRegion::US,
        app::FmRegion::Japan,
        app::FmRegion::Oirt,
    };
    for (app::FmRegion candidate : kFmRegions) {
      const uint32_t minHz = static_cast<uint32_t>(app::bandMinKhzFor(band, candidate)) * 10000UL;
      const uint32_t maxHz = static_cast<uint32_t>(app::bandMaxKhzFor(band, candidate)) * 10000UL;
      if (slot.frequencyHz >= minHz && slot.frequencyHz <= maxHz) {
        return true;
      }
    }
    return false;
  }

  const uint32_t minHz = static_cast<uint32_t>(app::bandMinKhzFor(band, region)) * 1000UL;
  const uint32_t maxHz = static_cast<uint32_t>(app::bandMaxKhzFor(band, region)) * 1000UL;
  return slot.frequencyHz >= minHz && slot.frequencyHz <= maxHz;
}

void sanitizeMemories(PersistedMemorySlotV3* memories, app::FmRegion region) {
  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    PersistedMemorySlotV3& slot = memories[i];
    ensureNullTerminated(slot.name);
    slot.used = slot.used ? 1 : 0;

    if (!slot.used) {
      slot.name[0] = '\0';
      continue;
    }

    slot.modulation = sanitizeModulationValue(slot.modulation);
    if (!memoryFrequencyInBandRange(slot, region)) {
      clearMemorySlot(slot);
      continue;
    }

    if (isEmptyText(slot.name)) {
      snprintf(slot.name, sizeof(slot.name), "MEM %02u", static_cast<unsigned>(i + 1));
    }
  }
}

void sanitizeNetwork(app::NetworkCredentials& network) {
  ensureNullTerminated(network.webUsername);
  ensureNullTerminated(network.webPassword);

  for (uint8_t i = 0; i < app::kWifiCredentialCount; ++i) {
    app::WifiCredential& entry = network.wifi[i];
    entry.used = entry.used ? 1 : 0;
    ensureNullTerminated(entry.ssid);
    ensureNullTerminated(entry.password);

    if (!entry.used) {
      entry.ssid[0] = '\0';
      entry.password[0] = '\0';
      continue;
    }

    if (isEmptyText(entry.ssid)) {
      entry.used = 0;
      entry.password[0] = '\0';
    }
  }
}

void fillPayloadFromState(const app::AppState& state, PersistedPayloadV3& payload) {
  payload.radio.bandIndex = state.radio.bandIndex;
  payload.radio.frequencyKhz = state.radio.frequencyKhz;
  payload.radio.modulation = state.radio.modulation;
  payload.radio.ssbTuneOffsetHz = state.radio.ssbTuneOffsetHz;
  payload.radio.amStepKhz = state.radio.amStepKhz;
  payload.radio.fmStepKhz = state.radio.fmStepKhz;
  payload.radio.ssbStepHz = state.radio.ssbStepHz;
  payload.radio.volume = state.radio.volume;

  payload.global = state.global;

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    payload.perBand[i] = state.perBand[i];
  }

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    payload.memories[i].used = state.memories[i].used;
    payload.memories[i].frequencyHz = state.memories[i].frequencyHz;
    payload.memories[i].bandIndex = state.memories[i].bandIndex;
    payload.memories[i].modulation = state.memories[i].modulation;
    app::copyText(payload.memories[i].name, state.memories[i].name);
  }

  payload.network = state.network;
}

void syncDerivedFields(PersistedPayloadV3& payload) {
  payload.global.volume = payload.radio.volume;
  payload.global.lastBandIndex = payload.radio.bandIndex;

  if (payload.radio.bandIndex >= app::kBandCount) {
    return;
  }

  app::BandRuntimeState& activeBand = payload.perBand[payload.radio.bandIndex];
  activeBand.frequencyKhz = payload.radio.frequencyKhz;
  activeBand.modulation = payload.radio.modulation;

  if (payload.radio.modulation == app::Modulation::FM) {
    activeBand.stepIndex = app::fmStepIndexFromKhz(payload.radio.fmStepKhz);
  } else if (app::isSsb(payload.radio.modulation)) {
    activeBand.stepIndex = app::ssbStepIndexFromHz(payload.radio.ssbStepHz);
  } else {
    activeBand.stepIndex = app::amStepIndexFromKhz(payload.radio.amStepKhz);
  }
}

void sanitizePayload(PersistedPayloadV3& payload) {
  sanitizeGlobal(payload.global);

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    sanitizeBandRuntime(i, payload.perBand[i], payload.global.fmRegion);
  }

  sanitizeRadio(payload.radio, payload.perBand, payload.global.fmRegion);
  syncDerivedFields(payload);
  sanitizeBandRuntime(payload.radio.bandIndex, payload.perBand[payload.radio.bandIndex], payload.global.fmRegion);
  sanitizeMemories(payload.memories, payload.global.fmRegion);
  sanitizeNetwork(payload.network);
}

void applyPayloadToState(const PersistedPayloadV3& payload, app::AppState& state) {
  state.radio.bandIndex = payload.radio.bandIndex;
  state.radio.frequencyKhz = payload.radio.frequencyKhz;
  state.radio.modulation = payload.radio.modulation;
  state.radio.ssbTuneOffsetHz = payload.radio.ssbTuneOffsetHz;
  state.radio.amStepKhz = payload.radio.amStepKhz;
  state.radio.fmStepKhz = payload.radio.fmStepKhz;
  state.radio.ssbStepHz = payload.radio.ssbStepHz;
  state.radio.volume = payload.radio.volume;

  state.global = payload.global;

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    state.perBand[i] = payload.perBand[i];
  }

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    state.memories[i].used = payload.memories[i].used;
    state.memories[i].frequencyHz = payload.memories[i].frequencyHz;
    state.memories[i].bandIndex = payload.memories[i].bandIndex;
    state.memories[i].modulation = payload.memories[i].modulation;
    app::copyText(state.memories[i].name, payload.memories[i].name);
  }

  state.network = payload.network;
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
  state.seekScan.fineScanActive = false;
  state.seekScan.cursorScanPass = 0;
  state.seekScan.totalPoints = 0;
}

void migrateV2ToV3(const PersistedPayloadV2& source, PersistedPayloadV3& target) {
  target.radio.bandIndex = source.radio.bandIndex;
  target.radio.frequencyKhz = source.radio.frequencyKhz;
  target.radio.modulation = sanitizeModulationValue(source.radio.modulation);
  target.radio.ssbTuneOffsetHz = source.radio.bfoHz;
  target.radio.amStepKhz = source.radio.amStepKhz;
  target.radio.fmStepKhz = source.radio.fmStepKhz;
  target.radio.ssbStepHz = 1000;
  target.radio.volume = source.radio.volume;

  target.global = source.global;

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    target.perBand[i] = source.perBand[i];
    target.perBand[i].modulation = sanitizeModulationValue(target.perBand[i].modulation);
    if (app::isSsb(target.perBand[i].modulation)) {
      target.perBand[i].stepIndex = mapLegacySsbStepIndex(target.perBand[i].stepIndex);
    }
  }

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    const PersistedMemorySlotV2& srcSlot = source.memories[i];
    PersistedMemorySlotV3& dstSlot = target.memories[i];
    dstSlot.used = srcSlot.used ? 1 : 0;
    dstSlot.bandIndex = srcSlot.bandIndex;
    dstSlot.modulation = sanitizeModulationValue(srcSlot.modulation);
    dstSlot.frequencyHz =
        dstSlot.modulation == app::Modulation::FM ? static_cast<uint32_t>(srcSlot.frequencyKhz) * 10000UL
                                                  : static_cast<uint32_t>(srcSlot.frequencyKhz) * 1000UL;
    app::copyText(dstSlot.name, srcSlot.name);
  }

  target.network = source.network;

  if (target.radio.bandIndex < app::kBandCount && app::isSsb(target.radio.modulation)) {
    target.radio.ssbStepHz = app::ssbStepHzFromIndex(target.perBand[target.radio.bandIndex].stepIndex);
  }
}

void migrateV2LegacyToV3(const PersistedPayloadV2Legacy& source, PersistedPayloadV3& target) {
  target.radio.bandIndex = source.radio.bandIndex;
  target.radio.frequencyKhz = source.radio.frequencyKhz;
  target.radio.modulation = sanitizeModulationValue(source.radio.modulation);
  target.radio.ssbTuneOffsetHz = source.radio.bfoHz;
  target.radio.amStepKhz = source.radio.amStepKhz;
  target.radio.fmStepKhz = source.radio.fmStepKhz;
  target.radio.ssbStepHz = 1000;
  target.radio.volume = source.radio.volume;

  migrateLegacyGlobal(source.global, target.global);

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    target.perBand[i] = source.perBand[i];
    target.perBand[i].modulation = sanitizeModulationValue(target.perBand[i].modulation);
    if (app::isSsb(target.perBand[i].modulation)) {
      target.perBand[i].stepIndex = mapLegacySsbStepIndex(target.perBand[i].stepIndex);
    }
  }

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    const PersistedMemorySlotV2& srcSlot = source.memories[i];
    PersistedMemorySlotV3& dstSlot = target.memories[i];
    dstSlot.used = srcSlot.used ? 1 : 0;
    dstSlot.bandIndex = srcSlot.bandIndex;
    dstSlot.modulation = sanitizeModulationValue(srcSlot.modulation);
    dstSlot.frequencyHz =
        dstSlot.modulation == app::Modulation::FM ? static_cast<uint32_t>(srcSlot.frequencyKhz) * 10000UL
                                                  : static_cast<uint32_t>(srcSlot.frequencyKhz) * 1000UL;
    app::copyText(dstSlot.name, srcSlot.name);
  }

  target.network = source.network;

  if (target.radio.bandIndex < app::kBandCount && app::isSsb(target.radio.modulation)) {
    target.radio.ssbStepHz = app::ssbStepHzFromIndex(target.perBand[target.radio.bandIndex].stepIndex);
  }
}

bool loadV3Blob(app::AppState& state) {
  const size_t blobSize = g_prefs.getBytesLength(kBlobKey);
  if (blobSize != sizeof(PersistedBlobV3)) {
    return false;
  }

  PersistedBlobV3 blob{};
  if (g_prefs.getBytes(kBlobKey, &blob, sizeof(blob)) != sizeof(blob)) {
    Serial.println("[settings] failed to read v3 blob");
    return false;
  }

  if (blob.magic != kMagic || blob.schema != kSchemaV3 || blob.payloadSize != sizeof(PersistedPayloadV3)) {
    Serial.println("[settings] invalid v3 header");
    return false;
  }

  const uint32_t expectedChecksum = checksumForBytes(reinterpret_cast<const uint8_t*>(&blob.payload), sizeof(PersistedPayloadV3));
  if (blob.checksum != expectedChecksum) {
    Serial.println("[settings] v3 checksum mismatch");
    return false;
  }

  PersistedPayloadV3 payload = blob.payload;
  sanitizePayload(payload);
  applyPayloadToState(payload, state);

  Serial.println("[settings] restored v3 state");
  return true;
}

bool loadV2Blob(app::AppState& state) {
  const size_t blobSize = g_prefs.getBytesLength(kBlobKey);

  if (blobSize == sizeof(PersistedBlobV2)) {
    PersistedBlobV2 legacyBlob{};
    if (g_prefs.getBytes(kBlobKey, &legacyBlob, sizeof(legacyBlob)) != sizeof(legacyBlob)) {
      Serial.println("[settings] failed to read v2 blob");
      return false;
    }

    if (legacyBlob.magic != kMagic || legacyBlob.schema != kSchemaV2 || legacyBlob.payloadSize != sizeof(PersistedPayloadV2)) {
      Serial.println("[settings] invalid v2 header");
      return false;
    }

    const uint32_t expectedChecksum =
        checksumForBytes(reinterpret_cast<const uint8_t*>(&legacyBlob.payload), sizeof(PersistedPayloadV2));
    if (legacyBlob.checksum != expectedChecksum) {
      Serial.println("[settings] v2 checksum mismatch");
      return false;
    }

    PersistedPayloadV3 migrated{};
    migrateV2ToV3(legacyBlob.payload, migrated);
    sanitizePayload(migrated);
    applyPayloadToState(migrated, state);

    g_dirty = true;
    g_lastDirtyMs = millis() - app::kSettingsSaveDebounceMs;

    Serial.println("[settings] migrated v2 state to v3");
    return true;
  }

  if (blobSize == sizeof(PersistedBlobV2Legacy)) {
    PersistedBlobV2Legacy legacyBlob{};
    if (g_prefs.getBytes(kBlobKey, &legacyBlob, sizeof(legacyBlob)) != sizeof(legacyBlob)) {
      Serial.println("[settings] failed to read legacy-sized v2 blob");
      return false;
    }

    if (legacyBlob.magic != kMagic || legacyBlob.schema != kSchemaV2 ||
        legacyBlob.payloadSize != sizeof(PersistedPayloadV2Legacy)) {
      Serial.println("[settings] invalid legacy-sized v2 header");
      return false;
    }

    const uint32_t expectedChecksum =
        checksumForBytes(reinterpret_cast<const uint8_t*>(&legacyBlob.payload), sizeof(PersistedPayloadV2Legacy));
    if (legacyBlob.checksum != expectedChecksum) {
      Serial.println("[settings] legacy-sized v2 checksum mismatch");
      return false;
    }

    PersistedPayloadV3 migrated{};
    migrateV2LegacyToV3(legacyBlob.payload, migrated);
    sanitizePayload(migrated);
    applyPayloadToState(migrated, state);

    g_dirty = true;
    g_lastDirtyMs = millis() - app::kSettingsSaveDebounceMs;

    Serial.println("[settings] migrated legacy-sized v2 state to v3");
    return true;
  }

  return false;
}

bool loadLegacyV1(app::AppState& state) {
  const uint32_t magic = g_prefs.getUInt("magic", 0);
  const uint8_t schema = g_prefs.getUChar("schema", 0);
  if (magic != kMagic || schema != kLegacySchemaV1) {
    return false;
  }

  PersistedRadioV2 radio{};
  radio.bandIndex = g_prefs.getUChar("band", state.radio.bandIndex);
  radio.frequencyKhz = g_prefs.getUShort("freq", state.radio.frequencyKhz);
  radio.modulation = sanitizeModulationValue(
      static_cast<app::Modulation>(g_prefs.getUChar("mod", static_cast<uint8_t>(state.radio.modulation))));
  radio.bfoHz = g_prefs.getShort("bfo", state.radio.ssbTuneOffsetHz);
  radio.amStepKhz = g_prefs.getUChar("ams", state.radio.amStepKhz);
  radio.fmStepKhz = g_prefs.getUChar("fms", state.radio.fmStepKhz);
  radio.volume = g_prefs.getUChar("vol", state.radio.volume);

  const uint16_t savedChecksum = g_prefs.getUShort("sum", 0);
  if (legacyChecksumFor(radio) != savedChecksum) {
    Serial.println("[settings] legacy checksum mismatch; ignoring legacy state");
    return false;
  }

  if (radio.bandIndex >= app::kBandCount ||
      radio.frequencyKhz < app::bandMinKhzFor(app::kBandPlan[radio.bandIndex], app::FmRegion::World) ||
      radio.frequencyKhz > app::bandMaxKhzFor(app::kBandPlan[radio.bandIndex], app::FmRegion::World) ||
      !app::bandSupportsModulation(radio.bandIndex, radio.modulation)) {
    radio.bandIndex = inferBandIndexFromFrequency(radio.frequencyKhz, radio.modulation);
  }

  PersistedPayloadV3 migrated{};
  fillPayloadFromState(state, migrated);

  migrated.radio.bandIndex = radio.bandIndex;
  migrated.radio.frequencyKhz = radio.frequencyKhz;
  migrated.radio.modulation = radio.modulation;
  migrated.radio.ssbTuneOffsetHz = radio.bfoHz;
  migrated.radio.amStepKhz = radio.amStepKhz;
  migrated.radio.fmStepKhz = radio.fmStepKhz;
  migrated.radio.ssbStepHz = 1000;
  migrated.radio.volume = radio.volume;

  if (migrated.radio.bandIndex < app::kBandCount) {
    app::BandRuntimeState& bandState = migrated.perBand[migrated.radio.bandIndex];
    bandState.frequencyKhz = migrated.radio.frequencyKhz;
    bandState.modulation = migrated.radio.modulation;

    if (migrated.radio.modulation == app::Modulation::FM) {
      bandState.stepIndex = app::fmStepIndexFromKhz(migrated.radio.fmStepKhz);
    } else if (app::isSsb(migrated.radio.modulation)) {
      migrated.radio.ssbStepHz =
          app::ssbStepHzFromIndex(nearestSsbStepIndexForHz(static_cast<uint16_t>(migrated.radio.amStepKhz) * 1000U));
      bandState.stepIndex = app::ssbStepIndexFromHz(migrated.radio.ssbStepHz);
    } else {
      bandState.stepIndex = app::amStepIndexFromKhz(migrated.radio.amStepKhz);
    }
  }

  sanitizePayload(migrated);
  applyPayloadToState(migrated, state);

  g_dirty = true;
  g_lastDirtyMs = millis() - app::kSettingsSaveDebounceMs;

  Serial.println("[settings] migrated legacy v1 state to v3");
  return true;
}

void saveNow(const app::AppState& state) {
  PersistedBlobV3 blob{};
  blob.magic = kMagic;
  blob.schema = kSchemaV3;
  blob.payloadSize = sizeof(PersistedPayloadV3);

  fillPayloadFromState(state, blob.payload);
  sanitizePayload(blob.payload);

  blob.checksum = checksumForBytes(reinterpret_cast<const uint8_t*>(&blob.payload), sizeof(PersistedPayloadV3));

  const size_t written = g_prefs.putBytes(kBlobKey, &blob, sizeof(blob));
  if (written != sizeof(blob)) {
    Serial.println("[settings] save failed");
    return;
  }

  g_dirty = false;
}

}  // namespace

bool begin() {
  if (!g_prefs.begin("ats-mini-new", false)) {
    g_ready = false;
    Serial.println("[settings] init failed");
    return false;
  }

  g_ready = true;
  Serial.println("[settings] initialized");
  return true;
}

bool load(app::AppState& state) {
  if (!g_ready) {
    return false;
  }

  if (loadV3Blob(state)) {
    return true;
  }

  if (loadV2Blob(state)) {
    return true;
  }

  return loadLegacyV1(state);
}

void markDirty() {
  if (!g_ready) {
    return;
  }

  g_dirty = true;
  g_lastDirtyMs = millis();
}

void tick(const app::AppState& state) {
  if (!g_ready || !g_dirty) {
    return;
  }

  if (millis() - g_lastDirtyMs < app::kSettingsSaveDebounceMs) {
    return;
  }

  saveNow(state);
}

}  // namespace services::settings
