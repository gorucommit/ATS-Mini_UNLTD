#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/src/main.cpp"
#include <Arduino.h>

#include "../include/app_config.h"
#include "../include/app_services.h"
#include "../include/bandplan.h"
#include "../include/quick_edit_model.h"
#include "../include/settings_model.h"

namespace {

app::AppState g_state = app::makeDefaultState();
uint32_t g_lastUiRenderMs = 0;
bool g_radioReady = false;
uint32_t g_quickEditLastInputMs = 0;
uint32_t g_lastQuickEditFocusMs = 0;
bool g_hasQuickEditFocusHistory = false;
uint32_t g_lastTuneChangeMs = 0;
bool g_tunePersistPending = false;

constexpr uint32_t kQuickEditTimeoutMs = 10000;
constexpr uint32_t kQuickEditFocusResumeMs = 8000;
constexpr uint32_t kTunePersistIdleMs = 1200;

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

uint16_t firstGridFrequencyInRange(uint16_t minKhz, uint16_t maxKhz, uint8_t spacingKhz, uint16_t originKhz) {
  if (maxKhz < minKhz || spacingKhz == 0) {
    return minKhz;
  }

  int32_t first = snapToGrid(minKhz, originKhz, spacingKhz, 1);
  if (first < minKhz || first > maxKhz) {
    return minKhz;
  }

  return static_cast<uint16_t>(first);
}

uint16_t lastGridFrequencyInRange(uint16_t minKhz, uint16_t maxKhz, uint8_t spacingKhz, uint16_t originKhz) {
  if (maxKhz < minKhz || spacingKhz == 0) {
    return maxKhz;
  }

  int32_t last = snapToGrid(maxKhz, originKhz, spacingKhz, -1);
  if (last < minKhz || last > maxKhz) {
    return maxKhz;
  }

  return static_cast<uint16_t>(last);
}

void normalizeRadioStateForBand(app::RadioState& radio, app::FmRegion region) {
  if (radio.bandIndex >= app::kBandCount) {
    radio.bandIndex = app::defaultFmBandIndex();
  }

  const app::BandDef& band = app::kBandPlan[radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, region);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, region);
  const uint16_t bandDefaultKhz = app::bandDefaultKhzFor(band, region);

  if (radio.frequencyKhz < bandMinKhz || radio.frequencyKhz > bandMaxKhz) {
    radio.frequencyKhz = bandDefaultKhz;
  }

  if (band.defaultMode == app::Modulation::FM && !band.allowSsb) {
    radio.modulation = app::Modulation::FM;
    radio.bfoHz = 0;
    return;
  }

  if (radio.modulation == app::Modulation::FM) {
    radio.modulation = app::Modulation::AM;
    radio.bfoHz = 0;
  }

  if (!band.allowSsb && app::isSsb(radio.modulation)) {
    radio.modulation = app::Modulation::AM;
    radio.bfoHz = 0;
  }

  if (!app::isSsb(radio.modulation)) {
    radio.bfoHz = 0;
  }
}

void applyRadioState(bool persistSettings) {
  normalizeRadioStateForBand(g_state.radio, g_state.global.fmRegion);
  app::syncPersistentStateFromRadio(g_state);
  services::seekscan::syncContext(g_state);
  services::radio::apply(g_state);
  services::radio::applyRuntimeSettings(g_state);

  if (persistSettings) {
    services::settings::markDirty();
    g_tunePersistPending = false;
  }
}

void scheduleTunePersist() {
  g_lastTuneChangeMs = millis();
  g_tunePersistPending = true;
}

void flushPendingTunePersistIfIdle() {
  if (!g_tunePersistPending || services::seekscan::busy()) {
    return;
  }

  const uint32_t nowMs = millis();
  if (nowMs - g_lastTuneChangeMs < kTunePersistIdleMs) {
    return;
  }

  app::syncPersistentStateFromRadio(g_state);
  services::settings::markDirty();
  g_tunePersistPending = false;
}

void setNowPlayingLayer() {
  g_state.ui.layer = app::UiLayer::NowPlaying;
  g_state.ui.quickEditEditing = false;
  g_state.ui.quickEditPopupIndex = 0;
  g_state.ui.settingsChipArmed = false;
}

