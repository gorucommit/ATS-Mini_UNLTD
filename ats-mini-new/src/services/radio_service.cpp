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
class SI4735Local : public SI4735 {
 public:
  bool readRdsStatusRaw(si47x_rds_status& out, uint8_t intAck, uint8_t mtFifo, uint8_t statusOnly) {
    getRdsStatus(intAck, mtFifo, statusOnly);
    out = currentRdsStatus;
    return true;
  }

  void flushRdsFifo() { getRdsStatus(0, 1, 1); }

  uint16_t readRdsPiFixed() const {
    return static_cast<uint16_t>((static_cast<uint16_t>(currentRdsStatus.resp.BLOCKAH) << 8) | currentRdsStatus.resp.BLOCKAL);
  }

  uint8_t readRdsPtyFixed() const {
    const uint16_t blockB =
        static_cast<uint16_t>((static_cast<uint16_t>(currentRdsStatus.resp.BLOCKBH) << 8) | currentRdsStatus.resp.BLOCKBL);
    return static_cast<uint8_t>((blockB >> 5) & 0x1F);
  }
};

SI4735Local g_rx;
bool g_ready = false;
bool g_hasAppliedState = false;
bool g_ssbPatchLoaded = false;
bool g_seekAborted = false;
bool g_seekAllowHoldAbort = true;
bool g_muted = false;
bool g_bootPowerPrepared = false;
bool g_i2cStarted = false;
uint32_t g_powerOnMs = 0;

const char* g_lastError = "not-initialized";
app::RadioState g_lastApplied{};
app::FmRegion g_lastAppliedRegion = app::FmRegion::World;
bool g_hasRuntimeSnapshot = false;
bool g_rdsConfiguredForFm = false;

struct RuntimeSnapshot {
  uint8_t bandIndex;
  app::Modulation modulation;
  uint8_t bandwidthIndex;
  uint8_t agcEnabled;
  uint8_t agcLevel;
  uint8_t squelch;
  uint8_t avcAmLevel;
  uint8_t avcSsbLevel;
  uint8_t softMuteAmLevel;
  uint8_t softMuteSsbLevel;
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

  uint8_t agcIndex = 0;
  if (state.radio.modulation == app::Modulation::FM) {
    // FM manual attenuation range: 0..26
    agcIndex = clampU8(state.global.avcLevel, 0, 26);
  } else if (state.radio.modulation == app::Modulation::AM) {
    // AM manual attenuation range: 0..36
    agcIndex = clampU8(state.global.avcLevel, 0, 36);
  } else {
    // SSB behaves as AGC on/off with no extra attenuation steps.
    agcIndex = 0;
  }

  g_rx.setAutomaticGainControl(1, agcIndex);
}

void applySquelchSetting(const app::AppState& state) {
  (void)state.global.squelch;

  if (state.radio.modulation == app::Modulation::FM) {
    g_rx.setFmSoftMuteMaxAttenuation(0);
    return;
  }

  uint8_t attenuation = app::isSsb(state.radio.modulation) ? state.global.softMuteSsbLevel : state.global.softMuteAmLevel;
  attenuation = clampU8(attenuation, 0, 32);

  // signalscale-style AM/SSB soft-mute control is independent from SQL.
  g_rx.setAmSoftMuteMaxAttenuation(attenuation);
  g_rx.setAMSoftMuteSnrThreshold(0);
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

  uint8_t avcGain = app::isSsb(state.radio.modulation) ? state.global.avcSsbLevel : state.global.avcAmLevel;
  avcGain = clampU8(avcGain, 12, 90);
  if (avcGain % 2 != 0) {
    --avcGain;
  }
  if (avcGain < 12) {
    avcGain = 12;
  }

  // Keep "PWR SAVE" as a conservative cap while preserving user AVC settings in normal mode.
  if (state.global.zoomMenu > 0) {
    avcGain = avcGain > 24 ? 24 : avcGain;
  }

  g_rx.setAvcAmMaxGain(avcGain);
}

