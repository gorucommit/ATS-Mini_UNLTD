#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/src/services/ui_service.cpp"
#include <Arduino.h>
#include <TFT_eSPI.h>

#include "../../include/app_services.h"
#include "../../include/bandplan.h"
#include "../../include/hardware_pins.h"
#include "../../include/quick_edit_model.h"
#include "../../include/settings_model.h"

namespace services::ui {
namespace {

constexpr int kUiWidth = 320;
constexpr int kUiHeight = 170;
constexpr uint32_t kUiFrameMs = 80;
// Match signalscale RSSI/SNR cadence:
// poll every 80ms, but commit UI values every 8 polls (~640ms).
constexpr uint32_t kSignalPollMs = 80;
constexpr uint32_t kUiKeepAliveMs = 1200;
constexpr uint32_t kVolumeHudMs = 1000;

#ifndef ATS_UI_DEBUG_LOG
#define ATS_UI_DEBUG_LOG 0
#endif

TFT_eSPI g_tft = TFT_eSPI();
TFT_eSprite g_spr = TFT_eSprite(&g_tft);
bool g_tftReady = false;

struct UiRenderKey {
  uint8_t layer;
  uint8_t operation;
  uint8_t quickEditItem;
  uint8_t quickEditEditing;
  uint8_t quickEditPopupIndex;
  uint8_t settingsChipArmed;

  uint8_t bandIndex;
  uint8_t modulation;
  uint16_t frequencyKhz;
  int16_t bfoHz;
  uint8_t amStepKhz;
  uint8_t fmStepKhz;
  uint8_t bandwidthIndex;

  uint8_t agcEnabled;
  uint8_t avcLevel;
  uint8_t avcAmLevel;
  uint8_t avcSsbLevel;
  uint8_t squelch;
  uint8_t softMuteAmLevel;
  uint8_t softMuteSsbLevel;
  uint8_t wifiMode;
  uint8_t sleepMode;
  uint16_t sleepTimerMinutes;
  int16_t utcOffsetMinutes;
  uint8_t fmRegion;
  uint8_t rdsMode;
  int8_t scrollDirection;
  uint8_t brightness;
  uint8_t theme;
  uint8_t uiLayout;
  uint8_t zoomMenu;

  uint32_t favoritesHash;
  uint32_t favoriteNamesHash;
};

uint32_t g_lastRenderMs = 0;
uint32_t g_lastSignalPollMs = 0;
uint32_t g_signalUpdateCounter = 0;
uint8_t g_lastRssi = 0;
uint8_t g_lastSnr = 0;
UiRenderKey g_lastRenderKey{};
bool g_hasRenderKey = false;
int32_t g_lastRenderedMinute = -1;
uint32_t g_volumeHudUntilMs = 0;
uint8_t g_volumeHudValue = 0;
bool g_lastVolumeHudVisible = false;

#if ATS_UI_DEBUG_LOG
uint32_t g_lastSerialLogMs = 0;
#endif

constexpr uint16_t kColorBg = TFT_BLACK;
constexpr uint16_t kColorText = TFT_WHITE;
constexpr uint16_t kColorMuted = TFT_DARKGREY;
constexpr uint16_t kColorChipBg = 0x18C3;
constexpr uint16_t kColorChipFocus = TFT_YELLOW;
constexpr uint16_t kColorScale = 0x632C;
constexpr uint16_t kColorScaleHot = TFT_RED;
constexpr uint16_t kColorRssi = 0x07E0;

const char* operationName(app::OperationMode operation) {
  switch (operation) {
    case app::OperationMode::Tune:
      return "TUNE";
    case app::OperationMode::Seek:
      return "SEEK";
    case app::OperationMode::Scan:
      return "SCAN";
    default:
      return "?";
  }
}

#if ATS_UI_DEBUG_LOG
const char* layerName(app::UiLayer layer) {
  switch (layer) {
    case app::UiLayer::NowPlaying:
      return "NOW";
    case app::UiLayer::QuickEdit:
      return "QEDIT";
    case app::UiLayer::Settings:
      return "SET";
    case app::UiLayer::DialPad:
      return "DIAL";
    default:
      return "?";
  }
}
#endif

const char* modulationName(app::Modulation modulation) {
  switch (modulation) {
    case app::Modulation::FM:
      return "FM";
    case app::Modulation::AM:
      return "AM";
    case app::Modulation::LSB:
      return "LSB";
    case app::Modulation::USB:
      return "USB";
    default:
      return "?";
  }
}

uint32_t hashMix(uint32_t hash, uint32_t value) {
  return (hash ^ value) * 16777619UL;
}

uint32_t favoritesHash(const app::AppState& state) {
  uint32_t hash = 2166136261UL;

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    const app::MemorySlot& slot = state.memories[i];
    hash = hashMix(hash, slot.used ? 1U : 0U);
    if (!slot.used) {
      continue;
    }

    hash = hashMix(hash, slot.bandIndex);
    hash = hashMix(hash, slot.frequencyKhz);
    hash = hashMix(hash, static_cast<uint8_t>(slot.modulation));
  }

