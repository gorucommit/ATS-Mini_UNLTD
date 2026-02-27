#include <Arduino.h>
#include <SI4735.h>
#include <Wire.h>

#include <freertos/FreeRTOS.h>
#include <freertos/semphr.h>

#include "../../include/aie_engine.h"
#include "../../include/app_config.h"
#include "../../include/app_services.h"
#include "../../include/bandplan.h"
#include "../../include/etm_scan.h"
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
SemaphoreHandle_t g_radio_mux = nullptr;
bool g_ready = false;
bool g_hasAppliedState = false;
bool g_ssbPatchLoaded = false;
bool g_seekAborted = false;
bool g_seekAllowHoldAbort = true;
bool g_muted = false;
bool g_aie_muted = false;
bool g_squelchMuted = false;
bool g_bootPowerPrepared = false;
bool g_i2cStarted = false;
uint32_t g_powerOnMs = 0;
uint32_t g_lastSquelchPollMs = 0;
uint8_t g_squelchOpenVotes = 0;
uint8_t g_squelchCloseVotes = 0;
bool g_rsqCacheValid = false;
uint32_t g_rsqCacheMs = 0;
uint8_t g_rsqCacheRssi = 0;
uint8_t g_rsqCacheSnr = 0;

const char* g_lastError = "not-initialized";
app::RadioState g_lastApplied{};
app::FmRegion g_lastAppliedRegion = app::FmRegion::World;
int16_t g_lastAppliedSsbCalHz = 0;
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

constexpr uint32_t kSquelchPollMs = 80;
// Slightly above the 80ms poll cadence to absorb scheduler jitter and let UI+squelch share one read.
constexpr uint32_t kRsqCacheMaxAgeMs = 120;
constexpr uint8_t kSquelchHysteresisRssi = 2;
constexpr uint8_t kSquelchVotesToToggle = 2;

void applyMuteState();

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

