#include <Arduino.h>

#include "../../include/app_config.h"
#include "../../include/app_services.h"
#include "../../include/bandplan.h"

namespace services::seekscan {
namespace {

constexpr uint8_t kMaxFoundStations = 64;
constexpr uint8_t kMaxRawHits = 255;
constexpr uint8_t kMaxScanSegments = 24;

constexpr uint8_t kFoundSourceScan = 0x01;
constexpr uint8_t kFoundSourceSeek = 0x02;

constexpr uint16_t kFmScanStepKhz = 10;  // 100 kHz

enum class Operation : uint8_t {
  None = 0,
  SeekPending = 1,
  ScanRunning = 2,
};

struct FoundStation {
  uint16_t frequencyKhz;
  uint8_t rssi;
  uint8_t sourceMask;
};

struct RawHit {
  uint16_t frequencyKhz;
  uint8_t rssi;
  uint8_t snr;
};

struct ScanSegment {
  uint16_t minKhz;
  uint16_t maxKhz;
  uint16_t stepKhz;
};

struct ContextKey {
  uint8_t bandIndex;
  uint8_t family;
  uint8_t mwSpacingKhz;
  app::FmRegion fmRegion;
};

Operation g_operation = Operation::None;
int8_t g_direction = 1;
bool g_cancelRequested = false;

ContextKey g_context = {0xFF, 0, 9, app::FmRegion::World};

FoundStation g_found[kMaxFoundStations]{};
uint8_t g_foundCount = 0;
int16_t g_foundCursor = -1;

ScanSegment g_segments[kMaxScanSegments]{};
uint8_t g_segmentCount = 0;
uint8_t g_segmentIndex = 0;

RawHit g_rawHits[kMaxRawHits]{};
uint8_t g_rawHitCount = 0;

bool g_scanAwaitingMeasure = false;
uint32_t g_nextActionMs = 0;
uint16_t g_scanCurrentKhz = 0;
uint16_t g_scanRestoreKhz = 0;
uint16_t g_scanBestKhz = 0;
uint8_t g_scanBestRssi = 0;
uint16_t g_scanVisited = 0;
uint16_t g_scanSettleMs = 80;

inline bool isFmFamily(const app::Modulation modulation) {
  return modulation == app::Modulation::FM;
}

uint8_t mwSpacingKhzFor(const app::FmRegion region) {
  return app::defaultMwStepKhzForRegion(region);
}

ContextKey contextFor(const app::AppState& state) {
  ContextKey key{};
  key.bandIndex = state.radio.bandIndex;
  key.family = isFmFamily(state.radio.modulation) ? 1 : 0;
  key.mwSpacingKhz = mwSpacingKhzFor(state.global.fmRegion);
  key.fmRegion = state.global.fmRegion;
  return key;
}

bool sameContext(const ContextKey& lhs, const ContextKey& rhs) {
  return lhs.bandIndex == rhs.bandIndex &&
         lhs.family == rhs.family &&
         lhs.mwSpacingKhz == rhs.mwSpacingKhz &&
         lhs.fmRegion == rhs.fmRegion;
}

uint8_t thresholdRssiFor(const app::Modulation modulation) {
  return modulation == app::Modulation::FM ? 5 : 10;
}

uint8_t thresholdSnrFor(const app::Modulation modulation) {
  return modulation == app::Modulation::FM ? 2 : 3;
}

uint16_t settleDelayMsFor(const app::Modulation modulation) {
  if (modulation == app::Modulation::FM) {
    return 60;
  }

  if (modulation == app::Modulation::AM || modulation == app::Modulation::LSB || modulation == app::Modulation::USB) {
    return 80;
  }

  return 30;
}

void publishFoundState(app::AppState& state) {
  state.seekScan.foundCount = g_foundCount;
  state.seekScan.foundIndex = g_foundCursor;
}

void resetFoundStations(app::AppState& state) {
  g_foundCount = 0;
  g_foundCursor = -1;
  publishFoundState(state);
}

void clearOperationState(app::AppState& state) {
  g_operation = Operation::None;
  g_cancelRequested = false;
  g_scanAwaitingMeasure = false;

  state.seekScan.active = false;
  state.seekScan.seeking = false;
  state.seekScan.scanning = false;
  state.seekScan.pointsVisited = g_scanVisited;
  state.seekScan.bestFrequencyKhz = g_scanBestKhz;
  state.seekScan.bestRssi = g_scanBestRssi;

  publishFoundState(state);
}

void sortFoundStations() {
  for (uint8_t i = 1; i < g_foundCount; ++i) {
    FoundStation key = g_found[i];
    int8_t j = static_cast<int8_t>(i) - 1;

    while (j >= 0 && g_found[j].frequencyKhz > key.frequencyKhz) {
      g_found[j + 1] = g_found[j];
      --j;
    }

    g_found[j + 1] = key;
  }
}

int16_t indexOfFrequency(uint16_t frequencyKhz, uint16_t toleranceKhz) {
  for (uint8_t i = 0; i < g_foundCount; ++i) {
    const uint16_t foundFrequency = g_found[i].frequencyKhz;
    const uint16_t delta = foundFrequency > frequencyKhz ? foundFrequency - frequencyKhz : frequencyKhz - foundFrequency;
    if (delta <= toleranceKhz) {
      return i;
    }
  }

  return -1;
}

int16_t nearestIndexToFrequency(uint16_t frequencyKhz) {
  if (g_foundCount == 0) {
    return -1;
  }

  uint16_t bestDelta = 0xFFFF;
  int16_t bestIndex = -1;

  for (uint8_t i = 0; i < g_foundCount; ++i) {
    const uint16_t foundFrequency = g_found[i].frequencyKhz;
    const uint16_t delta = foundFrequency > frequencyKhz ? foundFrequency - frequencyKhz : frequencyKhz - foundFrequency;
    if (delta < bestDelta) {
      bestDelta = delta;
      bestIndex = i;
    }
  }

  return bestIndex;
}

void setCursorToFrequency(uint16_t frequencyKhz) {
  g_foundCursor = nearestIndexToFrequency(frequencyKhz);
}

void removeStationsBySource(const uint8_t sourceMask) {
  uint8_t out = 0;
  for (uint8_t i = 0; i < g_foundCount; ++i) {
    if ((g_found[i].sourceMask & sourceMask) != 0) {
      continue;
    }
    g_found[out++] = g_found[i];
  }
  g_foundCount = out;

  if (g_foundCount == 0) {
    g_foundCursor = -1;
  } else if (g_foundCursor >= g_foundCount) {
    g_foundCursor = g_foundCount - 1;
  }
}

void addOrUpdateFound(uint16_t frequencyKhz, uint8_t rssi, uint8_t sourceMask, uint16_t mergeDistanceKhz) {
  int16_t existing = indexOfFrequency(frequencyKhz, mergeDistanceKhz);
  if (existing >= 0) {
    FoundStation& entry = g_found[existing];
    if (rssi > entry.rssi) {
      entry.rssi = rssi;
      entry.frequencyKhz = frequencyKhz;
    }
    entry.sourceMask |= sourceMask;
    sortFoundStations();
    return;
  }

  if (g_foundCount < kMaxFoundStations) {
    g_found[g_foundCount].frequencyKhz = frequencyKhz;
    g_found[g_foundCount].rssi = rssi;
    g_found[g_foundCount].sourceMask = sourceMask;
    ++g_foundCount;
  } else {
    // Replace the weakest station when storage is full.
    uint8_t weakest = 0;
    for (uint8_t i = 1; i < g_foundCount; ++i) {
      if (g_found[i].rssi < g_found[weakest].rssi) {
        weakest = i;
      }
    }

    g_found[weakest].frequencyKhz = frequencyKhz;
    g_found[weakest].rssi = rssi;
    g_found[weakest].sourceMask = sourceMask;
  }

  sortFoundStations();
}

bool addSegment(uint16_t minKhz, uint16_t maxKhz, uint16_t stepKhz) {
  if (g_segmentCount >= kMaxScanSegments || stepKhz == 0) {
    return false;
  }

  if (minKhz > maxKhz) {
    const uint16_t tmp = minKhz;
    minKhz = maxKhz;
    maxKhz = tmp;
  }

  g_segments[g_segmentCount++] = {minKhz, maxKhz, stepKhz};
  return true;
}

bool isBroadcastSwBand(const app::BandId bandId) {
  switch (bandId) {
    case app::BandId::BC120m:
    case app::BandId::BC90m:
    case app::BandId::BC75m:
    case app::BandId::BC60m:
    case app::BandId::BC49m:
    case app::BandId::BC41m:
    case app::BandId::BC31m:
    case app::BandId::BC25m:
    case app::BandId::BC22m:
    case app::BandId::BC19m:
    case app::BandId::BC16m:
    case app::BandId::BC15m:
    case app::BandId::BC13m:
    case app::BandId::BC11m:
      return true;
    default:
      return false;
  }
}

uint16_t scanStepFor(const app::AppState& state, const app::BandDef& band) {
  if (state.radio.modulation == app::Modulation::FM) {
    return kFmScanStepKhz;
  }

  if (band.id == app::BandId::MW || band.id == app::BandId::LW) {
    return mwSpacingKhzFor(state.global.fmRegion);
  }

  // Shortwave and other AM-family searches use fixed 5kHz spacing.
  return 5;
}

uint16_t mwScanStepFor(const app::AppState& state) {
  return mwSpacingKhzFor(state.global.fmRegion);
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

bool alignMwSegmentToRaster(uint16_t& minKhz, uint16_t& maxKhz, const app::AppState& state) {
  if (maxKhz < minKhz) {
    return false;
  }

  const uint16_t stepKhz = mwScanStepFor(state);
  if (stepKhz == 0) {
    return false;
  }

  const int32_t originKhz = static_cast<int32_t>(app::mwChannelOriginKhzForRegion(state.global.fmRegion));
  const int32_t snappedMin = snapToGrid(minKhz, originKhz, stepKhz, 1);
  const int32_t snappedMax = snapToGrid(maxKhz, originKhz, stepKhz, -1);

  if (snappedMin < minKhz || snappedMin > maxKhz || snappedMax < minKhz || snappedMax > maxKhz || snappedMin > snappedMax) {
    return false;
  }

  minKhz = static_cast<uint16_t>(snappedMin);
  maxKhz = static_cast<uint16_t>(snappedMax);
  return true;
}

uint16_t mergeDistanceKhzFor(const app::AppState& state) {
  if (state.radio.modulation == app::Modulation::FM) {
    return 100;
  }

  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  return scanStepFor(state, band);
}

void buildScanSegments(const app::AppState& state) {
  g_segmentCount = 0;
  g_segmentIndex = 0;

  const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
  const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
  const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);

  if (state.radio.modulation == app::Modulation::FM) {
    addSegment(bandMinKhz, bandMaxKhz, kFmScanStepKhz);
    return;
  }

  const uint16_t stepKhz = scanStepFor(state, band);
  if (band.id == app::BandId::All) {
    for (size_t i = 0; i < app::kBroadcastRedLineAllCount; ++i) {
      const app::SubBandDef& segment = app::kBroadcastRedLineAll[i];
      uint16_t minKhz = segment.minKhz > bandMinKhz ? segment.minKhz : bandMinKhz;
      uint16_t maxKhz = segment.maxKhz < bandMaxKhz ? segment.maxKhz : bandMaxKhz;
      if (minKhz <= maxKhz) {
        const bool isMwSegment = segment.minKhz >= 500 && segment.maxKhz <= 1705;
        if (isMwSegment && !alignMwSegmentToRaster(minKhz, maxKhz, state)) {
          continue;
        }
        const uint16_t segmentStep = isMwSegment ? mwScanStepFor(state) : stepKhz;
        addSegment(minKhz, maxKhz, segmentStep);
      }
    }
    return;
  }

  // Broadcast SW bands always scan their red-line segment intersection(s),
  // regardless of the current tuned frequency.
  if (isBroadcastSwBand(band.id)) {
    bool addedSegment = false;
    for (size_t i = 0; i < app::kBroadcastRedLineSwCount; ++i) {
      const app::SubBandDef& segment = app::kBroadcastRedLineSw[i];
      const uint16_t minKhz = segment.minKhz > bandMinKhz ? segment.minKhz : bandMinKhz;
      const uint16_t maxKhz = segment.maxKhz < bandMaxKhz ? segment.maxKhz : bandMaxKhz;
      if (minKhz <= maxKhz) {
        if (addSegment(minKhz, maxKhz, stepKhz)) {
          addedSegment = true;
        }
      }
    }
    if (addedSegment) {
      return;
    }
  }

  // Non-broadcast bands, or fallback when no red-line overlap exists: full selected band.
  if (band.id == app::BandId::MW) {
    uint16_t minKhz = bandMinKhz;
    uint16_t maxKhz = bandMaxKhz;
    if (alignMwSegmentToRaster(minKhz, maxKhz, state)) {
      addSegment(minKhz, maxKhz, stepKhz);
      return;
    }
  }
  addSegment(bandMinKhz, bandMaxKhz, stepKhz);
}

void beginScan(const app::AppState& state) {
  g_cancelRequested = false;
  g_scanAwaitingMeasure = false;
  g_nextActionMs = 0;

  g_scanRestoreKhz = state.radio.frequencyKhz;
  g_scanBestKhz = state.radio.frequencyKhz;
  g_scanBestRssi = 0;
  g_scanVisited = 0;

  g_rawHitCount = 0;

  g_scanSettleMs = settleDelayMsFor(state.radio.modulation);

  buildScanSegments(state);
  if (g_segmentCount == 0) {
    const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
    uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
    uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);
    if (band.id == app::BandId::MW) {
      alignMwSegmentToRaster(bandMinKhz, bandMaxKhz, state);
    }
    addSegment(bandMinKhz, bandMaxKhz, scanStepFor(state, band));
    g_segmentIndex = 0;
  }