void setOperation(app::OperationMode operation) {
  g_state.ui.operation = operation;
  setNowPlayingLayer();
}

void cycleOperationMode() {
  switch (g_state.ui.operation) {
    case app::OperationMode::Tune:
      setOperation(app::OperationMode::Seek);
      break;
    case app::OperationMode::Seek:
      setOperation(app::OperationMode::Scan);
      break;
    case app::OperationMode::Scan:
      setOperation(app::OperationMode::Tune);
      break;
  }
}

void changeVolume(int8_t direction) {
  int16_t nextVolume = static_cast<int16_t>(g_state.radio.volume) + direction;
  if (nextVolume < 0) {
    nextVolume = 0;
  }
  if (nextVolume > 63) {
    nextVolume = 63;
  }

  if (nextVolume == g_state.radio.volume) {
    return;
  }

  g_state.radio.volume = static_cast<uint8_t>(nextVolume);
  applyRadioState(true);
}

void toggleMute() {
  g_state.ui.muted = !g_state.ui.muted;
  services::radio::setMuted(g_state.ui.muted);
}

void changeFrequency(int8_t direction, int8_t repeats) {
  if (direction == 0 || repeats <= 0) {
    return;
  }

  const app::BandDef& band = app::kBandPlan[g_state.radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, g_state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, g_state.global.fmRegion);
  const uint16_t oldFrequencyKhz = g_state.radio.frequencyKhz;
  const int16_t oldBfoHz = g_state.radio.bfoHz;

  if (app::isSsb(g_state.radio.modulation)) {
    int32_t nextFrequencyKhz = g_state.radio.frequencyKhz;
    int32_t nextBfoHz = g_state.radio.bfoHz;
    while (repeats-- > 0) {
      nextBfoHz += static_cast<int32_t>(direction) * app::kBfoStepHz;

      while (nextBfoHz >= 500) {
        ++nextFrequencyKhz;
        nextBfoHz -= 1000;
      }
      while (nextBfoHz <= -500) {
        --nextFrequencyKhz;
        nextBfoHz += 1000;
      }

      if (nextFrequencyKhz > bandMaxKhz) {
        nextFrequencyKhz = bandMinKhz;
      } else if (nextFrequencyKhz < bandMinKhz) {
        nextFrequencyKhz = bandMaxKhz;
      }
    }

    g_state.radio.frequencyKhz = static_cast<uint16_t>(nextFrequencyKhz);
    g_state.radio.bfoHz = static_cast<int16_t>(nextBfoHz);

    if (g_state.radio.frequencyKhz != oldFrequencyKhz || g_state.radio.bfoHz != oldBfoHz) {
      applyRadioState(false);
      scheduleTunePersist();
    }

    return;
  }

  const uint16_t stepKhz =
      g_state.radio.modulation == app::Modulation::FM ? g_state.radio.fmStepKhz : g_state.radio.amStepKhz;

  if (band.id == app::BandId::MW && stepKhz > 0) {
    const uint16_t originKhz = app::mwChannelOriginKhzForRegion(g_state.global.fmRegion);
    const int32_t wrapMinKhz = firstGridFrequencyInRange(bandMinKhz, bandMaxKhz, stepKhz, originKhz);
    const int32_t wrapMaxKhz = lastGridFrequencyInRange(bandMinKhz, bandMaxKhz, stepKhz, originKhz);

    int32_t nextFrequencyKhz = g_state.radio.frequencyKhz;
    while (repeats-- > 0) {
      const int32_t snapped = snapToGrid(nextFrequencyKhz, originKhz, stepKhz, direction);
      if (snapped == nextFrequencyKhz) {
        nextFrequencyKhz += static_cast<int32_t>(stepKhz) * direction;
      } else {
        nextFrequencyKhz = snapped;
      }

      if (nextFrequencyKhz > wrapMaxKhz) {
        nextFrequencyKhz = wrapMinKhz;
      } else if (nextFrequencyKhz < wrapMinKhz) {
        nextFrequencyKhz = wrapMaxKhz;
      }
    }

    g_state.radio.frequencyKhz = static_cast<uint16_t>(nextFrequencyKhz);
    if (g_state.radio.frequencyKhz != oldFrequencyKhz || g_state.radio.bfoHz != oldBfoHz) {
      applyRadioState(false);
      scheduleTunePersist();
    }
    return;
  }

  int32_t nextFrequencyKhz = g_state.radio.frequencyKhz;
  while (repeats-- > 0) {
    nextFrequencyKhz += static_cast<int32_t>(stepKhz) * direction;
    if (nextFrequencyKhz > bandMaxKhz) {
      nextFrequencyKhz = bandMinKhz;
    } else if (nextFrequencyKhz < bandMinKhz) {
      nextFrequencyKhz = bandMaxKhz;
    }
  }

  g_state.radio.frequencyKhz = static_cast<uint16_t>(nextFrequencyKhz);
  if (g_state.radio.frequencyKhz != oldFrequencyKhz || g_state.radio.bfoHz != oldBfoHz) {
    applyRadioState(false);
    scheduleTunePersist();
  }
}

