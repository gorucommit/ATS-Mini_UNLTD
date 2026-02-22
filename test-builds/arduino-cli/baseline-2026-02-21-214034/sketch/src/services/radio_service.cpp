#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/src/services/radio_service.cpp"
#include <Arduino.h>
#include <SI4735.h>
#include <Wire.h>

#include "../../include/app_config.h"
#include "../../include/app_services.h"
#include "../../include/bandplan.h"
#include "../../include/hardware_pins.h"
#include "../../include/patch_init.h"

namespace services::radio {
namespace {
SI4735 g_rx;
bool g_ready = false;
bool g_hasAppliedState = false;
bool g_ssbPatchLoaded = false;
bool g_seekAborted = false;
bool g_muted = false;
bool g_bootPowerPrepared = false;
bool g_i2cStarted = false;
uint32_t g_powerOnMs = 0;

const char* g_lastError = "not-initialized";
app::RadioState g_lastApplied{};
app::FmRegion g_lastAppliedRegion = app::FmRegion::World;
bool g_hasRuntimeSnapshot = false;

struct RuntimeSnapshot {
  uint8_t bandIndex;
  app::Modulation modulation;
  uint8_t bandwidthIndex;
  uint8_t agcEnabled;
  uint8_t agcLevel;
  uint8_t squelch;
  uint8_t softMuteEnabled;
  uint8_t softMuteMaxAttenuation;
  uint8_t zoomMenu;
  app::FmRegion fmRegion;
};

RuntimeSnapshot g_lastRuntime{};

inline uint8_t ssbMode(app::Modulation modulation) {
  return modulation == app::Modulation::LSB ? 1 : 2;
}

inline void setAmpEnabled(bool enabled) {
  digitalWrite(hw::kPinAmpEnable, enabled ? HIGH : LOW);
}

uint8_t clampU8(uint8_t value, uint8_t minValue, uint8_t maxValue) {
  if (value < minValue) {
    return minValue;
  }
  if (value > maxValue) {
    return maxValue;
  }
  return value;
}

uint8_t mapAmBandwidthIndex(uint8_t quickIndex) {
  static constexpr uint8_t kAmBwMap[] = {
      4,  // 1.0k
      5,  // 1.8k
      3,  // 2.0k
      6,  // 2.5k
      2,  // 3.0k
      1,  // 4.0k
      0,  // 6.0k
  };

  return kAmBwMap[quickIndex % (sizeof(kAmBwMap) / sizeof(kAmBwMap[0]))];
}

uint8_t mapSsbBandwidthIndex(uint8_t quickIndex) {
  static constexpr uint8_t kSsbBwMap[] = {
      4,  // 0.5k
      5,  // 1.0k
      0,  // 1.2k
      1,  // 2.2k
      2,  // 3.0k
      3,  // 4.0k
  };

  return kSsbBwMap[quickIndex % (sizeof(kSsbBwMap) / sizeof(kSsbBwMap[0]))];
}

uint8_t effectiveSoftMuteAttenuation(const app::GlobalSettings& global) {
  uint8_t attenuation = global.softMuteEnabled ? global.softMuteMaxAttenuation : 0;
  attenuation = clampU8(attenuation, 0, 32);

  // "PWR SAVE" profile increases soft-mute attenuation for reduced background noise.
  if (global.zoomMenu > 0 && attenuation > 0) {
    attenuation = clampU8(static_cast<uint8_t>(attenuation + 8), 0, 32);
  }

  return attenuation;
}

void applyBandwidthSetting(const app::AppState& state) {
  if (state.radio.bandIndex >= app::kBandCount) {
    return;
  }

  const uint8_t bwIndex = state.perBand[state.radio.bandIndex].bandwidthIndex;
  if (state.radio.modulation == app::Modulation::FM) {
    g_rx.setFmBandwidth(clampU8(bwIndex, 0, 4));
    return;
  }

  if (app::isSsb(state.radio.modulation)) {
    g_rx.setSSBAudioBandwidth(mapSsbBandwidthIndex(bwIndex));
    return;
  }

  g_rx.setBandwidth(mapAmBandwidthIndex(bwIndex), 0);
}

void applyAgcSetting(const app::AppState& state) {
  if (state.global.agcEnabled) {
    g_rx.setAutomaticGainControl(0, 0);
    return;
  }

  uint8_t agcIndex = state.global.avcLevel;
  if (state.radio.modulation == app::Modulation::FM) {
    agcIndex = clampU8(agcIndex, 0, 26);
  }

  g_rx.setAutomaticGainControl(1, agcIndex);
}

void applySquelchSetting(const app::AppState& state) {
  const uint8_t sql = clampU8(state.global.squelch, 0, 63);
  uint8_t attenuation = effectiveSoftMuteAttenuation(state.global);
  if (sql == 0) {
    attenuation = 0;
  } else if (attenuation == 0) {
    attenuation = 8;
  }

  if (state.radio.modulation == app::Modulation::FM) {
    g_rx.setFmSoftMuteMaxAttenuation(attenuation);
    return;
  }

  g_rx.setAmSoftMuteMaxAttenuation(attenuation);
  g_rx.setAMSoftMuteSnrThreshold(sql);
}

void applyRegionSetting(const app::AppState& state) {
  if (state.radio.modulation != app::Modulation::FM) {
    return;
  }

  const uint8_t deemphasis = app::fmDeemphasisUsForRegion(state.global.fmRegion) == 75 ? 2 : 1;
  g_rx.setFMDeEmphasis(deemphasis);
}

void applyPowerProfile(const app::AppState& state) {
  if (state.radio.modulation == app::Modulation::FM) {
    return;
  }

  if (state.global.zoomMenu > 0) {
    g_rx.setAvcAmMaxGain(24);
  } else {
    g_rx.setAvcAmDefaultGain();
  }
}

uint8_t runtimeBandwidthIndex(const app::AppState& state) {
  if (state.radio.bandIndex >= app::kBandCount) {
    return 0;
  }
  return state.perBand[state.radio.bandIndex].bandwidthIndex;
}

uint8_t runtimeAgcLevel(const app::AppState& state) {
  if (state.radio.modulation == app::Modulation::FM) {
    return clampU8(state.global.avcLevel, 0, 26);
  }
  return state.global.avcLevel;
}

bool runtimeSnapshotMatches(const app::AppState& state) {
  if (!g_hasRuntimeSnapshot) {
    return false;
  }

  return g_lastRuntime.bandIndex == state.radio.bandIndex &&
         g_lastRuntime.modulation == state.radio.modulation &&
         g_lastRuntime.bandwidthIndex == runtimeBandwidthIndex(state) &&
         g_lastRuntime.agcEnabled == static_cast<uint8_t>(state.global.agcEnabled ? 1 : 0) &&
         g_lastRuntime.agcLevel == runtimeAgcLevel(state) &&
         g_lastRuntime.squelch == state.global.squelch &&
         g_lastRuntime.softMuteEnabled == static_cast<uint8_t>(state.global.softMuteEnabled ? 1 : 0) &&
         g_lastRuntime.softMuteMaxAttenuation == state.global.softMuteMaxAttenuation &&
         g_lastRuntime.zoomMenu == state.global.zoomMenu &&
         g_lastRuntime.fmRegion == state.global.fmRegion;
}

void updateRuntimeSnapshot(const app::AppState& state) {
  g_lastRuntime.bandIndex = state.radio.bandIndex;
  g_lastRuntime.modulation = state.radio.modulation;
  g_lastRuntime.bandwidthIndex = runtimeBandwidthIndex(state);
  g_lastRuntime.agcEnabled = static_cast<uint8_t>(state.global.agcEnabled ? 1 : 0);
  g_lastRuntime.agcLevel = runtimeAgcLevel(state);
  g_lastRuntime.squelch = state.global.squelch;
  g_lastRuntime.softMuteEnabled = static_cast<uint8_t>(state.global.softMuteEnabled ? 1 : 0);
  g_lastRuntime.softMuteMaxAttenuation = state.global.softMuteMaxAttenuation;
  g_lastRuntime.zoomMenu = state.global.zoomMenu;
  g_lastRuntime.fmRegion = state.global.fmRegion;
  g_hasRuntimeSnapshot = true;
}

void configureSeekProperties(const app::AppState& state) {
  const app::RadioState& radio = state.radio;
  const app::BandDef& band = app::kBandPlan[radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);

  if (radio.modulation == app::Modulation::FM) {
    g_rx.setSeekFmLimits(bandMinKhz, bandMaxKhz);
    g_rx.setSeekFmSpacing(radio.fmStepKhz);
    g_rx.setSeekFmSNRThreshold(2);
    g_rx.setSeekFmRssiThreshold(5);
    return;
  }

  if (radio.modulation == app::Modulation::AM) {
    g_rx.setSeekAmLimits(bandMinKhz, bandMaxKhz);
    g_rx.setSeekAmSpacing(radio.amStepKhz);
    g_rx.setSeekAmSNRThreshold(3);
    g_rx.setSeekAmRssiThreshold(10);
  }
}

void applyMuteState() { g_rx.setAudioMute(g_muted ? 1 : 0); }

uint8_t mwSearchSpacingKhzFor(const app::FmRegion region) {
  return app::defaultMwStepKhzForRegion(region);
}

uint8_t seekSpacingKhzFor(const app::AppState& state) {
  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];