  if (g_segmentCount == 0) {
    g_operation = Operation::None;
    return;
  }

  g_scanCurrentKhz = g_segments[0].minKhz;
  g_operation = Operation::ScanRunning;
}

bool advanceScanPoint() {
  if (g_segmentCount == 0) {
    return false;
  }

  const ScanSegment& segment = g_segments[g_segmentIndex];
  const uint32_t next = static_cast<uint32_t>(g_scanCurrentKhz) + segment.stepKhz;

  if (next <= segment.maxKhz) {
    g_scanCurrentKhz = static_cast<uint16_t>(next);
    return true;
  }

  ++g_segmentIndex;
  if (g_segmentIndex >= g_segmentCount) {
    return false;
  }

  g_scanCurrentKhz = g_segments[g_segmentIndex].minKhz;
  return true;
}

uint8_t mergeRawHits(uint16_t mergeDistanceKhz, FoundStation* merged, uint8_t maxMerged) {
  if (g_rawHitCount == 0 || maxMerged == 0) {
    return 0;
  }

  uint8_t count = 0;
  RawHit clusterPeak = g_rawHits[0];
  uint16_t clusterLastFrequency = g_rawHits[0].frequencyKhz;

  for (uint8_t i = 1; i < g_rawHitCount; ++i) {
    const RawHit& hit = g_rawHits[i];
    const uint16_t delta = hit.frequencyKhz > clusterLastFrequency ? hit.frequencyKhz - clusterLastFrequency
                                                                    : clusterLastFrequency - hit.frequencyKhz;

    if (delta <= mergeDistanceKhz) {
      clusterLastFrequency = hit.frequencyKhz;
      if (hit.rssi > clusterPeak.rssi || (hit.rssi == clusterPeak.rssi && hit.snr >= clusterPeak.snr)) {
        clusterPeak = hit;
      }
      continue;
    }

    merged[count++] = {clusterPeak.frequencyKhz, clusterPeak.rssi, kFoundSourceScan};
    if (count >= maxMerged) {
      return count;
    }

    clusterPeak = hit;
    clusterLastFrequency = hit.frequencyKhz;
  }

  merged[count++] = {clusterPeak.frequencyKhz, clusterPeak.rssi, kFoundSourceScan};
  return count;
}

void finalizeScan(app::AppState& state) {
  const uint16_t mergeDistanceKhz = mergeDistanceKhzFor(state);

  FoundStation merged[kMaxFoundStations]{};
  const uint8_t mergedCount = mergeRawHits(mergeDistanceKhz, merged, kMaxFoundStations);

  removeStationsBySource(kFoundSourceScan);

  uint8_t bestScanRssi = 0;
  uint16_t bestScanFrequency = g_scanRestoreKhz;

  for (uint8_t i = 0; i < mergedCount; ++i) {
    addOrUpdateFound(merged[i].frequencyKhz, merged[i].rssi, kFoundSourceScan, mergeDistanceKhz);

    if (merged[i].rssi >= bestScanRssi) {
      bestScanRssi = merged[i].rssi;
      bestScanFrequency = merged[i].frequencyKhz;
    }
  }

  if (mergedCount > 0) {
    state.radio.frequencyKhz = bestScanFrequency;
    state.radio.bfoHz = 0;
    services::radio::apply(state);

    g_scanBestKhz = bestScanFrequency;
    g_scanBestRssi = bestScanRssi;
    setCursorToFrequency(bestScanFrequency);
  } else {
    state.radio.frequencyKhz = g_scanRestoreKhz;
    state.radio.bfoHz = 0;
    services::radio::apply(state);

    g_scanBestKhz = g_scanRestoreKhz;
    g_scanBestRssi = 0;
    setCursorToFrequency(g_scanRestoreKhz);
  }
}

void updateContext(app::AppState& state) {
  const ContextKey next = contextFor(state);
  if (!sameContext(next, g_context)) {
    g_context = next;
    resetFoundStations(state);
  }
}

}  // namespace