int16_t activeSsbCalibrationHz(const app::AppState& state) {
  if (state.radio.bandIndex >= app::kBandCount) {
    return 0;
  }

  const app::BandRuntimeState& bandState = state.perBand[state.radio.bandIndex];
  if (state.radio.modulation == app::Modulation::USB) {
    return bandState.usbCalibrationHz;
  }
  if (state.radio.modulation == app::Modulation::LSB) {
    return bandState.lsbCalibrationHz;
  }
  return 0;
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
    const uint8_t mapped = mapSsbBandwidthIndex(bwIndex);
    g_rx.setSSBAudioBandwidth(mapped);
    g_rx.setSSBSidebandCutoffFilter((mapped == 0 || mapped == 4 || mapped == 5) ? 0 : 1);
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

uint8_t squelchThresholdRssiFromUi(uint8_t sql) {
  if (sql == 0) {
    return 0;
  }
  if (sql >= 63) {
    return 127;
  }
  return static_cast<uint8_t>((static_cast<uint16_t>(sql) * 127U + 31U) / 63U);
}

void resetSquelchVotes() {
  g_squelchOpenVotes = 0;
  g_squelchCloseVotes = 0;
}

void setSquelchMutedLocked(bool muted) {
  if (g_squelchMuted == muted) {
    return;
  }
  g_squelchMuted = muted;
  applyMuteState();
}

void resetSquelchStateLocked(bool forceUnsquelch) {
  resetSquelchVotes();
  if (forceUnsquelch) {
    setSquelchMutedLocked(false);
  }
}

void invalidateRsqCacheLocked() { g_rsqCacheValid = false; }

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

void applyMuteState() { g_rx.setAudioMute((g_muted || g_aie_muted || g_squelchMuted) ? 1 : 0); }

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

uint8_t seekThresholdRssiFor(const app::AppState& state) {
  const uint8_t idx = static_cast<uint8_t>(state.global.scanSensitivity) % 2;
  if (state.radio.modulation == app::Modulation::FM) {
    return app::kEtmSensitivityFm[idx].rssiMin;
  }
  return app::kEtmSensitivityAm[idx].rssiMin;
}

uint8_t seekThresholdSnrFor(const app::AppState& state) {
  const uint8_t idx = static_cast<uint8_t>(state.global.scanSensitivity) % 2;
  if (state.radio.modulation == app::Modulation::FM) {
    return app::kEtmSensitivityFm[idx].snrMin;
  }
  return app::kEtmSensitivityAm[idx].snrMin;
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

void updateRsqCacheLocked(uint8_t rssi, uint8_t snr) {
  g_rsqCacheRssi = rssi;
  g_rsqCacheSnr = snr;
  g_rsqCacheMs = millis();
  g_rsqCacheValid = true;
}

bool readCurrentSignalQualityCachedLocked(uint8_t& rssi, uint8_t& snr) {
  const uint32_t nowMs = millis();
  if (g_rsqCacheValid && static_cast<uint32_t>(nowMs - g_rsqCacheMs) <= kRsqCacheMaxAgeMs) {
    rssi = g_rsqCacheRssi;
    snr = g_rsqCacheSnr;
    return true;
  }

  if (!readCurrentSignalQuality(rssi, snr)) {
    return false;
  }

  g_rsqCacheRssi = rssi;
  g_rsqCacheSnr = snr;
  g_rsqCacheMs = nowMs;
  g_rsqCacheValid = true;
  return true;
}

void updateSquelchFromSignalLocked() {
  if (!g_hasAppliedState || !g_hasRuntimeSnapshot) {
    resetSquelchStateLocked(true);
    return;
  }

  const uint8_t sql = g_lastRuntime.squelch;
  if (sql == 0) {
    resetSquelchStateLocked(true);
    return;
  }

  if (services::seekscan::busy() || services::etm::busy()) {
    // Hold current squelch state during seek/scan to avoid rapid toggling while the tuner moves.
    resetSquelchVotes();
    return;
  }

  uint8_t rssi = 0;
  uint8_t snr = 0;
  (void)snr;
  if (!readCurrentSignalQualityCachedLocked(rssi, snr)) {
    return;
  }

  const uint8_t threshold = squelchThresholdRssiFromUi(sql);
  const uint8_t openThreshold = threshold;
  const uint8_t closeThreshold =
      (threshold > kSquelchHysteresisRssi) ? static_cast<uint8_t>(threshold - kSquelchHysteresisRssi) : threshold;

  if (g_squelchMuted) {
    if (rssi >= openThreshold) {
      if (g_squelchOpenVotes < 255) {
        ++g_squelchOpenVotes;
      }
      g_squelchCloseVotes = 0;
      if (g_squelchOpenVotes >= kSquelchVotesToToggle) {
        resetSquelchVotes();
        setSquelchMutedLocked(false);
      }
    } else {
      g_squelchOpenVotes = 0;
    }
    return;
  }

  if (rssi < closeThreshold) {
    if (g_squelchCloseVotes < 255) {
      ++g_squelchCloseVotes;
    }
    g_squelchOpenVotes = 0;
    if (g_squelchCloseVotes >= kSquelchVotesToToggle) {
      resetSquelchVotes();
      setSquelchMutedLocked(true);
    }
  } else {
    g_squelchCloseVotes = 0;
  }
}

// Full RSQ for FM verification pass: RSSI, SNR, signed FREQOFF (~1 kHz units), PILOT, MULT.
bool readFullRsqFm(uint8_t& rssi, uint8_t& snr, int8_t& freqOff, bool& pilotPresent, uint8_t& multipath) {
  if (!g_ready) {
    rssi = 0;
    snr = 0;
    freqOff = 0;
    pilotPresent = false;
    multipath = 0;
    return false;
  }
  g_rx.getCurrentReceivedSignalQuality();
  rssi = g_rx.getCurrentRSSI();
  snr = g_rx.getCurrentSNR();
  updateRsqCacheLocked(rssi, snr);
  freqOff = static_cast<int8_t>(g_rx.getCurrentSignedFrequencyOffset());
  pilotPresent = g_rx.getCurrentPilot();
  multipath = g_rx.getCurrentMultipath();
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

  return rssi >= seekThresholdRssiFor(state) && snr >= seekThresholdSnrFor(state);
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

  if (radio.modulation == app::Modulation::AM) {
    g_rx.setFrequencyStep(radio.amStepKhz);
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

    const int16_t calibrationHz = activeSsbCalibrationHz(state);
    g_rx.setSSB(bandMinKhz, bandMaxKhz, radio.frequencyKhz, 0, ssbMode(radio.modulation));
    g_rx.setSSBAutomaticVolumeControl(1);
    g_rx.setSSBBfo(-(radio.ssbTuneOffsetHz + calibrationHz));
    g_lastAppliedSsbCalHz = calibrationHz;
  }

  configureSeekProperties(state);
  applyRegionSetting(state);
  if (!services::aie::ownsVolume()) {
    g_rx.setVolume(radio.volume);
  }
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

void showSeekProgressCallback(uint16_t frequencyKhz) { services::seekscan::notifySeekProgress(frequencyKhz); }

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

  if (g_radio_mux == nullptr) {
    g_radio_mux = xSemaphoreCreateMutex();
  }

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
  g_squelchMuted = false;
  resetSquelchVotes();
  invalidateRsqCacheLocked();
  g_lastSquelchPollMs = millis();
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
  if (!g_ready || g_radio_mux == nullptr) {
    return;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
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
    if (!app::isSsb(radio.modulation)) {
      g_lastAppliedSsbCalHz = 0;
    }
    g_hasRuntimeSnapshot = false;
    resetSquelchStateLocked(true);
    invalidateRsqCacheLocked();
  } else {
    const bool stepChanged =
        radio.amStepKhz != g_lastApplied.amStepKhz ||
        radio.fmStepKhz != g_lastApplied.fmStepKhz;
    if (stepChanged) {
      applyStepProperties(radio);
    }

    if (radio.frequencyKhz != g_lastApplied.frequencyKhz) {
      g_rx.setFrequency(radio.frequencyKhz);
      resetSquelchVotes();
      invalidateRsqCacheLocked();
      if (radio.modulation == app::Modulation::FM) {
        configureRdsForFm(true);
      }
    }

    if (app::isSsb(radio.modulation)) {
      const int16_t calibrationHz = activeSsbCalibrationHz(state);
      if (radio.ssbTuneOffsetHz != g_lastApplied.ssbTuneOffsetHz || calibrationHz != g_lastAppliedSsbCalHz) {
        g_rx.setSSBBfo(-(radio.ssbTuneOffsetHz + calibrationHz));
        g_lastAppliedSsbCalHz = calibrationHz;
      }
    } else {
      g_lastAppliedSsbCalHz = 0;
    }

    if (!services::aie::ownsVolume() && radio.volume != g_lastApplied.volume) {
      g_rx.setVolume(radio.volume);
    }
  }

  g_lastApplied = radio;
  g_lastAppliedRegion = state.global.fmRegion;
  g_hasAppliedState = true;

  xSemaphoreGive(g_radio_mux);
}

void applyRuntimeSettings(const app::AppState& state) {
  if (!g_ready || g_radio_mux == nullptr) {
    return;
  }
  if (runtimeSnapshotMatches(state)) {
    return;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return;
  }
  applyBandwidthSetting(state);
  applyAgcSetting(state);
  applySquelchSetting(state);
  if (state.global.squelch == 0) {
    resetSquelchStateLocked(true);
  } else {
    resetSquelchVotes();
  }
  applyRegionSetting(state);
  applyPowerProfile(state);
  updateRuntimeSnapshot(state);
  xSemaphoreGive(g_radio_mux);
}

bool seekImpl(app::AppState& state, int8_t direction, bool allowHoldAbort, bool retryOppositeEdge) {
  if (!g_ready || g_radio_mux == nullptr || app::isSsb(state.radio.modulation)) {
    return false;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return false;
  }
  invalidateRsqCacheLocked();

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

  g_rx.seekStationProgress(showSeekProgressCallback, stopSeekingCallback, direction >= 0 ? 1 : 0);
  uint16_t nextFrequency = g_rx.getCurrentFrequency();
  bool found =
      !g_seekAborted && nextFrequency >= bandMinKhz && nextFrequency <= bandMaxKhz && nextFrequency != startFrequency;

  if (retryOppositeEdge && !found && !g_seekAborted) {
    const uint16_t restartFrequency = direction >= 0 ? bandMinKhz : bandMaxKhz;
    if (restartFrequency != startFrequency) {
      g_rx.setFrequency(restartFrequency);
      delay(20);
      services::input::clearAbortRequest();
      g_rx.seekStationProgress(showSeekProgressCallback, stopSeekingCallback, direction >= 0 ? 1 : 0);
      nextFrequency = g_rx.getCurrentFrequency();
      found =
          !g_seekAborted && nextFrequency >= bandMinKhz && nextFrequency <= bandMaxKhz && nextFrequency != startFrequency;
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
  state.radio.ssbTuneOffsetHz = 0;

  g_lastApplied = state.radio;
  g_lastAppliedRegion = state.global.fmRegion;
  g_hasAppliedState = true;

  xSemaphoreGive(g_radio_mux);
  return found;
}

bool seek(app::AppState& state, int8_t direction) { return seekImpl(state, direction, true, true); }

bool seekForScan(app::AppState& state, int8_t direction) { return seekImpl(state, direction, false, false); }

bool lastSeekAborted() { return g_seekAborted; }

void applyVolumeOnly(uint8_t volume) {
  if (!g_ready || g_radio_mux == nullptr) {
    return;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return;
  }
  g_rx.setVolume(volume);
  xSemaphoreGive(g_radio_mux);
}

void setAieMuted(bool muted) {
  g_aie_muted = muted;
  if (!g_ready || g_radio_mux == nullptr) {
    return;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return;
  }
  applyMuteState();
  xSemaphoreGive(g_radio_mux);
}

void setMuted(bool muted) {
  g_muted = muted;
  if (!g_ready || g_radio_mux == nullptr) {
    return;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return;
  }
  applyMuteState();
  xSemaphoreGive(g_radio_mux);
}

bool readSignalQuality(uint8_t* rssi, uint8_t* snr) {
  if (!g_ready || g_radio_mux == nullptr) {
    return false;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return false;
  }
  uint8_t currentRssi = 0;
  uint8_t currentSnr = 0;
  const bool ok = readCurrentSignalQualityCachedLocked(currentRssi, currentSnr);
  xSemaphoreGive(g_radio_mux);
  if (!ok) {
    return false;
  }
  if (rssi != nullptr) {
    *rssi = currentRssi;
  }
  if (snr != nullptr) {
    *snr = currentSnr;
  }
  return true;
}

bool readFullRsqFm(uint8_t* rssi, uint8_t* snr, int8_t* freqOff, bool* pilotPresent, uint8_t* multipath) {
  if (!g_ready || g_radio_mux == nullptr) {
    return false;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return false;
  }
  uint8_t r = 0, s = 0;
  int8_t f = 0;
  bool p = false;
  uint8_t m = 0;
  const bool ok = readFullRsqFm(r, s, f, p, m);
  xSemaphoreGive(g_radio_mux);
  if (rssi != nullptr) *rssi = r;
  if (snr != nullptr) *snr = s;
  if (freqOff != nullptr) *freqOff = f;
  if (pilotPresent != nullptr) *pilotPresent = p;
  if (multipath != nullptr) *multipath = m;
  return ok;
}

bool pollRdsGroup(RdsGroupSnapshot* snapshot) {
  if (snapshot == nullptr || !g_ready || g_radio_mux == nullptr || !g_hasAppliedState || g_lastApplied.modulation != app::Modulation::FM) {
    return false;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return false;
  }
  si47x_rds_status raw{};
  g_rx.readRdsStatusRaw(raw, 0, 0, 0);
  xSemaphoreGive(g_radio_mux);

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
  if (!g_ready || g_radio_mux == nullptr || !g_hasAppliedState || g_lastApplied.modulation != app::Modulation::FM) {
    return;
  }
  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return;
  }
  configureRdsForFm(true);
  xSemaphoreGive(g_radio_mux);
}

void tick() {
  if (!g_ready || g_radio_mux == nullptr) {
    return;
  }

  const uint32_t nowMs = millis();
  if (static_cast<uint32_t>(nowMs - g_lastSquelchPollMs) < kSquelchPollMs) {
    return;
  }
  g_lastSquelchPollMs = nowMs;

  if (xSemaphoreTake(g_radio_mux, portMAX_DELAY) != pdTRUE) {
    return;
  }
  updateSquelchFromSignalLocked();
  xSemaphoreGive(g_radio_mux);
}

}  // namespace services::radio