uint8_t runtimeBandwidthIndex(const app::AppState& state) {
  if (state.radio.bandIndex >= app::kBandCount) {
    return 0;
  }
  return state.perBand[state.radio.bandIndex].bandwidthIndex;
}

uint8_t runtimeAgcLevel(const app::AppState& state) {
  if (state.global.agcEnabled) {
    return 0;
  }

  if (state.radio.modulation == app::Modulation::FM) {
    return clampU8(state.global.avcLevel, 0, 26);
  }

  if (state.radio.modulation == app::Modulation::AM) {
    return clampU8(state.global.avcLevel, 0, 36);
  }

  return 0;
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
         g_lastRuntime.avcAmLevel == state.global.avcAmLevel &&
         g_lastRuntime.avcSsbLevel == state.global.avcSsbLevel &&
         g_lastRuntime.softMuteAmLevel == state.global.softMuteAmLevel &&
         g_lastRuntime.softMuteSsbLevel == state.global.softMuteSsbLevel &&
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
  g_lastRuntime.avcAmLevel = state.global.avcAmLevel;
  g_lastRuntime.avcSsbLevel = state.global.avcSsbLevel;
  g_lastRuntime.softMuteAmLevel = state.global.softMuteAmLevel;
  g_lastRuntime.softMuteSsbLevel = state.global.softMuteSsbLevel;
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

void configureRdsForFm(bool enable) {
  if (!g_ready) {
    return;
  }

  if (enable) {
    // Keep library-side thresholds permissive and let rds_service gate commits with BLE/quality logic.
    g_rx.setRdsConfig(1, 2, 2, 2, 2);
    g_rx.setFifoCount(1);
    g_rx.clearRdsBuffer();
    g_rx.flushRdsFifo();
    g_rdsConfiguredForFm = true;
    return;
  }

  if (!g_rdsConfiguredForFm) {
    return;
  }

  g_rx.clearRdsBuffer();
  g_rx.flushRdsFifo();
  g_rdsConfiguredForFm = false;
}

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

uint8_t seekThresholdRssiFor(app::Modulation modulation) {
  return modulation == app::Modulation::FM ? 5 : 10;
}

uint8_t seekThresholdSnrFor(app::Modulation modulation) {
  return modulation == app::Modulation::FM ? 2 : 3;
}

bool readCurrentSignalQuality(uint8_t& rssi, uint8_t& snr) {
  if (!g_ready) {
    rssi = 0;
    snr = 0;
    return false;
  }

  g_rx.getCurrentReceivedSignalQuality();
  rssi = g_rx.getCurrentRSSI();
  snr = g_rx.getCurrentSNR();
  return true;
}

bool isValidSeekResult(const app::AppState& state,
                       uint16_t frequencyKhz,
                       uint16_t startFrequencyKhz,
                       uint16_t bandMinKhz,
                       uint16_t bandMaxKhz) {
  if (frequencyKhz < bandMinKhz || frequencyKhz > bandMaxKhz || frequencyKhz == startFrequencyKhz) {
    return false;
  }

  uint8_t rssi = 0;
  uint8_t snr = 0;
  if (!readCurrentSignalQuality(rssi, snr)) {
    return false;
  }

  return rssi >= seekThresholdRssiFor(state.radio.modulation) && snr >= seekThresholdSnrFor(state.radio.modulation);
}

uint16_t seekGridOriginKhzFor(const app::AppState& state, uint16_t bandMinKhz) {
  if (state.radio.bandIndex >= app::kBandCount) {
    return bandMinKhz;
  }

  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  if (band.id == app::BandId::MW) {
    return app::mwChannelOriginKhzForRegion(state.global.fmRegion);
  }

  return bandMinKhz;
}

int32_t snapToGrid(int32_t frequencyKhz, int32_t originKhz, uint8_t spacingKhz, int8_t direction) {
  int32_t offset = (frequencyKhz - originKhz) % spacingKhz;
  if (offset < 0) {
    offset += spacingKhz;
  }

  if (offset == 0) {
    return frequencyKhz;
  }

  return direction >= 0 ? frequencyKhz + (spacingKhz - offset) : frequencyKhz - offset;
}

uint16_t snapToSeekSpacing(uint16_t frequencyKhz,
                           uint16_t minKhz,
                           uint16_t maxKhz,
                           uint8_t spacingKhz,
                           int8_t direction,
                           uint16_t gridOriginKhz) {
  if (spacingKhz == 0 || maxKhz < minKhz) {
    return frequencyKhz;
  }

  const int32_t originKhz = static_cast<int32_t>(gridOriginKhz);
  int32_t snapped = snapToGrid(frequencyKhz, originKhz, spacingKhz, direction);

  if (snapped > maxKhz) {
    snapped = snapToGrid(minKhz, originKhz, spacingKhz, 1);
    if (snapped > maxKhz) {
      snapped = minKhz;
    }
  } else if (snapped < minKhz) {
    snapped = snapToGrid(maxKhz, originKhz, spacingKhz, -1);
    if (snapped < minKhz) {
      snapped = maxKhz;
    }
  }

  return static_cast<uint16_t>(snapped);
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
    configureRdsForFm(true);
  } else if (radio.modulation == app::Modulation::AM) {
    configureRdsForFm(false);
    g_rx.setAM(bandMinKhz, bandMaxKhz, radio.frequencyKhz, radio.amStepKhz);
  } else {
    configureRdsForFm(false);
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
  const bool abortRequested =
      g_seekAllowHoldAbort ? services::input::consumeAbortRequest() : services::input::consumeAbortEventRequest();
  if (abortRequested) {
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
      if (radio.modulation == app::Modulation::FM) {
        configureRdsForFm(true);
      }
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

bool seekImpl(app::AppState& state, int8_t direction, bool allowHoldAbort, bool retryOppositeEdge) {
  if (!g_ready || app::isSsb(state.radio.modulation)) {
    return false;
  }

  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);
  const uint8_t seekSpacingKhz = seekSpacingKhzFor(state);
  const uint16_t seekGridOriginKhz = seekGridOriginKhzFor(state, bandMinKhz);
  services::input::clearAbortRequest();
  g_seekAborted = false;
  g_seekAllowHoldAbort = allowHoldAbort;

  const uint16_t snappedStartFrequency = snapToSeekSpacing(state.radio.frequencyKhz,
                                                           bandMinKhz,
                                                           bandMaxKhz,
                                                           seekSpacingKhz,
                                                           direction,
                                                           seekGridOriginKhz);
  if (snappedStartFrequency != state.radio.frequencyKhz) {
    state.radio.frequencyKhz = snappedStartFrequency;
    g_rx.setFrequency(state.radio.frequencyKhz);
    delay(10);
  }

  const uint16_t startFrequency = state.radio.frequencyKhz;

  if (state.radio.modulation == app::Modulation::FM) {
    g_rx.setSeekFmLimits(bandMinKhz, bandMaxKhz);
    g_rx.setSeekFmSpacing(seekSpacingKhz);
  } else {
    g_rx.setSeekAmLimits(bandMinKhz, bandMaxKhz);
    g_rx.setSeekAmSpacing(seekSpacingKhz);
  }

  g_rx.seekStationProgress(nullptr, stopSeekingCallback, direction >= 0 ? 1 : 0);
  uint16_t nextFrequency = g_rx.getCurrentFrequency();
  bool found = !g_seekAborted && isValidSeekResult(state, nextFrequency, startFrequency, bandMinKhz, bandMaxKhz);

  // Retry once from the opposite band edge for one-shot seek operations.
  if (retryOppositeEdge && !found && !g_seekAborted) {
    const uint16_t restartFrequency = direction >= 0 ? bandMinKhz : bandMaxKhz;
    if (restartFrequency != startFrequency) {
      g_rx.setFrequency(restartFrequency);
      delay(20);
      services::input::clearAbortRequest();
      g_rx.seekStationProgress(nullptr, stopSeekingCallback, direction >= 0 ? 1 : 0);
      nextFrequency = g_rx.getCurrentFrequency();
      found = !g_seekAborted && isValidSeekResult(state, nextFrequency, startFrequency, bandMinKhz, bandMaxKhz);
    }
  }

  uint16_t finalFrequency = nextFrequency;
  if (!found && !g_seekAborted) {
    finalFrequency = startFrequency;
    if (finalFrequency != nextFrequency) {
      g_rx.setFrequency(finalFrequency);
      delay(10);
    }
  }

  state.radio.frequencyKhz = finalFrequency;
  state.radio.bfoHz = 0;

  g_lastApplied = state.radio;
  g_lastAppliedRegion = state.global.fmRegion;
  g_hasAppliedState = true;

  return found;
}

bool seek(app::AppState& state, int8_t direction) { return seekImpl(state, direction, true, true); }

bool seekForScan(app::AppState& state, int8_t direction) { return seekImpl(state, direction, false, false); }

bool lastSeekAborted() { return g_seekAborted; }

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

  uint8_t currentRssi = 0;
  uint8_t currentSnr = 0;
  readCurrentSignalQuality(currentRssi, currentSnr);

  if (rssi != nullptr) {
    *rssi = currentRssi;
  }
  if (snr != nullptr) {
    *snr = currentSnr;
  }

  return true;
}

bool pollRdsGroup(RdsGroupSnapshot* snapshot) {
  if (snapshot == nullptr || !g_ready || !g_hasAppliedState || g_lastApplied.modulation != app::Modulation::FM) {
    return false;
  }

  si47x_rds_status raw{};
  g_rx.readRdsStatusRaw(raw, 0, 0, 0);

  const bool hasNewBlock = raw.resp.RDSNEWBLOCKA || raw.resp.RDSNEWBLOCKB;
  if (!raw.resp.RDSSYNC || (!raw.resp.RDSRECV && !hasNewBlock && raw.resp.RDSFIFOUSED == 0)) {
    return false;
  }

  const uint16_t blockA = static_cast<uint16_t>((static_cast<uint16_t>(raw.resp.BLOCKAH) << 8) | raw.resp.BLOCKAL);
  const uint16_t blockB = static_cast<uint16_t>((static_cast<uint16_t>(raw.resp.BLOCKBH) << 8) | raw.resp.BLOCKBL);
  const uint16_t blockC = static_cast<uint16_t>((static_cast<uint16_t>(raw.resp.BLOCKCH) << 8) | raw.resp.BLOCKCL);
  const uint16_t blockD = static_cast<uint16_t>((static_cast<uint16_t>(raw.resp.BLOCKDH) << 8) | raw.resp.BLOCKDL);

  snapshot->received = raw.resp.RDSRECV;
  snapshot->sync = raw.resp.RDSSYNC;
  snapshot->syncFound = raw.resp.RDSSYNCFOUND;
  snapshot->syncLost = raw.resp.RDSSYNCLOST;
  snapshot->groupLost = raw.resp.GRPLOST;
  snapshot->fifoUsed = raw.resp.RDSFIFOUSED;
  snapshot->groupType = static_cast<uint8_t>((blockB >> 12) & 0x0F);
  snapshot->versionB = ((blockB >> 11) & 0x01U) != 0;
  snapshot->pty = static_cast<uint8_t>((blockB >> 5) & 0x1FU);
  snapshot->textAbFlag = static_cast<uint8_t>((blockB >> 4) & 0x01U);
  snapshot->segmentAddress = static_cast<uint8_t>(blockB & 0x0FU);
  snapshot->blockA = blockA;
  snapshot->blockB = blockB;
  snapshot->blockC = blockC;
  snapshot->blockD = blockD;
  snapshot->bleA = raw.resp.BLEA;
  snapshot->bleB = raw.resp.BLEB;
  snapshot->bleC = raw.resp.BLEC;
  snapshot->bleD = raw.resp.BLED;
  return true;
}

void resetRdsDecoder() {
  if (!g_ready || !g_hasAppliedState || g_lastApplied.modulation != app::Modulation::FM) {
    return;
  }

  configureRdsForFm(true);
}

void tick() {}

}  // namespace services::radio