  return hash;
}

uint32_t favoriteNamesHash(const app::AppState& state) {
  uint32_t hash = 2166136261UL;

  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    const app::MemorySlot& slot = state.memories[i];
    hash = hashMix(hash, slot.used ? 1U : 0U);
    if (!slot.used) {
      continue;
    }

    for (size_t c = 0; c < sizeof(slot.name); ++c) {
      hash = hashMix(hash, static_cast<uint8_t>(slot.name[c]));
    }
  }

  return hash;
}

UiRenderKey buildRenderKey(const app::AppState& state) {
  UiRenderKey key{};

  key.layer = static_cast<uint8_t>(state.ui.layer);
  key.operation = static_cast<uint8_t>(state.ui.operation);
  key.quickEditItem = static_cast<uint8_t>(state.ui.quickEditItem);
  key.quickEditEditing = static_cast<uint8_t>(state.ui.quickEditEditing ? 1 : 0);
  key.quickEditPopupIndex = state.ui.quickEditPopupIndex;
  key.settingsChipArmed = static_cast<uint8_t>(state.ui.settingsChipArmed ? 1 : 0);

  const uint8_t bandIndex = state.radio.bandIndex < app::kBandCount ? state.radio.bandIndex : app::defaultFmBandIndex();
  key.bandIndex = bandIndex;
  key.modulation = static_cast<uint8_t>(state.radio.modulation);
  key.frequencyKhz = state.radio.frequencyKhz;
  key.bfoHz = state.radio.bfoHz;
  key.amStepKhz = state.radio.amStepKhz;
  key.fmStepKhz = state.radio.fmStepKhz;
  key.bandwidthIndex = state.perBand[bandIndex].bandwidthIndex;

  key.agcEnabled = static_cast<uint8_t>(state.global.agcEnabled ? 1 : 0);
  key.avcLevel = state.global.avcLevel;
  key.avcAmLevel = state.global.avcAmLevel;
  key.avcSsbLevel = state.global.avcSsbLevel;
  key.squelch = state.global.squelch;
  key.softMuteAmLevel = state.global.softMuteAmLevel;
  key.softMuteSsbLevel = state.global.softMuteSsbLevel;
  key.wifiMode = static_cast<uint8_t>(state.global.wifiMode);
  key.sleepMode = static_cast<uint8_t>(state.global.sleepMode);
  key.sleepTimerMinutes = state.global.sleepTimerMinutes;
  key.utcOffsetMinutes = state.global.utcOffsetMinutes;
  key.fmRegion = static_cast<uint8_t>(state.global.fmRegion);
  key.rdsMode = static_cast<uint8_t>(state.global.rdsMode);
  key.scrollDirection = state.global.scrollDirection;
  key.brightness = state.global.brightness;
  key.theme = static_cast<uint8_t>(state.global.theme);
  key.uiLayout = static_cast<uint8_t>(state.global.uiLayout);
  key.zoomMenu = state.global.zoomMenu;

  key.favoritesHash = favoritesHash(state);

  const bool favoritePopupVisible = state.ui.layer == app::UiLayer::QuickEdit &&
                                    state.ui.quickEditEditing &&
                                    state.ui.quickEditItem == app::QuickEditItem::Favorite;
  key.favoriteNamesHash = favoritePopupVisible ? favoriteNamesHash(state) : 0U;

  return key;
}

bool sameRenderKey(const UiRenderKey& lhs, const UiRenderKey& rhs) {
  return lhs.layer == rhs.layer &&
         lhs.operation == rhs.operation &&
         lhs.quickEditItem == rhs.quickEditItem &&
         lhs.quickEditEditing == rhs.quickEditEditing &&
         lhs.quickEditPopupIndex == rhs.quickEditPopupIndex &&
         lhs.settingsChipArmed == rhs.settingsChipArmed &&
         lhs.bandIndex == rhs.bandIndex &&
         lhs.modulation == rhs.modulation &&
         lhs.frequencyKhz == rhs.frequencyKhz &&
         lhs.bfoHz == rhs.bfoHz &&
         lhs.amStepKhz == rhs.amStepKhz &&
         lhs.fmStepKhz == rhs.fmStepKhz &&
         lhs.bandwidthIndex == rhs.bandwidthIndex &&
         lhs.agcEnabled == rhs.agcEnabled &&
         lhs.avcLevel == rhs.avcLevel &&
         lhs.avcAmLevel == rhs.avcAmLevel &&
         lhs.avcSsbLevel == rhs.avcSsbLevel &&
         lhs.squelch == rhs.squelch &&
         lhs.softMuteAmLevel == rhs.softMuteAmLevel &&
         lhs.softMuteSsbLevel == rhs.softMuteSsbLevel &&
         lhs.wifiMode == rhs.wifiMode &&
         lhs.sleepMode == rhs.sleepMode &&
         lhs.sleepTimerMinutes == rhs.sleepTimerMinutes &&
         lhs.utcOffsetMinutes == rhs.utcOffsetMinutes &&
         lhs.fmRegion == rhs.fmRegion &&
         lhs.rdsMode == rhs.rdsMode &&
         lhs.scrollDirection == rhs.scrollDirection &&
         lhs.brightness == rhs.brightness &&
         lhs.theme == rhs.theme &&
         lhs.uiLayout == rhs.uiLayout &&
         lhs.zoomMenu == rhs.zoomMenu &&
         lhs.favoritesHash == rhs.favoritesHash &&
         lhs.favoriteNamesHash == rhs.favoriteNamesHash;
}