void enterQuickEdit() {
  const uint32_t nowMs = millis();
  const bool resumeFocus = g_hasQuickEditFocusHistory && (nowMs - g_lastQuickEditFocusMs) <= kQuickEditFocusResumeMs;
  if (!resumeFocus) {
    g_state.ui.quickEditItem = app::QuickEditItem::Band;
  }
  if (!app::quickedit::itemEditable(g_state, g_state.ui.quickEditItem)) {
    g_state.ui.quickEditItem = app::quickedit::moveFocus(g_state, g_state.ui.quickEditItem, 1);
  }

  g_state.ui.layer = app::UiLayer::QuickEdit;
  g_state.ui.quickEditParent = g_state.ui.operation;
  g_state.ui.quickEditEditing = false;
  g_state.ui.quickEditPopupIndex = 0;
  g_state.ui.settingsChipArmed = false;
  g_quickEditLastInputMs = nowMs;
  g_lastQuickEditFocusMs = nowMs;
  g_hasQuickEditFocusHistory = true;
}

void moveQuickEditFocus(int8_t direction) {
  g_state.ui.quickEditItem = app::quickedit::moveFocus(g_state, g_state.ui.quickEditItem, direction);
  g_lastQuickEditFocusMs = millis();
  g_hasQuickEditFocusHistory = true;
}

void saveCurrentToFavorite() {
  app::syncPersistentStateFromRadio(g_state);

  const uint8_t slotIndex = static_cast<uint8_t>(g_state.global.memoryWriteIndex % app::kMemoryCount);
  app::MemorySlot& slot = g_state.memories[slotIndex];
  slot.used = 1;
  slot.frequencyKhz = g_state.radio.frequencyKhz;
  slot.bandIndex = g_state.radio.bandIndex;
  slot.modulation = g_state.radio.modulation;
  snprintf(slot.name, sizeof(slot.name), "MEM %02u", static_cast<unsigned>(slotIndex + 1));

  g_state.global.memoryWriteIndex = static_cast<uint8_t>((slotIndex + 1) % app::kMemoryCount);
  services::settings::markDirty();

  Serial.printf("[main] saved favorite -> MEM %02u (%u kHz)\n",
                static_cast<unsigned>(slotIndex + 1),
                static_cast<unsigned>(slot.frequencyKhz));
}

uint8_t quickPopupOptionCount() {
  return app::quickedit::popupOptionCount(g_state, g_state.ui.quickEditItem);
}

uint8_t quickPopupIndexForCurrentValue() {
  return app::quickedit::popupIndexForCurrentValue(g_state, g_state.ui.quickEditItem);
}

void openQuickPopup() {
  g_quickEditLastInputMs = millis();
  g_state.ui.quickEditEditing = true;
  g_state.ui.quickEditPopupIndex = quickPopupIndexForCurrentValue();
}

void openSettingsLayer() {
  g_state.ui.layer = app::UiLayer::Settings;
  g_state.ui.quickEditPopupIndex = 0;
  g_state.ui.settingsChipArmed = false;
  g_quickEditLastInputMs = millis();
}