  if (state.radio.modulation == app::Modulation::FM) {
    return 10;  // 100kHz FM seek spacing.
  }

  if (band.id == app::BandId::MW || band.id == app::BandId::LW) {
    return mwSearchSpacingKhzFor(state.global.fmRegion);
  }

  // SW and other AM-family searches use fixed 5kHz spacing.
  return 5;
}

void applyStepProperties(const app::RadioState& radio) {
  if (radio.modulation == app::Modulation::FM) {
    g_rx.setFrequencyStep(radio.fmStepKhz);
    g_rx.setSeekFmSpacing(radio.fmStepKhz);
    return;
  }

  g_rx.setFrequencyStep(radio.amStepKhz);
  if (radio.modulation == app::Modulation::AM) {
    g_rx.setSeekAmSpacing(radio.amStepKhz);
  }
}

void configureModeAndBand(const app::AppState& state) {
  const app::RadioState& radio = state.radio;
  const app::BandDef& band = app::kBandPlan[radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);

  setAmpEnabled(false);
  delay(12);

  if (radio.modulation == app::Modulation::FM) {
    g_rx.setFM(bandMinKhz, bandMaxKhz, radio.frequencyKhz, radio.fmStepKhz);
  } else if (radio.modulation == app::Modulation::AM) {
    g_rx.setAM(bandMinKhz, bandMaxKhz, radio.frequencyKhz, radio.amStepKhz);
  } else {
    if (!g_ssbPatchLoaded) {
      g_rx.loadPatch(ssb_patch_content, sizeof(ssb_patch_content));
      g_ssbPatchLoaded = true;
    }

    g_rx.setSSB(bandMinKhz, bandMaxKhz, radio.frequencyKhz, radio.amStepKhz, ssbMode(radio.modulation));
    g_rx.setSSBAutomaticVolumeControl(1);
    g_rx.setSSBBfo(-radio.bfoHz);
  }

  configureSeekProperties(state);
  applyRegionSetting(state);
  g_rx.setVolume(radio.volume);
  applyMuteState();

  delay(20);
  setAmpEnabled(true);
}

bool stopSeekingCallback() {
  if (services::input::consumeAbortRequest()) {
    g_seekAborted = true;
    return true;
  }
  return false;
}

}  // namespace