void requestSeek(int8_t direction) {
  if (g_operation != Operation::None) {
    return;
  }

  // Drop stale abort state from the initiating input event.
  services::input::clearAbortRequest();
  g_direction = direction >= 0 ? 1 : -1;
  g_operation = Operation::SeekPending;
}

void requestScan(int8_t direction) {
  if (g_operation != Operation::None) {
    return;
  }

  // Drop stale abort state from the initiating input event.
  services::input::clearAbortRequest();
  g_direction = direction >= 0 ? 1 : -1;
  g_segmentCount = 0;
  g_operation = Operation::ScanRunning;
}

void requestCancel() { g_cancelRequested = true; }

bool busy() { return g_operation != Operation::None; }

void syncContext(app::AppState& state) { updateContext(state); }

bool navigateFound(app::AppState& state, int8_t direction) {
  updateContext(state);

  if (g_operation != Operation::None || g_foundCount == 0 || direction == 0) {
    publishFoundState(state);
    return false;
  }

  if (g_foundCursor < 0) {
    g_foundCursor = direction > 0 ? 0 : static_cast<int16_t>(g_foundCount - 1);
  } else {
    g_foundCursor = static_cast<int16_t>((g_foundCursor + (direction > 0 ? 1 : -1) + g_foundCount) % g_foundCount);
  }

  state.radio.frequencyKhz = g_found[g_foundCursor].frequencyKhz;
  state.radio.bfoHz = 0;
  services::radio::apply(state);

  state.seekScan.bestFrequencyKhz = state.radio.frequencyKhz;
  state.seekScan.bestRssi = g_found[g_foundCursor].rssi;
  publishFoundState(state);
  return true;
}

