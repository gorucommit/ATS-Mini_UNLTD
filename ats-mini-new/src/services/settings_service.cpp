#include <Arduino.h>
#include <Preferences.h>

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
constexpr uint16_t kSchemaV2 = 2;
constexpr uint8_t kLegacySchemaV1 = 1;
constexpr char kBlobKey[] = "cfg2";

struct PersistedPayloadV2 {
  app::RadioState radio;
  app::GlobalSettings global;
  app::BandRuntimeState perBand[app::kBandCount];
  app::MemorySlot memories[app::kMemoryCount];
  app::NetworkCredentials network;
};

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

struct PersistedPayloadV2Legacy {
  app::RadioState radio;
  GlobalSettingsV2Legacy global;
  app::BandRuntimeState perBand[app::kBandCount];
  app::MemorySlot memories[app::kMemoryCount];
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

uint16_t legacyChecksumFor(const app::RadioState& radio) {
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

void clearMemorySlot(app::MemorySlot& slot) {
  slot.used = 0;
  slot.frequencyKhz = 0;
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

  const uint8_t legacySoftMute = (legacy.softMuteEnabled ? clampValue<uint8_t>(legacy.softMuteMaxAttenuation, 0, 32) : 0);
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

  if (!app::bandSupportsModulation(bandIndex, bandState.modulation)) {
    bandState.modulation = band.defaultMode;
  }

  if (bandState.modulation == app::Modulation::FM) {
    bandState.stepIndex = static_cast<uint8_t>(bandState.stepIndex % app::kFmStepOptionCount);
  } else {
    bandState.stepIndex = static_cast<uint8_t>(bandState.stepIndex % app::kAmStepOptionCount);
  }

  bandState.bandwidthIndex = clampValue<uint8_t>(bandState.bandwidthIndex, 0, 15);
  bandState.usbCalibrationHz = clampValue<int16_t>(bandState.usbCalibrationHz, -1999, 1999);
  bandState.lsbCalibrationHz = clampValue<int16_t>(bandState.lsbCalibrationHz, -1999, 1999);

  if (!band.allowSsb) {
    bandState.usbCalibrationHz = 0;
    bandState.lsbCalibrationHz = 0;
  }
}

void sanitizeRadio(app::RadioState& radio, const app::BandRuntimeState* perBand, app::FmRegion region) {
  if (radio.bandIndex >= app::kBandCount) {
    radio.bandIndex = app::defaultFmBandIndex();
  }

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

  if (radio.modulation == app::Modulation::FM) {
    radio.fmStepKhz = app::fmStepKhzFromIndex(app::fmStepIndexFromKhz(radio.fmStepKhz));
    radio.bfoHz = 0;
  } else {
    radio.amStepKhz = app::amStepKhzFromIndex(app::amStepIndexFromKhz(radio.amStepKhz));
    if (!app::isSsb(radio.modulation)) {
      radio.bfoHz = 0;
    } else {
      radio.bfoHz = clampValue<int16_t>(radio.bfoHz, -1999, 1999);
    }
  }
}

void sanitizeMemories(app::MemorySlot* memories, app::FmRegion region) {
  auto frequencyInBandRange = [region](const app::BandDef& band, uint16_t frequencyKhz) {
    if (band.id != app::BandId::FM) {
      const uint16_t bandMinKhz = app::bandMinKhzFor(band, region);
      const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, region);
      return frequencyKhz >= bandMinKhz && frequencyKhz <= bandMaxKhz;
    }

    // Keep FM memories valid across region switches (do not erase out-of-region presets).
    constexpr app::FmRegion kFmRegions[] = {
        app::FmRegion::World,
        app::FmRegion::US,
        app::FmRegion::Japan,
        app::FmRegion::Oirt,
    };
    for (app::FmRegion candidate : kFmRegions) {
      const uint16_t bandMinKhz = app::bandMinKhzFor(band, candidate);
      const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, candidate);
      if (frequencyKhz >= bandMinKhz && frequencyKhz <= bandMaxKhz) {
        return true;
      }
    }
    return false;
  };

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    app::MemorySlot& slot = memories[i];
    ensureNullTerminated(slot.name);
    slot.used = slot.used ? 1 : 0;

    if (!slot.used) {
      slot.name[0] = '\0';
      continue;
    }

    if (slot.bandIndex >= app::kBandCount) {
      clearMemorySlot(slot);
      continue;
    }

    const app::BandDef& band = app::kBandPlan[slot.bandIndex];
    if (!frequencyInBandRange(band, slot.frequencyKhz)) {
      clearMemorySlot(slot);
      continue;
    }

    if (!app::bandSupportsModulation(slot.bandIndex, slot.modulation)) {
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

void fillPayloadFromState(const app::AppState& state, PersistedPayloadV2& payload) {
  payload.radio = state.radio;
  payload.global = state.global;

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    payload.perBand[i] = state.perBand[i];
  }

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    payload.memories[i] = state.memories[i];
  }

  payload.network = state.network;
}