void prepareBootPower() {
  pinMode(hw::kPinPowerOn, OUTPUT);
  pinMode(hw::kPinAmpEnable, OUTPUT);

  // Keep amp muted until radio has been configured and tuned.
  setAmpEnabled(false);

  if (!g_bootPowerPrepared) {
    digitalWrite(hw::kPinPowerOn, HIGH);
    g_powerOnMs = millis();
    g_bootPowerPrepared = true;
    Serial.println("[radio] power rail enabled");
    return;
  }

  digitalWrite(hw::kPinPowerOn, HIGH);
}

bool begin() {
  prepareBootPower();

  const uint32_t elapsedMs = millis() - g_powerOnMs;
  if (elapsedMs < app::kSi473xPowerSettleMs) {
    delay(app::kSi473xPowerSettleMs - elapsedMs);
  }

  if (!g_i2cStarted) {
    Wire.begin(hw::kPinI2cSda, hw::kPinI2cScl);
    g_i2cStarted = true;
  }

  g_rx.setI2CFastModeCustom(800000UL);
  const int16_t i2cAddress = g_rx.getDeviceI2CAddress(hw::kPinReset);
  if (!i2cAddress) {
    g_lastError = "si473x-not-found";
    g_ready = false;
    setAmpEnabled(false);
    return false;
  }

  g_rx.setup(hw::kPinReset, 0);
  g_rx.setAudioMuteMcuPin(hw::kPinAudioMute);
  applyMuteState();
  g_rx.setMaxSeekTime(app::kSeekTimeoutMs);

  g_lastError = "ok";
  g_ready = true;
  Serial.printf("[radio] initialized @0x%02X\n", i2cAddress);
  return true;
}