uint16_t modeAccent(app::OperationMode operation) {
  switch (operation) {
    case app::OperationMode::Tune:
      return 0x07E0;
    case app::OperationMode::Seek:
      return 0xFD20;
    case app::OperationMode::Scan:
      return 0xF800;
    default:
      return kColorText;
  }
}

uint16_t scaleColor565(uint16_t color, uint8_t numerator, uint8_t denominator) {
  if (denominator == 0) {
    return 0;
  }

  const uint16_t r = static_cast<uint16_t>(((color >> 11) & 0x1F) * numerator / denominator);
  const uint16_t g = static_cast<uint16_t>(((color >> 5) & 0x3F) * numerator / denominator);
  const uint16_t b = static_cast<uint16_t>((color & 0x1F) * numerator / denominator);
  return static_cast<uint16_t>((r << 11) | (g << 5) | b);
}

void drawOperationSideFade(app::OperationMode operation) {
  constexpr int kFadeWidth = 16;
  // Keep side fade subtle: cap intensity to ~40% at the very edge.
  constexpr uint8_t kFadeScaleNum = 2;  // 2/5 = 40%
  constexpr uint8_t kFadeScaleDen = 5;
  const uint16_t accent = modeAccent(operation);
  const uint8_t denom = static_cast<uint8_t>(kFadeWidth - 1);

  for (int x = 0; x < kFadeWidth; ++x) {
    const uint8_t amount = static_cast<uint8_t>(kFadeWidth - 1 - x);
    const uint8_t scaledNum = static_cast<uint8_t>(amount * kFadeScaleNum);
    const uint8_t scaledDen = static_cast<uint8_t>(denom * kFadeScaleDen);
    const uint16_t color = scaleColor565(accent, scaledNum, scaledDen);
    g_spr.drawFastVLine(x, 0, kUiHeight, color);
    g_spr.drawFastVLine(kUiWidth - 1 - x, 0, kUiHeight, color);
  }
}

bool readSignalQuality() {
  uint8_t rssi = 0;
  uint8_t snr = 0;
  if (!services::radio::readSignalQuality(&rssi, &snr)) {
    return false;
  }

  bool changed = false;
  if (!(g_signalUpdateCounter++ & 7U)) {
    if (rssi != g_lastRssi) {
      g_lastRssi = rssi;
      changed = true;
    }
    if (snr != g_lastSnr) {
      g_lastSnr = snr;
      changed = true;
    }
  }

  return changed;
}

void formatClock(const app::AppState& state, char* out, size_t outSize) {
  const int32_t daySeconds = 24 * 60 * 60;
  int32_t seconds = static_cast<int32_t>(millis() / 1000U) + static_cast<int32_t>(state.global.utcOffsetMinutes) * 60;
  seconds %= daySeconds;
  if (seconds < 0) {
    seconds += daySeconds;
  }

  const int32_t hours = seconds / 3600;
  const int32_t minutes = (seconds % 3600) / 60;
  snprintf(out, outSize, "%02ld:%02ld", static_cast<long>(hours), static_cast<long>(minutes));
}

int32_t clockMinuteToken(const app::AppState& state) {
  const int32_t dayMinutes = 24 * 60;
  int32_t minutes = static_cast<int32_t>(millis() / 60000U) + state.global.utcOffsetMinutes;
  minutes %= dayMinutes;
  if (minutes < 0) {
    minutes += dayMinutes;
  }
  return minutes;
}

void formatFrequency(const app::RadioState& radio, char* freq, size_t freqSize, char* unit, size_t unitSize) {
  if (radio.modulation == app::Modulation::FM) {
    snprintf(freq, freqSize, "%u.%02u", static_cast<unsigned>(radio.frequencyKhz / 100), static_cast<unsigned>(radio.frequencyKhz % 100));
    snprintf(unit, unitSize, "MHz");
    return;
  }

  snprintf(freq, freqSize, "%u", static_cast<unsigned>(radio.frequencyKhz));
  snprintf(unit, unitSize, "kHz");
}

void drawHeartIcon(int x, int y, uint16_t color, bool filled) {
  if (filled) {
    g_spr.fillCircle(x - 3, y - 2, 3, color);
    g_spr.fillCircle(x + 3, y - 2, 3, color);
    g_spr.fillTriangle(x - 6, y - 1, x + 6, y - 1, x, y + 7, color);
    return;
  }

  g_spr.drawCircle(x - 3, y - 2, 3, color);
  g_spr.drawCircle(x + 3, y - 2, 3, color);
  g_spr.drawLine(x - 6, y - 1, x, y + 7, color);
  g_spr.drawLine(x + 6, y - 1, x, y + 7, color);
}

void drawBatteryIcon(int x, int y, uint8_t pct, int w = 22) {
  if (w < 12) {
    w = 12;
  }
  const int h = 10;
  const int fill = (pct > 100 ? 100 : pct) * (w - 2) / 100;

  g_spr.drawRect(x, y, w, h, kColorText);
  g_spr.fillRect(x + w, y + 3, 2, h - 6, kColorText);
  g_spr.fillRect(x + 1, y + 1, fill, h - 2, pct < 20 ? kColorScaleHot : kColorRssi);

  char pctText[5];
  snprintf(pctText, sizeof(pctText), "%u", static_cast<unsigned>(pct > 100 ? 100 : pct));
  g_spr.setTextDatum(MC_DATUM);
  g_spr.setTextFont(1);
  g_spr.setTextColor(TFT_BLACK, kColorRssi);
  g_spr.drawString(pctText, x + (w / 2), y + (h / 2));
}