void applyQuickPopupSelection() {
  if (!app::quickedit::itemEditable(g_state, g_state.ui.quickEditItem)) {
    g_state.ui.quickEditEditing = false;
    return;
  }

  const uint8_t count = quickPopupOptionCount();
  if (count == 0) {
    g_state.ui.quickEditEditing = false;
    return;
  }

  uint8_t idx = g_state.ui.quickEditPopupIndex;
  if (idx >= count) {
    idx = static_cast<uint8_t>(count - 1);
  }

  bool exitQuickEdit = true;
  switch (g_state.ui.quickEditItem) {
    case app::QuickEditItem::Band:
      app::applyBandRuntimeToRadio(g_state, idx);
      applyRadioState(true);
      break;
    case app::QuickEditItem::Step:
      if (g_state.radio.modulation == app::Modulation::FM) {
        g_state.radio.fmStepKhz = app::fmStepKhzFromIndex(idx);
      } else {
        g_state.radio.amStepKhz = app::amStepKhzFromIndex(idx);
      }
      applyRadioState(true);
      break;
    case app::QuickEditItem::Bandwidth:
      g_state.perBand[g_state.radio.bandIndex].bandwidthIndex = idx;
      services::radio::applyRuntimeSettings(g_state);
      services::settings::markDirty();
      break;
    case app::QuickEditItem::Agc:
      if (idx == 0) {
        g_state.global.agcEnabled = 1;
      } else {
        g_state.global.agcEnabled = 0;
        g_state.global.avcLevel = app::quickedit::kAgcLevels[idx - 1];
      }
      services::radio::applyRuntimeSettings(g_state);
      services::settings::markDirty();
      break;
    case app::QuickEditItem::Sql:
      g_state.global.squelch = idx;
      services::radio::applyRuntimeSettings(g_state);
      services::settings::markDirty();
      break;
    case app::QuickEditItem::Avc: {
      if (g_state.radio.modulation == app::Modulation::FM) {
        break;
      }
      const uint8_t avc = app::quickedit::avcValueFromIndex(idx);
      if (app::isSsb(g_state.radio.modulation)) {
        g_state.global.avcSsbLevel = avc;
      } else {
        g_state.global.avcAmLevel = avc;
      }
      services::radio::applyRuntimeSettings(g_state);
      services::settings::markDirty();
      break;
    }
    case app::QuickEditItem::Sys:
      if (idx == 0) {
        g_state.global.zoomMenu = 0;
      } else if (idx == 1) {
        g_state.global.zoomMenu = 1;
      } else if (idx == 2) {
        g_state.global.wifiMode = app::WifiMode::Off;
      } else if (idx == 3) {
        g_state.global.wifiMode = app::WifiMode::Station;
      } else if (idx == 4) {
        g_state.global.wifiMode = app::WifiMode::AccessPoint;
      } else {
        const uint16_t timers[] = {0, 5, 15, 30, 60};
        const uint8_t timerIdx = static_cast<uint8_t>(idx - 5);
        g_state.global.sleepTimerMinutes = timers[timerIdx];
        g_state.global.sleepMode = timers[timerIdx] == 0 ? app::SleepMode::Disabled : app::SleepMode::DisplaySleep;
      }
      services::radio::applyRuntimeSettings(g_state);
      services::settings::markDirty();
      break;
    case app::QuickEditItem::Settings:
      openSettingsLayer();
      exitQuickEdit = false;
      break;
    case app::QuickEditItem::Favorite:
      if (idx == 0) {
        saveCurrentToFavorite();
      } else {
        uint8_t slotIndex = 0;
        if (app::quickedit::favoriteSlotByUsedIndex(g_state, static_cast<uint8_t>(idx - 1), &slotIndex)) {
          const app::MemorySlot& slot = g_state.memories[slotIndex];
          g_state.radio.bandIndex = slot.bandIndex;
          g_state.radio.frequencyKhz = slot.frequencyKhz;
          g_state.radio.modulation = slot.modulation;
          if (!app::isSsb(g_state.radio.modulation)) {
            g_state.radio.bfoHz = 0;
          }
          applyRadioState(true);
        }
      }
      break;
    case app::QuickEditItem::Fine:
      if (app::isSsb(g_state.radio.modulation)) {
        g_state.radio.bfoHz =
            static_cast<int16_t>(app::quickedit::kFineMinHz + static_cast<int16_t>(idx) * app::quickedit::kFineStepHz);
        applyRadioState(true);
      }
      break;
    case app::QuickEditItem::Mode: {
      const app::BandDef& band = app::kBandPlan[g_state.radio.bandIndex];
      if (band.defaultMode == app::Modulation::FM && !band.allowSsb) {
        g_state.radio.modulation = app::Modulation::FM;
      } else {
        g_state.radio.modulation = idx == 0 ? app::Modulation::AM : (idx == 1 ? app::Modulation::LSB : app::Modulation::USB);
      }
      applyRadioState(true);
      break;
    }
  }

  g_state.ui.quickEditEditing = false;
  if (exitQuickEdit) {
    setNowPlayingLayer();
  }
}