bool ready() { return g_ready; }

const char* lastError() { return g_lastError; }

void apply(const app::AppState& state) {
  if (!g_ready) {
    return;
  }

  const app::RadioState& radio = state.radio;
  const bool regionChanged = g_hasAppliedState && state.global.fmRegion != g_lastAppliedRegion;

  const bool fullReconfigure =
      !g_hasAppliedState ||
      radio.bandIndex != g_lastApplied.bandIndex ||
      radio.modulation != g_lastApplied.modulation ||
      (regionChanged && radio.modulation == app::Modulation::FM);

  if (fullReconfigure) {
    configureModeAndBand(state);
    g_hasRuntimeSnapshot = false;
  } else {
    const bool stepChanged =
        radio.amStepKhz != g_lastApplied.amStepKhz ||
        radio.fmStepKhz != g_lastApplied.fmStepKhz;
    if (stepChanged) {
      // Apply new tuning step live without full band/mode reconfiguration.
      applyStepProperties(radio);
    }

    if (radio.frequencyKhz != g_lastApplied.frequencyKhz) {
      g_rx.setFrequency(radio.frequencyKhz);
    }

    if (app::isSsb(radio.modulation) && radio.bfoHz != g_lastApplied.bfoHz) {
      g_rx.setSSBBfo(-radio.bfoHz);
    }

    if (radio.volume != g_lastApplied.volume) {
      g_rx.setVolume(radio.volume);
    }
  }

  g_lastApplied = radio;
  g_lastAppliedRegion = state.global.fmRegion;
  g_hasAppliedState = true;
}

void applyRuntimeSettings(const app::AppState& state) {
  if (!g_ready) {
    return;
  }

  if (runtimeSnapshotMatches(state)) {
    return;
  }

  applyBandwidthSetting(state);
  applyAgcSetting(state);
  applySquelchSetting(state);
  applyRegionSetting(state);
  applyPowerProfile(state);
  updateRuntimeSnapshot(state);
}

bool seek(app::AppState& state, int8_t direction) {
  if (!g_ready || app::isSsb(state.radio.modulation)) {
    return false;
  }

  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);
  const uint8_t seekSpacingKhz = seekSpacingKhzFor(state);
  const uint16_t startFrequency = state.radio.frequencyKhz;
  services::input::clearAbortRequest();
  g_seekAborted = false;

  if (state.radio.modulation == app::Modulation::FM) {
    g_rx.setSeekFmLimits(bandMinKhz, bandMaxKhz);
    g_rx.setSeekFmSpacing(seekSpacingKhz);
  } else {
    g_rx.setSeekAmLimits(bandMinKhz, bandMaxKhz);
    g_rx.setSeekAmSpacing(seekSpacingKhz);
  }

  g_rx.seekStationProgress(nullptr, stopSeekingCallback, direction >= 0 ? 1 : 0);

  uint16_t nextFrequency = g_rx.getCurrentFrequency();

  // Hardware seek can stick at a band edge. Wrap once and seek again.
  if (!g_seekAborted && nextFrequency == startFrequency) {
    const uint16_t restartFrequency = direction >= 0 ? bandMinKhz : bandMaxKhz;
    if (restartFrequency != startFrequency) {
      g_rx.setFrequency(restartFrequency);
      delay(20);
      services::input::clearAbortRequest();
      g_rx.seekStationProgress(nullptr, stopSeekingCallback, direction >= 0 ? 1 : 0);
      nextFrequency = g_rx.getCurrentFrequency();
    }
  }

  state.radio.frequencyKhz = nextFrequency;
  state.radio.bfoHz = 0;

  g_lastApplied = state.radio;
  g_lastAppliedRegion = state.global.fmRegion;
  g_hasAppliedState = true;

  return !g_seekAborted && state.radio.frequencyKhz != startFrequency;
}

void setMuted(bool muted) {
  g_muted = muted;
  if (!g_ready) {
    return;
  }

  applyMuteState();
}

bool readSignalQuality(uint8_t* rssi, uint8_t* snr) {
  if (!g_ready) {
    return false;
  }

  g_rx.getCurrentReceivedSignalQuality();

  if (rssi != nullptr) {
    *rssi = g_rx.getCurrentRSSI();
  }
  if (snr != nullptr) {
    *snr = g_rx.getCurrentSNR();
  }

  return true;
}

void tick() {}

}  // namespace services::radio