void drawWifiIcon(int x, int y, bool on) {
  const uint16_t color = on ? kColorRssi : kColorMuted;
  g_spr.drawLine(x - 5, y, x, y - 4, color);
  g_spr.drawLine(x, y - 4, x + 5, y, color);
  g_spr.drawLine(x - 3, y + 2, x, y, color);
  g_spr.drawLine(x, y, x + 3, y + 2, color);
  g_spr.fillCircle(x, y + 4, 1, color);
}

void drawMoonIcon(int x, int y, bool on) {
  const uint16_t color = on ? 0xFFE0 : kColorMuted;
  g_spr.fillCircle(x, y, 4, color);
  g_spr.fillCircle(x + 2, y - 1, 4, kColorBg);
}

void drawChip(int x, int y, int w, int h, const char* text, bool focused, bool editing = false, uint8_t font = 1, bool enabled = true) {
  const uint16_t border = !enabled ? kColorMuted : (editing ? kColorScaleHot : (focused ? kColorChipFocus : kColorMuted));
  g_spr.fillRoundRect(x, y, w, h, 3, kColorChipBg);
  g_spr.drawRoundRect(x, y, w, h, 3, border);
  g_spr.setTextDatum(MC_DATUM);
  g_spr.setTextColor(enabled ? kColorText : kColorMuted, kColorChipBg);
  g_spr.setTextFont(font);
  g_spr.drawString(text, x + (w / 2), y + (h / 2));
}

void drawFavoriteChip(int x, int y, int w, int h, bool focused, bool editing, bool favorite) {
  const uint16_t border = editing ? kColorScaleHot : (focused ? kColorChipFocus : kColorMuted);
  g_spr.fillRoundRect(x, y, w, h, 3, kColorChipBg);
  g_spr.drawRoundRect(x, y, w, h, 3, border);

  const int centerY = y + (h / 2) + 1;
  const int heartX = x + (w / 2) - 10;
  const int textX = x + (w / 2) + 8;
  drawHeartIcon(heartX, centerY, favorite ? kColorScaleHot : kColorMuted, favorite);

  g_spr.setTextDatum(MC_DATUM);
  g_spr.setTextColor(kColorText, kColorChipBg);
  g_spr.setTextFont(1);
  g_spr.drawString("FAV", textX, y + (h / 2));
}

bool isCurrentFavorite(const app::AppState& state) {
  for (uint8_t i = 0; i < app::kMemoryCount; ++i) {
    const app::MemorySlot& slot = state.memories[i];
    if (!slot.used) {
      continue;
    }
    if (slot.bandIndex == state.radio.bandIndex &&
        slot.frequencyKhz == state.radio.frequencyKhz &&
        slot.modulation == state.radio.modulation) {
      return true;
    }
  }
  return false;
}

int clampInt(int value, int minValue, int maxValue) {
  if (value < minValue) {
    return minValue;
  }
  if (value > maxValue) {
    return maxValue;
  }
  return value;
}

int scaleXFor(const app::AppState& state, int x0, int x1) {
  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);
  if (bandMaxKhz <= bandMinKhz) {
    return x0;
  }

  const uint32_t span = static_cast<uint32_t>(bandMaxKhz - bandMinKhz);
  const uint32_t pos = state.radio.frequencyKhz <= bandMinKhz
                           ? 0
                           : (state.radio.frequencyKhz >= bandMaxKhz ? span
                                                                     : static_cast<uint32_t>(state.radio.frequencyKhz - bandMinKhz));
  const uint32_t x = static_cast<uint32_t>(x0) + (pos * static_cast<uint32_t>(x1 - x0)) / span;
  return static_cast<int>(x);
}

void drawBottomScale(const app::AppState& state) {
  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);
  const int x0 = 20;
  const int x1 = 300;
  const int y = 140;

  g_spr.drawLine(x0, y, x1, y, kColorScale);
  for (int i = 0; i <= 10; ++i) {
    const int x = x0 + ((x1 - x0) * i) / 10;
    const int h = (i % 5 == 0) ? 6 : 3;
    g_spr.drawLine(x, y - h, x, y + h, kColorScale);
  }

  const int markerX = scaleXFor(state, x0, x1);
  g_spr.fillTriangle(markerX, y - 10, markerX - 4, y - 3, markerX + 4, y - 3, modeAccent(state.ui.operation));

  char limLo[10];
  char limHi[10];
  if (state.radio.modulation == app::Modulation::FM) {
    snprintf(limLo, sizeof(limLo), "%u.%u", static_cast<unsigned>(bandMinKhz / 100), static_cast<unsigned>((bandMinKhz % 100) / 10));
    snprintf(limHi, sizeof(limHi), "%u.%u", static_cast<unsigned>(bandMaxKhz / 100), static_cast<unsigned>((bandMaxKhz % 100) / 10));
  } else {
    snprintf(limLo, sizeof(limLo), "%u", static_cast<unsigned>(bandMinKhz));
    snprintf(limHi, sizeof(limHi), "%u", static_cast<unsigned>(bandMaxKhz));
  }

  g_spr.setTextDatum(TL_DATUM);
  g_spr.setTextColor(kColorMuted, kColorBg);
  g_spr.setTextFont(1);
  g_spr.drawString(limLo, x0 - 2, y + 8);
  g_spr.setTextDatum(TR_DATUM);
  g_spr.drawString(limHi, x1 + 2, y + 8);

  const int bars = (static_cast<int>(g_lastRssi) * 24) / 127;
  const int by = 156;
  for (int i = 0; i < 24; ++i) {
    const int bx = 20 + i * 12;
    const uint16_t barColor = (i < bars) ? (i > 17 ? kColorScaleHot : kColorRssi) : 0x2104;
    g_spr.fillRect(bx, by, 8, 6, barColor);
  }
}