void handleQuickEditClick() {
  g_quickEditLastInputMs = millis();
  if (!g_state.ui.quickEditEditing) {
    if (g_state.ui.quickEditItem == app::QuickEditItem::Settings) {
      openSettingsLayer();
      return;
    }
    if (!app::quickedit::itemEditable(g_state, g_state.ui.quickEditItem)) {
      return;
    }
    openQuickPopup();
    return;
  }

  applyQuickPopupSelection();
}

app::settings::Item activeSettingsItem() {
  return app::settings::itemFromIndex(g_state.ui.quickEditPopupIndex);
}

void applyRegionDefaults() {
  const app::FmRegion region = g_state.global.fmRegion;
  const uint8_t mwStepKhz = app::defaultMwStepKhzForRegion(region);
  const uint8_t mwStepIndex = app::amStepIndexFromKhz(mwStepKhz);

  for (uint8_t i = 0; i < app::kBandCount; ++i) {
    const app::BandDef& band = app::kBandPlan[i];
    app::BandRuntimeState& bandState = g_state.perBand[i];

    if (band.id == app::BandId::FM) {
      const uint16_t minKhz = app::bandMinKhzFor(band, region);
      const uint16_t maxKhz = app::bandMaxKhzFor(band, region);
      if (bandState.frequencyKhz < minKhz || bandState.frequencyKhz > maxKhz) {
        bandState.frequencyKhz = app::bandDefaultKhzFor(band, region);
      }
      continue;
    }

    if (band.id == app::BandId::MW || band.id == app::BandId::LW) {
      bandState.stepIndex = mwStepIndex;
    }
  }

  const app::BandDef& activeBand = app::kBandPlan[g_state.radio.bandIndex];
  if (activeBand.id == app::BandId::MW || activeBand.id == app::BandId::LW) {
    g_state.radio.amStepKhz = mwStepKhz;
  }
}

void applyActiveSettingsValue(uint8_t valueIndex) {
  const app::settings::Item item = activeSettingsItem();
  if (!app::settings::itemEditable(g_state, item)) {
    return;
  }

  const app::FmRegion previousRegion = g_state.global.fmRegion;
  app::settings::applyValue(g_state, item, valueIndex);

  if (item == app::settings::Item::Region && g_state.global.fmRegion != previousRegion) {
    applyRegionDefaults();
    applyRadioState(true);
    return;
  }

  services::radio::applyRuntimeSettings(g_state);
  services::settings::markDirty();
}

void handleSettingsRotation(int8_t direction, int8_t repeats) {
  if (repeats <= 0) {
    return;
  }

  if (!g_state.ui.settingsChipArmed) {
    while (repeats-- > 0) {
      if (direction > 0) {
        g_state.ui.quickEditPopupIndex =
            static_cast<uint8_t>((g_state.ui.quickEditPopupIndex + 1) % app::settings::kItemCount);
      } else {
        g_state.ui.quickEditPopupIndex =
            static_cast<uint8_t>((g_state.ui.quickEditPopupIndex + app::settings::kItemCount - 1) % app::settings::kItemCount);
      }
    }
    return;
  }

  const app::settings::Item item = activeSettingsItem();
  if (!app::settings::itemEditable(g_state, item)) {
    return;
  }

  const uint8_t count = app::settings::valueCount(item);
  while (repeats-- > 0) {
    uint8_t current = app::settings::valueIndexForCurrent(g_state, item);
    if (direction > 0) {
      current = static_cast<uint8_t>((current + 1) % count);
    } else {
      current = static_cast<uint8_t>((current + count - 1) % count);
    }
    applyActiveSettingsValue(current);
  }
}