void syncDerivedFields(PersistedPayloadV2& payload) {
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
  } else {
    activeBand.stepIndex = app::amStepIndexFromKhz(payload.radio.amStepKhz);
  }

  if (payload.radio.modulation == app::Modulation::USB) {
    activeBand.usbCalibrationHz = payload.radio.bfoHz;
  } else if (payload.radio.modulation == app::Modulation::LSB) {
    activeBand.lsbCalibrationHz = payload.radio.bfoHz;
  }
}

void sanitizePayload(PersistedPayloadV2& payload) {
  sanitizeGlobal(payload.global);

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    sanitizeBandRuntime(i, payload.perBand[i], payload.global.fmRegion);
  }

  sanitizeRadio(payload.radio, payload.perBand, payload.global.fmRegion);
  syncDerivedFields(payload);
  sanitizeMemories(payload.memories, payload.global.fmRegion);
  sanitizeNetwork(payload.network);
}

void applyPayloadToState(const PersistedPayloadV2& payload, app::AppState& state) {
  state.radio = payload.radio;
  state.global = payload.global;

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    state.perBand[i] = payload.perBand[i];
  }

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    state.memories[i] = payload.memories[i];
  }

  state.network = payload.network;
  state.ui.muted = false;

  state.seekScan.active = false;
  state.seekScan.seeking = false;
  state.seekScan.scanning = false;
  state.seekScan.bestFrequencyKhz = state.radio.frequencyKhz;
  state.seekScan.bestRssi = 0;
  state.seekScan.pointsVisited = 0;
  state.seekScan.foundCount = 0;
  state.seekScan.foundIndex = -1;
  state.seekScan.fineScanActive = false;
  state.seekScan.cursorScanPass = 0;
  state.seekScan.totalPoints = 0;
}

bool loadV2Blob(app::AppState& state) {
  const size_t blobSize = g_prefs.getBytesLength(kBlobKey);
  if (blobSize == sizeof(PersistedBlobV2)) {
    PersistedBlobV2 blob{};
    if (g_prefs.getBytes(kBlobKey, &blob, sizeof(blob)) != sizeof(blob)) {
      Serial.println("[settings] failed to read v2 blob");
      return false;
    }

    if (blob.magic != kMagic || blob.schema != kSchemaV2 || blob.payloadSize != sizeof(PersistedPayloadV2)) {
      Serial.println("[settings] invalid v2 header");
      return false;
    }

    const uint32_t expectedChecksum =
        checksumForBytes(reinterpret_cast<const uint8_t*>(&blob.payload), sizeof(PersistedPayloadV2));
    if (blob.checksum != expectedChecksum) {
      Serial.println("[settings] v2 checksum mismatch");
      return false;
    }

    PersistedPayloadV2 payload = blob.payload;
    sanitizePayload(payload);
    applyPayloadToState(payload, state);

    Serial.println("[settings] restored v2 state");
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

    PersistedPayloadV2 payload{};
    payload.radio = legacyBlob.payload.radio;
    migrateLegacyGlobal(legacyBlob.payload.global, payload.global);
    for (uint8_t i = 0; i < app::kBandCount; ++i) {
      payload.perBand[i] = legacyBlob.payload.perBand[i];
    }
    for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
      payload.memories[i] = legacyBlob.payload.memories[i];
    }
    payload.network = legacyBlob.payload.network;

    sanitizePayload(payload);
    applyPayloadToState(payload, state);

    g_dirty = true;
    g_lastDirtyMs = millis() - app::kSettingsSaveDebounceMs;

    Serial.println("[settings] migrated legacy-sized v2 blob");
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

  app::RadioState radio = state.radio;
  radio.bandIndex = g_prefs.getUChar("band", radio.bandIndex);
  radio.frequencyKhz = g_prefs.getUShort("freq", radio.frequencyKhz);
  radio.modulation = static_cast<app::Modulation>(g_prefs.getUChar("mod", static_cast<uint8_t>(radio.modulation)));
  radio.bfoHz = g_prefs.getShort("bfo", radio.bfoHz);
  radio.amStepKhz = g_prefs.getUChar("ams", radio.amStepKhz);
  radio.fmStepKhz = g_prefs.getUChar("fms", radio.fmStepKhz);
  radio.volume = g_prefs.getUChar("vol", radio.volume);

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

  state.radio = radio;
  app::syncPersistentStateFromRadio(state);

  PersistedPayloadV2 migratedPayload{};
  fillPayloadFromState(state, migratedPayload);
  sanitizePayload(migratedPayload);
  applyPayloadToState(migratedPayload, state);

  g_dirty = true;
  g_lastDirtyMs = millis() - app::kSettingsSaveDebounceMs;

  Serial.println("[settings] migrated legacy v1 state to v2");
  return true;
}

void saveNow(const app::AppState& state) {
  PersistedBlobV2 blob{};
  blob.magic = kMagic;
  blob.schema = kSchemaV2;
  blob.payloadSize = sizeof(PersistedPayloadV2);

  fillPayloadFromState(state, blob.payload);
  sanitizePayload(blob.payload);

  blob.checksum = checksumForBytes(reinterpret_cast<const uint8_t*>(&blob.payload), sizeof(PersistedPayloadV2));

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