bool volumeHudVisible(uint32_t nowMs) {
  return nowMs < g_volumeHudUntilMs;
}

void drawVolumeHud(const app::AppState& state) {
  (void)state;

  const int w = 180;
  const int h = 28;
  const int x = (kUiWidth - w) / 2;
  const int y = kUiHeight - h - 6;

  const uint8_t volume = g_volumeHudValue > 63 ? 63 : g_volumeHudValue;

  g_spr.fillRoundRect(x, y, w, h, 4, 0x0841);
  g_spr.drawRoundRect(x, y, w, h, 4, kColorChipFocus);

  g_spr.setTextDatum(ML_DATUM);
  g_spr.setTextFont(1);
  g_spr.setTextColor(kColorText, 0x0841);
  g_spr.drawString("VOL", x + 8, y + 9);

  const int barX = x + 36;
  const int barY = y + 8;
  const int barW = w - 48;
  const int barH = 12;
  const int barInnerW = barW - 2;
  const int fillW = clampInt((static_cast<int>(volume) * barInnerW) / 63, 0, barInnerW);
  g_spr.drawRect(barX, barY, barW, barH, kColorMuted);
  if (fillW > 0) {
    g_spr.fillRect(barX + 1, barY + 1, fillW, barH - 2, volume == 0 ? kColorMuted : kColorRssi);
  }

  char valueText[8];
  snprintf(valueText, sizeof(valueText), "%u", static_cast<unsigned>(volume));
  g_spr.setTextDatum(MR_DATUM);
  g_spr.setTextColor(kColorText, 0x0841);
  g_spr.drawString(valueText, x + w - 6, y + 9);
}

void drawQuickPopup(const app::AppState& state) {
  if (!(state.ui.layer == app::UiLayer::QuickEdit && state.ui.quickEditEditing)) {
    return;
  }
  if (!app::quickedit::itemEditable(state, state.ui.quickEditItem)) {
    return;
  }

  const uint8_t count = app::quickedit::popupOptionCount(state, state.ui.quickEditItem);
  if (count == 0) {
    return;
  }

  const uint8_t selected = state.ui.quickEditPopupIndex % count;
  const int w = 172;
  const int h = 92;
  const app::quickedit::ChipRect anchor = app::quickedit::chipRect(state.ui.quickEditItem);

  const int preferredX = anchor.x + (anchor.w / 2) - (w / 2);
  const int x = clampInt(preferredX, 2, kUiWidth - w - 2);

  int y = anchor.y + anchor.h + 2;
  if (y + h > kUiHeight - 2) {
    y = anchor.y - h - 2;
  }
  y = clampInt(y, 2, kUiHeight - h - 2);

  g_spr.fillRoundRect(x, y, w, h, 5, 0x18E3);
  g_spr.drawRoundRect(x, y, w, h, 5, kColorChipFocus);

  g_spr.setTextDatum(TL_DATUM);
  g_spr.setTextFont(1);
  g_spr.setTextColor(kColorChipFocus, 0x18E3);
  g_spr.drawString(app::quickedit::itemName(state.ui.quickEditItem), x + 6, y + 4);

  for (int row = 0; row < 5; ++row) {
    const int relative = row - 2;
    const uint8_t option = static_cast<uint8_t>((selected + count + relative) % count);
    const int rowY = y + 18 + row * 14;
    const bool isSelected = relative == 0;

    if (isSelected) {
      g_spr.fillRoundRect(x + 5, rowY - 1, w - 10, 13, 3, 0x0841);
    }

    char label[28];
    app::quickedit::formatPopupOption(state, state.ui.quickEditItem, option, label, sizeof(label));
    g_spr.setTextColor(isSelected ? kColorChipFocus : kColorText, isSelected ? 0x0841 : 0x18E3);
    g_spr.drawString(label, x + 9, rowY + 1);
  }
}