void handleSettingsClick() {
  const app::settings::Item item = activeSettingsItem();
  if (!app::settings::itemEditable(g_state, item)) {
    g_state.ui.settingsChipArmed = false;
    return;
  }

  g_state.ui.settingsChipArmed = !g_state.ui.settingsChipArmed;
}

void handleNowPlayingRotation(int8_t direction, int8_t repeats) {
  switch (g_state.ui.operation) {
    case app::OperationMode::Tune:
      changeFrequency(direction, repeats);
      break;

    case app::OperationMode::Seek:
      g_state.seekScan.direction = direction;
      services::seekscan::requestSeek(direction);
      break;

    case app::OperationMode::Scan:
      if (services::seekscan::navigateFound(g_state, direction)) {
        scheduleTunePersist();
      } else {
        g_state.seekScan.direction = direction;
      }
      break;
  }
}

void handleQuickEditRotation(int8_t direction, int8_t repeats) {
  g_quickEditLastInputMs = millis();
  if (!g_state.ui.quickEditEditing) {
    while (repeats-- > 0) {
      moveQuickEditFocus(direction);
    }
    return;
  }

  const uint8_t count = quickPopupOptionCount();
  if (count == 0) {
    return;
  }

  while (repeats-- > 0) {
    if (direction > 0) {
      g_state.ui.quickEditPopupIndex = static_cast<uint8_t>((g_state.ui.quickEditPopupIndex + 1) % count);
    } else {
      g_state.ui.quickEditPopupIndex = static_cast<uint8_t>((g_state.ui.quickEditPopupIndex + count - 1) % count);
    }
  }
}

void handleRotation(int8_t delta) {
  if (delta == 0) {
    return;
  }

  if (services::seekscan::busy()) {
    services::seekscan::requestCancel();
    return;
  }

  const int8_t direction = delta > 0 ? -1 : 1;
  int8_t repeats = static_cast<int8_t>(abs(delta));

  if (services::input::isButtonHeld()) {
    const uint8_t oldVolume = g_state.radio.volume;
    while (repeats-- > 0) {
      changeVolume(direction);
    }
    if (g_state.radio.volume != oldVolume) {
      services::ui::notifyVolumeAdjust(g_state.radio.volume);
    }
    return;
  }

  switch (g_state.ui.layer) {
    case app::UiLayer::NowPlaying:
      handleNowPlayingRotation(direction, repeats);
      break;
    case app::UiLayer::QuickEdit:
      handleQuickEditRotation(direction, repeats);
      break;
    case app::UiLayer::Settings:
      handleSettingsRotation(direction, repeats);
      break;
    case app::UiLayer::DialPad:
      break;
  }
}

void handleSingleClick() {
  if (services::seekscan::busy()) {
    services::seekscan::requestCancel();
    return;
  }

  if (g_state.ui.layer == app::UiLayer::DialPad) {
    return;
  }

  if (g_state.ui.layer == app::UiLayer::Settings) {
    handleSettingsClick();
    return;
  }

  if (g_state.ui.layer == app::UiLayer::QuickEdit) {
    handleQuickEditClick();
    return;
  }

  if (g_state.ui.operation == app::OperationMode::Tune ||
      g_state.ui.operation == app::OperationMode::Seek ||
      g_state.ui.operation == app::OperationMode::Scan) {
    enterQuickEdit();
  }
}

void handleDoubleClick() {
  if (services::seekscan::busy()) {
    services::seekscan::requestCancel();
    return;
  }

  if (g_state.ui.layer != app::UiLayer::NowPlaying) {
    return;
  }

  cycleOperationMode();
}

void handleTripleClick() {
  if (services::seekscan::busy()) {
    services::seekscan::requestCancel();
    return;
  }

  if (g_state.ui.layer != app::UiLayer::NowPlaying) {
    return;
  }

  saveCurrentToFavorite();
}