bool tick(app::AppState& state) {
  updateContext(state);

  if (g_operation == Operation::None) {
    return false;
  }

  if (g_operation == Operation::SeekPending) {
    state.seekScan.active = true;
    state.seekScan.seeking = true;
    state.seekScan.scanning = false;
    state.seekScan.direction = g_direction;

    const bool found = services::radio::seek(state, g_direction);

    uint8_t rssi = 0;
    uint8_t snr = 0;
    services::radio::readSignalQuality(&rssi, &snr);

    g_scanBestKhz = state.radio.frequencyKhz;
    g_scanBestRssi = rssi;
    g_scanVisited = 1;

    if (found) {
      addOrUpdateFound(state.radio.frequencyKhz, rssi, kFoundSourceSeek, mergeDistanceKhzFor(state));
      setCursorToFrequency(state.radio.frequencyKhz);
    }

    state.seekScan.bestFrequencyKhz = state.radio.frequencyKhz;
    state.seekScan.bestRssi = rssi;
    state.seekScan.pointsVisited = 1;

    clearOperationState(state);
    return found;
  }

  if (g_segmentCount == 0) {
    if (state.radio.modulation == app::Modulation::LSB || state.radio.modulation == app::Modulation::USB) {
      g_scanBestKhz = state.radio.frequencyKhz;
      g_scanBestRssi = 0;
      g_scanVisited = 0;
      clearOperationState(state);
      return false;
    }

    beginScan(state);
    if (g_operation == Operation::None) {
      return false;
    }

    state.seekScan.active = true;
    state.seekScan.seeking = false;
    state.seekScan.scanning = true;
    state.seekScan.direction = g_direction;
  }

  if (g_cancelRequested) {
    state.radio.frequencyKhz = g_scanRestoreKhz;
    state.radio.bfoHz = 0;
    services::radio::apply(state);

    g_scanBestKhz = g_scanRestoreKhz;
    g_scanBestRssi = 0;
    clearOperationState(state);
    return true;
  }

  const uint32_t nowMs = millis();
  if (nowMs < g_nextActionMs) {
    return false;
  }

  if (!g_scanAwaitingMeasure) {
    state.radio.frequencyKhz = g_scanCurrentKhz;
    state.radio.bfoHz = 0;
    services::radio::apply(state);

    g_scanAwaitingMeasure = true;
    g_nextActionMs = nowMs + g_scanSettleMs;

    state.seekScan.active = true;
    state.seekScan.scanning = true;
    state.seekScan.seeking = false;
    state.seekScan.pointsVisited = g_scanVisited;
    state.seekScan.bestFrequencyKhz = g_scanBestKhz;
    state.seekScan.bestRssi = g_scanBestRssi;

    return true;
  }

  uint8_t rssi = 0;
  uint8_t snr = 0;
  services::radio::readSignalQuality(&rssi, &snr);

  if (rssi >= g_scanBestRssi) {
    g_scanBestRssi = rssi;
    g_scanBestKhz = g_scanCurrentKhz;
  }

  const bool aboveThreshold = rssi >= thresholdRssiFor(state.radio.modulation) && snr >= thresholdSnrFor(state.radio.modulation);
  if (aboveThreshold && g_rawHitCount < kMaxRawHits) {
    g_rawHits[g_rawHitCount++] = {g_scanCurrentKhz, rssi, snr};
  }

  ++g_scanVisited;
  state.seekScan.pointsVisited = g_scanVisited;
  state.seekScan.bestFrequencyKhz = g_scanBestKhz;
  state.seekScan.bestRssi = g_scanBestRssi;

  if (!advanceScanPoint()) {
    finalizeScan(state);
    clearOperationState(state);
    return true;
  }

  g_scanAwaitingMeasure = false;
  g_nextActionMs = nowMs;
  return true;
}

}  // namespace services::seekscan