void drawSettingsScreen(const app::AppState& state) {
  const uint8_t selected = static_cast<uint8_t>(state.ui.quickEditPopupIndex % app::settings::kItemCount);
  const bool editing = state.ui.settingsChipArmed;

  g_spr.fillSprite(kColorBg);
  g_spr.drawRect(0, 0, kUiWidth, kUiHeight, kColorChipFocus);
  g_spr.drawFastHLine(0, 20, kUiWidth, kColorMuted);
  g_spr.drawFastHLine(0, kUiHeight - 18, kUiWidth, kColorMuted);

  g_spr.setTextDatum(TL_DATUM);
  g_spr.setTextFont(2);
  g_spr.setTextColor(kColorChipFocus, kColorBg);
  g_spr.drawString("SETTINGS", 6, 3);

  g_spr.setTextDatum(TR_DATUM);
  g_spr.setTextFont(1);
  g_spr.setTextColor(kColorMuted, kColorBg);
  g_spr.drawString(editing ? "EDIT" : "BROWSE", kUiWidth - 6, 7);

  const int rowStartY = 24;
  const int rowHeight = 16;
  for (uint8_t i = 0; i < app::settings::kItemCount; ++i) {
    const app::settings::Item item = app::settings::itemFromIndex(i);
    const bool focused = i == selected;
    const bool itemEditable = app::settings::itemEditable(state, item);
    const uint16_t rowBg = focused ? (editing ? 0x5000 : 0x0841) : kColorBg;

    if (focused) {
      g_spr.fillRoundRect(4, rowStartY + i * rowHeight - 1, kUiWidth - 8, rowHeight - 2, 3, rowBg);
    }

    g_spr.setTextDatum(TL_DATUM);
    g_spr.setTextFont(1);
    g_spr.setTextColor(focused ? kColorChipFocus : kColorText, rowBg);
    g_spr.drawString(app::settings::itemLabel(item), 10, rowStartY + i * rowHeight + 4);

    char valueText[24];
    app::settings::formatValue(state, item, valueText, sizeof(valueText));
    g_spr.setTextDatum(TR_DATUM);
    g_spr.setTextColor(itemEditable ? (focused ? kColorChipFocus : kColorText) : kColorMuted, rowBg);
    g_spr.drawString(valueText, kUiWidth - 10, rowStartY + i * rowHeight + 4);
  }

  g_spr.setTextDatum(TL_DATUM);
  g_spr.setTextFont(1);
  g_spr.setTextColor(kColorMuted, kColorBg);
  if (editing) {
    g_spr.drawString("Rotate: change  Click/Long: back", 6, kUiHeight - 14);
  } else {
    g_spr.drawString("Rotate: move  Click: edit  Long: exit", 6, kUiHeight - 14);
  }

  if (volumeHudVisible(millis())) {
    drawVolumeHud(state);
  }

  g_spr.pushSprite(0, 0);
}