void handleLongPress() {
  if (services::seekscan::busy()) {
    services::seekscan::requestCancel();
    return;
  }

  switch (g_state.ui.layer) {
    case app::UiLayer::NowPlaying:
      if (g_state.ui.operation == app::OperationMode::Scan) {
        services::seekscan::requestScan(g_state.seekScan.direction >= 0 ? 1 : -1);
      } else if (g_state.ui.operation == app::OperationMode::Tune || g_state.ui.operation == app::OperationMode::Seek) {
        g_state.ui.layer = app::UiLayer::DialPad;
      }
      return;

    case app::UiLayer::QuickEdit:
      g_state.ui.operation = g_state.ui.quickEditParent;
      g_state.ui.quickEditEditing = false;
      g_state.ui.quickEditPopupIndex = 0;
      setNowPlayingLayer();
      return;

    case app::UiLayer::Settings:
      if (g_state.ui.settingsChipArmed) {
        g_state.ui.settingsChipArmed = false;
        return;
      }
      g_state.ui.layer = app::UiLayer::QuickEdit;
      g_state.ui.quickEditItem = app::QuickEditItem::Settings;
      g_state.ui.quickEditEditing = false;
      g_state.ui.quickEditPopupIndex = 0;
      g_state.ui.settingsChipArmed = false;
      g_quickEditLastInputMs = millis();
      return;

    case app::UiLayer::DialPad:
      setNowPlayingLayer();
      return;
  }
}

void handleButtonEvents() {
  if (services::input::consumeVeryLongPress()) {
    toggleMute();
    return;
  }

  if (services::input::consumeLongPress()) {
    handleLongPress();
    return;
  }

  if (services::input::consumeTripleClick()) {
    handleTripleClick();
    return;
  }

  if (services::input::consumeDoubleClick()) {
    handleDoubleClick();
    return;
  }

  if (services::input::consumeSingleClick()) {
    handleSingleClick();
  }
}

}  // namespace

void setup() {
  Serial.begin(app::kSerialBaud);
  delay(120);
  Serial.printf("\n[%s] %s\n", app::kFirmwareName, app::kFirmwareVersion);

  // Signalscale-style safe boot order:
  // 1) mute amp + enable SI473x rail, 2) bring display up, 3) init radio.
  services::radio::prepareBootPower();

  services::ui::begin();
  services::ui::showBoot("Booting...");
  services::settings::begin();

  if (services::settings::load(g_state)) {
    Serial.println("[main] settings restored");
  } else {
    Serial.println("[main] using default state");
  }

  normalizeRadioStateForBand(g_state.radio, g_state.global.fmRegion);
  app::syncPersistentStateFromRadio(g_state);
  services::seekscan::syncContext(g_state);
  g_state.ui.muted = false;

  g_radioReady = services::radio::begin();
  if (!g_radioReady) {
    services::ui::showBoot("SI473x not detected. Check wiring and power.");
    Serial.printf("[main] radio init failed: %s\n", services::radio::lastError());
    return;
  }

  services::ui::showBoot("Applying radio state...");
  services::radio::apply(g_state);
  services::radio::applyRuntimeSettings(g_state);
  services::radio::setMuted(g_state.ui.muted);
  services::input::begin();
  services::ui::showBoot("Ready");
}

void loop() {
  services::seekscan::syncContext(g_state);

  uint32_t clickWindowMs = app::kMultiClickWindowMs;
  if (g_state.ui.layer == app::UiLayer::QuickEdit || g_state.ui.layer == app::UiLayer::Settings) {
    clickWindowMs = app::kMenuClickWindowMs;
  }
  services::input::setMultiClickWindowMs(clickWindowMs);

  services::input::tick();

  if (services::seekscan::busy() && services::input::consumeAbortRequest()) {
    services::seekscan::requestCancel();
  }

  handleButtonEvents();
  handleRotation(services::input::consumeEncoderDelta());

  if (g_state.ui.layer == app::UiLayer::QuickEdit) {
    const uint32_t nowMs = millis();
    if (nowMs - g_quickEditLastInputMs >= kQuickEditTimeoutMs) {
      setNowPlayingLayer();
    }
  }

  const bool seekScanStateChanged = services::seekscan::tick(g_state);
  if (seekScanStateChanged && !services::seekscan::busy()) {
    scheduleTunePersist();
  }

  flushPendingTunePersistIfIdle();

  services::radio::tick();
  services::settings::tick(g_state);

  const uint32_t nowMs = millis();
  if (nowMs - g_lastUiRenderMs >= app::kUiRefreshMs) {
    services::ui::render(g_state);
    g_lastUiRenderMs = nowMs;
  }

  delay(5);
}