void drawScreen(const app::AppState& state) {
  if (state.ui.layer == app::UiLayer::Settings) {
    drawSettingsScreen(state);
    return;
  }

  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];

  const bool quickEdit = state.ui.layer == app::UiLayer::QuickEdit;
  const bool popupOpen = quickEdit && state.ui.quickEditEditing;

  const bool focusBand = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Band;
  const bool focusStep = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Step;
  const bool focusBw = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Bandwidth;
  const bool focusAgc = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Agc;
  const bool focusSql = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Sql;
  const bool focusSys = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Sys;
  const bool focusSettings = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Settings;
  const bool focusFav = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Favorite;
  const bool focusFine = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Fine;
  const bool focusAvc = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Avc;
  const bool focusMode = quickEdit && state.ui.quickEditItem == app::QuickEditItem::Mode;
  const bool editableFine = app::quickedit::itemEditable(state, app::QuickEditItem::Fine);
  const bool editableAvc = app::quickedit::itemEditable(state, app::QuickEditItem::Avc);
  const bool editableMode = app::quickedit::itemEditable(state, app::QuickEditItem::Mode);

  char stepText[16];
  const uint8_t stepKhz = state.radio.modulation == app::Modulation::FM ? state.radio.fmStepKhz : state.radio.amStepKhz;
  snprintf(stepText, sizeof(stepText), "STEP:%u", static_cast<unsigned>(stepKhz));

  char bwText[16];
  char bwValue[8];
  app::quickedit::formatBandwidthOption(state.radio, state.perBand[state.radio.bandIndex].bandwidthIndex, bwValue, sizeof(bwValue));
  snprintf(bwText, sizeof(bwText), "BW:%s", bwValue);

  char agcText[18];
  if (state.global.agcEnabled) {
    snprintf(agcText, sizeof(agcText), "AGC:AUTO");
  } else {
    snprintf(agcText, sizeof(agcText), "AGC:%u", static_cast<unsigned>(state.global.avcLevel));
  }

  char sqlText[16];
  snprintf(sqlText, sizeof(sqlText), "SQL:%u", static_cast<unsigned>(state.global.squelch));

  char clockText[8];
  formatClock(state, clockText, sizeof(clockText));

  char fineText[16];
  if (app::isSsb(state.radio.modulation)) {
    snprintf(fineText, sizeof(fineText), "BFO:%+d", static_cast<int>(state.radio.bfoHz));
  } else {
    snprintf(fineText, sizeof(fineText), "BFO:0");
  }

  char avcText[16];
  if (state.radio.modulation == app::Modulation::FM) {
    snprintf(avcText, sizeof(avcText), "AVC:N/A");
  } else if (app::isSsb(state.radio.modulation)) {
    snprintf(avcText, sizeof(avcText), "AVC:%u", static_cast<unsigned>(state.global.avcSsbLevel));
  } else {
    snprintf(avcText, sizeof(avcText), "AVC:%u", static_cast<unsigned>(state.global.avcAmLevel));
  }

  const bool wifiOn = state.global.wifiMode != app::WifiMode::Off;
  const bool sleepOn = state.global.sleepMode != app::SleepMode::Disabled || state.global.sleepTimerMinutes > 0;
  const bool currentFavorite = isCurrentFavorite(state);

  g_spr.fillSprite(kColorBg);
  drawOperationSideFade(state.ui.operation);

  g_spr.setTextColor(kColorText, kColorBg);
  g_spr.setTextFont(2);
  g_spr.setTextDatum(TL_DATUM);
  g_spr.drawString(clockText, 4, 2);

  const app::quickedit::ChipRect fineRect = app::quickedit::chipRect(app::QuickEditItem::Fine);
  const app::quickedit::ChipRect avcRect = app::quickedit::chipRect(app::QuickEditItem::Avc);
  const app::quickedit::ChipRect favRect = app::quickedit::chipRect(app::QuickEditItem::Favorite);
  const app::quickedit::ChipRect modeRect = app::quickedit::chipRect(app::QuickEditItem::Mode);
  const app::quickedit::ChipRect bandRect = app::quickedit::chipRect(app::QuickEditItem::Band);
  const app::quickedit::ChipRect stepRect = app::quickedit::chipRect(app::QuickEditItem::Step);
  const app::quickedit::ChipRect bwRect = app::quickedit::chipRect(app::QuickEditItem::Bandwidth);
  const app::quickedit::ChipRect agcRect = app::quickedit::chipRect(app::QuickEditItem::Agc);
  const app::quickedit::ChipRect sqlRect = app::quickedit::chipRect(app::QuickEditItem::Sql);
  const app::quickedit::ChipRect sysRect = app::quickedit::chipRect(app::QuickEditItem::Sys);
  const app::quickedit::ChipRect setRect = app::quickedit::chipRect(app::QuickEditItem::Settings);

  drawChip(fineRect.x, fineRect.y, fineRect.w, fineRect.h, fineText, focusFine, popupOpen && focusFine, 1, editableFine);
  drawChip(avcRect.x, avcRect.y, avcRect.w, avcRect.h, avcText, focusAvc, popupOpen && focusAvc, 1, editableAvc);
  drawFavoriteChip(favRect.x, favRect.y, favRect.w, favRect.h, focusFav, popupOpen && focusFav, currentFavorite);
  g_spr.setTextDatum(MC_DATUM);
  g_spr.setTextFont(1);
  g_spr.setTextColor(modeAccent(state.ui.operation), kColorBg);
  g_spr.drawString(operationName(state.ui.operation), avcRect.x + (avcRect.w / 2), avcRect.y + avcRect.h + 7);

  drawChip(modeRect.x, modeRect.y, modeRect.w, modeRect.h, modulationName(state.radio.modulation), focusMode, popupOpen && focusMode, 2, editableMode);
  drawChip(bandRect.x, bandRect.y, bandRect.w, bandRect.h, band.name, focusBand, popupOpen && focusBand, 2);
  drawChip(stepRect.x, stepRect.y, stepRect.w, stepRect.h, stepText, focusStep, popupOpen && focusStep, 1);
  drawChip(bwRect.x, bwRect.y, bwRect.w, bwRect.h, bwText, focusBw, popupOpen && focusBw, 1);
  drawChip(agcRect.x, agcRect.y, agcRect.w, agcRect.h, agcText, focusAgc, popupOpen && focusAgc, 1);
  drawChip(sqlRect.x, sqlRect.y, sqlRect.w, sqlRect.h, sqlText, focusSql, popupOpen && focusSql, 1);

  drawChip(sysRect.x, sysRect.y, sysRect.w, sysRect.h, "", focusSys, popupOpen && focusSys, 1);
  const uint8_t batteryPct = 100;
  const int batteryW = sysRect.w - 6;
  drawBatteryIcon(sysRect.x + 3, sysRect.y + 4, batteryPct, batteryW);
  drawMoonIcon(sysRect.x + 13, sysRect.y + sysRect.h - 11, sleepOn);
  drawWifiIcon(sysRect.x + sysRect.w - 11, sysRect.y + sysRect.h - 11, wifiOn);

  drawChip(setRect.x, setRect.y, setRect.w, setRect.h, "SETTINGS", focusSettings, popupOpen && focusSettings, 1);

  char freqText[20];
  char unitText[8];
  formatFrequency(state.radio, freqText, sizeof(freqText), unitText, sizeof(unitText));

  g_spr.setTextDatum(MC_DATUM);
  g_spr.setTextColor(kColorText, kColorBg);
  g_spr.setTextFont(7);
  g_spr.drawString(freqText, 154, 66);

  g_spr.setTextDatum(ML_DATUM);
  g_spr.setTextFont(2);
  g_spr.drawString(unitText, 245, 64);

  const bool stereo = state.radio.modulation == app::Modulation::FM && g_lastSnr >= 12;
  g_spr.setTextColor(stereo ? kColorRssi : kColorMuted, kColorBg);
  g_spr.setTextDatum(ML_DATUM);
  g_spr.drawString(stereo ? "ST" : "MO", 282, 64);

  g_spr.setTextDatum(MC_DATUM);
  g_spr.setTextFont(2);
  g_spr.setTextColor(kColorMuted, kColorBg);
  g_spr.drawString(state.radio.modulation == app::Modulation::FM ? "RDS ---" : "EiBi ---", 160, 100);

  char rssiText[16];
  snprintf(rssiText, sizeof(rssiText), "RSSI:%u", static_cast<unsigned>(g_lastRssi));
  g_spr.setTextFont(1);
  g_spr.drawString(rssiText, 160, 116);

  drawBottomScale(state);
  drawQuickPopup(state);
  if (volumeHudVisible(millis())) {
    drawVolumeHud(state);
  }
  g_spr.pushSprite(0, 0);
}

}  // namespace

bool begin() {
  Serial.println("[ui] tft ui init");

  pinMode(hw::kPinLcdBacklight, OUTPUT);
  digitalWrite(hw::kPinLcdBacklight, LOW);

  g_tft.begin();
  g_tft.setRotation(3);
  g_tft.fillScreen(kColorBg);
  g_tftReady = g_spr.createSprite(kUiWidth, kUiHeight) != nullptr;

  if (!g_tftReady) {
    Serial.println("[ui] sprite alloc failed; using serial fallback");
    g_tft.setTextColor(kColorText, kColorBg);
    g_tft.setTextDatum(MC_DATUM);
    g_tft.drawString("ATS MINI", kUiWidth / 2, (kUiHeight / 2) - 8, 2);
    g_tft.drawString("UI fallback", kUiWidth / 2, (kUiHeight / 2) + 12, 2);
    digitalWrite(hw::kPinLcdBacklight, HIGH);
    return false;
  }

  g_spr.setSwapBytes(true);
  g_spr.fillSprite(kColorBg);
  g_spr.setTextColor(kColorText, kColorBg);
  g_spr.setTextFont(2);
  g_spr.setTextDatum(MC_DATUM);
  g_spr.drawString("ATS MINI", kUiWidth / 2, (kUiHeight / 2) - 10);
  g_spr.setTextFont(1);
  g_spr.drawString("Booting...", kUiWidth / 2, (kUiHeight / 2) + 10);
  g_spr.pushSprite(0, 0);
  digitalWrite(hw::kPinLcdBacklight, HIGH);
  return true;
}

void showBoot(const char* message) {
  Serial.printf("[ui] %s\n", message);

  if (!g_tftReady) {
    g_tft.fillScreen(kColorBg);
    g_tft.setTextColor(kColorText, kColorBg);
    g_tft.setTextDatum(MC_DATUM);
    g_tft.drawString("ATS MINI", kUiWidth / 2, (kUiHeight / 2) - 12, 2);
    g_tft.drawString(message, kUiWidth / 2, (kUiHeight / 2) + 12, 2);
    return;
  }

  g_spr.fillSprite(kColorBg);
  g_spr.setTextColor(kColorText, kColorBg);
  g_spr.setTextFont(2);
  g_spr.setTextDatum(MC_DATUM);
  g_spr.drawString("ATS MINI", kUiWidth / 2, (kUiHeight / 2) - 12);
  g_spr.setTextFont(1);
  g_spr.drawString(message, kUiWidth / 2, (kUiHeight / 2) + 10);
  g_spr.pushSprite(0, 0);
}

void notifyVolumeAdjust(uint8_t volume) {
  g_volumeHudValue = volume;
  g_volumeHudUntilMs = millis() + kVolumeHudMs;
}

void render(const app::AppState& state) {
  const uint32_t nowMs = millis();
  if (nowMs - g_lastRenderMs < kUiFrameMs) {
    return;
  }

  bool signalChanged = false;
  if (nowMs - g_lastSignalPollMs >= kSignalPollMs) {
    signalChanged = readSignalQuality();
    g_lastSignalPollMs = nowMs;
  }

  const UiRenderKey renderKey = buildRenderKey(state);
  const bool stateChanged = !g_hasRenderKey || !sameRenderKey(g_lastRenderKey, renderKey);
  const int32_t minuteToken = clockMinuteToken(state);
  const bool minuteChanged = g_lastRenderedMinute != minuteToken;
  const bool keepAliveDue = nowMs - g_lastRenderMs >= kUiKeepAliveMs;
  const bool hudVisible = volumeHudVisible(nowMs);
  const bool hudChanged = hudVisible != g_lastVolumeHudVisible;

  if (!stateChanged && !signalChanged && !minuteChanged && !keepAliveDue && !hudVisible && !hudChanged) {
    return;
  }

  if (g_tftReady) {
    drawScreen(state);
  }

#if ATS_UI_DEBUG_LOG
  if (nowMs - g_lastSerialLogMs >= 500) {
    const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
    Serial.printf("[ui] %s %u kHz | %s | vol=%u%s | op=%s | layer=%s | found=%u idx=%d\n",
                  band.name,
                  static_cast<unsigned>(state.radio.frequencyKhz),
                  modulationName(state.radio.modulation),
                  static_cast<unsigned>(state.radio.volume),
                  state.ui.muted ? "(M)" : "",
                  operationName(state.ui.operation),
                  layerName(state.ui.layer),
                  static_cast<unsigned>(state.seekScan.foundCount),
                  static_cast<int>(state.seekScan.foundIndex));
    g_lastSerialLogMs = nowMs;
  }
#endif

  g_lastRenderKey = renderKey;
  g_hasRenderKey = true;
  g_lastRenderedMinute = minuteToken;
  g_lastVolumeHudVisible = hudVisible;
  g_lastRenderMs = nowMs;
}

}  // namespace services::ui
