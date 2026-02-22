#include <Arduino.h>

#include "../../include/app_services.h"
#include "../../include/app_state.h"
#include "../../include/bandplan.h"
#include "../../include/etm_scan.h"

namespace services::etm {
namespace {

constexpr uint8_t kEtmMaxSegments = 24;

static inline uint16_t absDeltaKhz(uint16_t a, uint16_t b) {
  return a >= b ? static_cast<uint16_t>(a - b) : static_cast<uint16_t>(b - a);
}

static const app::EtmBandProfile* profileForBand(const app::AppState& state,
                                                const app::BandDef& band,
                                                uint16_t segmentMinKhz,
                                                uint16_t segmentMaxKhz) {
  if (band.id == app::BandId::FM) {
    return &app::kEtmProfileFm;
  }
  if (band.id == app::BandId::LW) {
    return &app::kEtmProfileLw;
  }
  if (band.id == app::BandId::MW) {
    return app::defaultMwStepKhzForRegion(state.global.fmRegion) == 10
               ? &app::kEtmProfileMw10
               : &app::kEtmProfileMw9;
  }
  // SW, All-band segment, or other: use SW profile for SW range, MW for MW range
  if (segmentMaxKhz <= 1800) {
    return app::defaultMwStepKhzForRegion(state.global.fmRegion) == 10
               ? &app::kEtmProfileMw10
               : &app::kEtmProfileMw9;
  }
  return &app::kEtmProfileSw;
}

static bool isBroadcastSwBand(app::BandId id) {
  switch (id) {
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

static int32_t snapToGrid(int32_t freqKhz, int32_t originKhz, uint8_t stepKhz, int8_t direction) {
  int32_t offset = (freqKhz - originKhz) % static_cast<int32_t>(stepKhz);
  if (offset < 0) offset += stepKhz;
  if (offset == 0) return freqKhz;
  return direction >= 0 ? freqKhz + (stepKhz - offset) : freqKhz - offset;
}

static bool alignMwSegmentToRaster(uint16_t& minKhz, uint16_t& maxKhz, const app::AppState& state) {
  if (maxKhz < minKhz) return false;
  const uint8_t stepKhz = app::defaultMwStepKhzForRegion(state.global.fmRegion);
  if (stepKhz == 0) return false;
  const int32_t originKhz = static_cast<int32_t>(app::mwChannelOriginKhzForRegion(state.global.fmRegion));
  const int32_t snappedMin = snapToGrid(minKhz, originKhz, stepKhz, 1);
  const int32_t snappedMax = snapToGrid(maxKhz, originKhz, stepKhz, -1);
  if (snappedMin < minKhz || snappedMin > maxKhz || snappedMax < minKhz || snappedMax > maxKhz || snappedMin > snappedMax)
    return false;
  minKhz = static_cast<uint16_t>(snappedMin);
  maxKhz = static_cast<uint16_t>(snappedMax);
  return true;
}

// Count coarse points in one segment (same logic as advancePoint: minKhz to maxKhz inclusive).
static uint16_t countPointsInSegment(const app::EtmSegment& seg) {
  uint16_t count = 1;
  uint32_t pos = seg.minKhz;
  while (pos < seg.maxKhz) {
    pos += seg.coarseStepKhz;
    if (pos > seg.maxKhz) pos = seg.maxKhz;
    ++count;
  }
  return count;
}

class EtmScanner {
 public:
  EtmScanner() = default;

  bool requestScan(const app::AppState& state) {
    if (app::isSsb(state.radio.modulation)) return false;

    syncContext(state);
    segmentCount_ = 0;
    candidateCount_ = 0;
    restoreKhz_ = state.radio.frequencyKhz;
    bandIndex_ = state.radio.bandIndex;
    modulation_ = state.radio.modulation;

    const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
    const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
    const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);

    if (state.radio.modulation == app::Modulation::FM) {
      if (!addSegment(state, bandMinKhz, bandMaxKhz, band)) return false;
    } else {
      const uint16_t stepKhz = (band.id == app::BandId::MW || band.id == app::BandId::LW)
                                   ? app::defaultMwStepKhzForRegion(state.global.fmRegion)
                                   : 5u;

      if (band.id == app::BandId::All) {
        for (size_t i = 0; i < app::kBroadcastRedLineAllCount; ++i) {
          const app::SubBandDef& sub = app::kBroadcastRedLineAll[i];
          uint16_t minKhz = sub.minKhz > bandMinKhz ? sub.minKhz : bandMinKhz;
          uint16_t maxKhz = sub.maxKhz < bandMaxKhz ? sub.maxKhz : bandMaxKhz;
          if (minKhz > maxKhz) continue;
          const bool isMw = sub.minKhz >= 500 && sub.maxKhz <= 1705;
          if (isMw && !alignMwSegmentToRaster(minKhz, maxKhz, state)) continue;
          const app::EtmBandProfile* prof = profileForBand(state, band, minKhz, maxKhz);
          if (!addSegmentWithProfile(state, minKhz, maxKhz, prof)) return false;
        }
      } else if (isBroadcastSwBand(band.id)) {
        bool added = false;
        for (size_t i = 0; i < app::kBroadcastRedLineSwCount; ++i) {
          const app::SubBandDef& sub = app::kBroadcastRedLineSw[i];
          uint16_t minKhz = sub.minKhz > bandMinKhz ? sub.minKhz : bandMinKhz;
          uint16_t maxKhz = sub.maxKhz < bandMaxKhz ? sub.maxKhz : bandMaxKhz;
          if (minKhz <= maxKhz && addSegment(state, minKhz, maxKhz, band)) added = true;
        }
        if (!added) addSegment(state, bandMinKhz, bandMaxKhz, band);
      } else if (band.id == app::BandId::MW) {
        uint16_t minKhz = bandMinKhz, maxKhz = bandMaxKhz;
        if (alignMwSegmentToRaster(minKhz, maxKhz, state))
          addSegment(state, minKhz, maxKhz, band);
        else
          addSegment(state, bandMinKhz, bandMaxKhz, band);
      } else {
        addSegment(state, bandMinKhz, bandMaxKhz, band);
      }
    }

    if (segmentCount_ == 0) {
      addSegment(state, bandMinKhz, bandMaxKhz, band);
    }
    if (segmentCount_ == 0) return false;

    totalPoints_ = 0;
    for (uint8_t i = 0; i < segmentCount_; ++i)
      totalPoints_ += countPointsInSegment(segments_[i]);

    segmentIndex_ = 0;
    currentKhz_ = segments_[0].minKhz;
    pointsVisited_ = 0;
    awaitingMeasure_ = false;
    nextActionMs_ = 0;
    settleMs_ = segmentProfiles_[0]->settleMs;
    phase_ = app::EtmPhase::CoarseScan;
    return true;
  }

  bool tick(app::AppState& state) {
    if (phase_ == app::EtmPhase::Idle) return false;
    const uint32_t now = millis();
    if (now < nextActionMs_) return true;
    switch (phase_) {
      case app::EtmPhase::CoarseScan:
        return tickCoarse(state, now);
      case app::EtmPhase::FineScan:
        return tickFine(state, now);
      case app::EtmPhase::Finalize:
        return tickFinalize(state);
      case app::EtmPhase::Cancelling:
        return tickCancelling(state);
      default:
        return false;
    }
  }

  void requestCancel() {
    if (phase_ != app::EtmPhase::Idle) phase_ = app::EtmPhase::Cancelling;
  }

  bool busy() const { return phase_ != app::EtmPhase::Idle; }

  void syncContext(const app::AppState& state) {
    if (memory_.bandIndex != state.radio.bandIndex ||
        memory_.modulation != state.radio.modulation) {
      memory_.count = 0;
      memory_.cursor = -1;
      memory_.bandIndex = state.radio.bandIndex;
      memory_.modulation = state.radio.modulation;
    }
    const app::BandDef& band = app::kBandPlan[state.radio.bandIndex];
    const uint16_t bandMinKhz = app::bandMinKhzFor(band, state.global.fmRegion);
    const uint16_t bandMaxKhz = app::bandMaxKhzFor(band, state.global.fmRegion);
    const app::EtmBandProfile* prof = profileForBand(state, band, bandMinKhz, bandMaxKhz);
    mergeDistanceKhz_ = prof != nullptr ? prof->mergeDistanceKhz : app::kEtmProfileFm.mergeDistanceKhz;
  }

  void publishState(app::AppState& state) {
    state.seekScan.foundCount = memory_.count;
    state.seekScan.foundIndex = memory_.cursor;
    state.seekScan.totalPoints = totalPoints_;
    state.seekScan.fineScanActive = (phase_ == app::EtmPhase::FineScan);
    state.seekScan.cursorScanPass =
        (memory_.cursor >= 0 && static_cast<uint8_t>(memory_.cursor) < memory_.count)
            ? memory_.stations[memory_.cursor].scanPass
            : 0;
  }

  void addSeekResult(uint16_t frequencyKhz, uint8_t rssi, uint8_t snr) {
    const uint16_t mergeKhz = mergeDistanceKhz_;
    for (uint8_t i = 0; i < memory_.count; ++i) {
      if (absDeltaKhz(memory_.stations[i].frequencyKhz, frequencyKhz) <= mergeKhz) {
        memory_.stations[i].rssi = rssi;
        memory_.stations[i].snr = snr;
        memory_.stations[i].lastSeenMs = millis();
        return;
      }
    }
    addStationToMemory(frequencyKhz, rssi, snr, app::kScanPassSeek);
  }

  void navigateNext(app::AppState& state) {
    if (memory_.count == 0) {
      publishState(state);
      return;
    }
    if (memory_.cursor < 0)
      memory_.cursor = 0;
    else
      memory_.cursor = (memory_.cursor + 1) % memory_.count;
    tuneToCursor(state);
    publishState(state);
  }

  void navigatePrev(app::AppState& state) {
    if (memory_.count == 0) {
      publishState(state);
      return;
    }
    if (memory_.cursor < 0)
      memory_.cursor = static_cast<int16_t>(memory_.count - 1);
    else
      memory_.cursor = (memory_.cursor - 1 + memory_.count) % memory_.count;
    tuneToCursor(state);
    publishState(state);
  }

  void navigateNearest(app::AppState& state) {
    if (memory_.count == 0) {
      memory_.cursor = -1;
      publishState(state);
      return;
    }
    const uint16_t freq = state.radio.frequencyKhz;
    uint8_t lo = 0;
    uint8_t hi = memory_.count;
    while (lo + 1 < hi) {
      uint8_t mid = (lo + hi) / 2;
      if (memory_.stations[mid].frequencyKhz <= freq)
        lo = mid;
      else
        hi = mid;
    }
    uint16_t deltaLo = absDeltaKhz(memory_.stations[lo].frequencyKhz, freq);
    uint8_t best = lo;
    if (hi < memory_.count) {
      uint16_t deltaHi = absDeltaKhz(memory_.stations[hi].frequencyKhz, freq);
      if (deltaHi < deltaLo) best = hi;
    }
    memory_.cursor = static_cast<int16_t>(best);
    tuneToCursor(state);
    publishState(state);
  }

  const app::EtmMemory& memory() const { return memory_; }

 private:
  bool addSegment(const app::AppState& state,
                  uint16_t minKhz,
                  uint16_t maxKhz,
                  const app::BandDef& band) {
    const app::EtmBandProfile* prof = profileForBand(state, band, minKhz, maxKhz);
    return addSegmentWithProfile(state, minKhz, maxKhz, prof);
  }

  bool addSegmentWithProfile(const app::AppState& state,
                            uint16_t minKhz,
                            uint16_t maxKhz,
                            const app::EtmBandProfile* prof) {
    (void)state;
    if (segmentCount_ >= kEtmMaxSegments || prof == nullptr) return false;
    if (minKhz > maxKhz) {
      uint16_t t = minKhz; minKhz = maxKhz; maxKhz = t;
    }
    segments_[segmentCount_] = {
        minKhz,
        maxKhz,
        prof->coarseStepKhz,
        prof->fineStepKhz,
    };
    segmentProfiles_[segmentCount_] = prof;
    ++segmentCount_;
    return true;
  }

  bool advancePoint() {
    if (segmentCount_ == 0) return false;
    const app::EtmSegment& seg = segments_[segmentIndex_];
    if (currentKhz_ >= seg.maxKhz) {
      ++segmentIndex_;
      if (segmentIndex_ >= segmentCount_) return false;
      currentKhz_ = segments_[segmentIndex_].minKhz;
      return true;
    }
    currentKhz_ += seg.coarseStepKhz;
    if (currentKhz_ > segments_[segmentIndex_].maxKhz)
      currentKhz_ = segments_[segmentIndex_].maxKhz;
    return true;
  }

  void addCandidate(uint16_t freqKhz, uint8_t rssi, uint8_t snr, uint8_t pass, uint8_t segIdx) {
    if (candidateCount_ < app::kEtmMaxCandidates) {
      app::EtmCandidate& c = candidates_[candidateCount_++];
      c.frequencyKhz = freqKhz;
      c.rssi = rssi;
      c.snr = snr;
      c.scanPass = pass;
      c.segmentIndex = segIdx;
      return;
    }
    // Evict: scanPass 0 first, then 1; never evict 2. Then weakest RSSI.
    int16_t evict = -1;
    for (uint8_t i = 0; i < candidateCount_; ++i) {
      if (candidates_[i].scanPass == 2) continue;
      if (evict < 0 || candidates_[i].scanPass < candidates_[evict].scanPass ||
          (candidates_[i].scanPass == candidates_[evict].scanPass && candidates_[i].rssi < candidates_[evict].rssi))
        evict = static_cast<int16_t>(i);
    }
    if (evict >= 0 && (pass > candidates_[evict].scanPass || (pass == candidates_[evict].scanPass && rssi > candidates_[evict].rssi))) {
      candidates_[evict].frequencyKhz = freqKhz;
      candidates_[evict].rssi = rssi;
      candidates_[evict].snr = snr;
      candidates_[evict].scanPass = pass;
      candidates_[evict].segmentIndex = segIdx;
    }
  }

  bool tickCoarse(app::AppState& state, uint32_t now) {
    state.seekScan.active = true;
    state.seekScan.seeking = false;
    state.seekScan.scanning = true;
    state.seekScan.pointsVisited = pointsVisited_;
    state.seekScan.bestFrequencyKhz = state.radio.frequencyKhz;
    state.seekScan.bestRssi = 0;
    publishState(state);

    if (!awaitingMeasure_) {
      state.radio.frequencyKhz = currentKhz_;
      state.radio.bfoHz = 0;
      services::radio::apply(state);
      awaitingMeasure_ = true;
      nextActionMs_ = now + settleMs_;
      return true;
    }

    uint8_t rssi = 0, snr = 0;
    services::radio::readSignalQuality(&rssi, &snr);

    const uint8_t sensIdx = static_cast<uint8_t>(state.global.scanSensitivity) % 2;
    const app::EtmSensitivity& sens = (state.radio.modulation == app::Modulation::FM)
                                          ? app::kEtmSensitivityFm[sensIdx]
                                          : app::kEtmSensitivityAm[sensIdx];
    const bool above = (rssi >= sens.rssiMin && snr >= sens.snrMin);
    if (above)
      addCandidate(currentKhz_, rssi, snr, app::kScanPassCoarse, segmentIndex_);

    ++pointsVisited_;

    if (!advancePoint()) {
      if (state.global.scanSpeed == app::ScanSpeed::Fast) {
        phase_ = app::EtmPhase::Finalize;
        nextActionMs_ = now;
        return true;
      }
      buildFineWindows();
      phase_ = app::EtmPhase::FineScan;
      fineWindowIndex_ = 0;
      if (fineWindowCount_ == 0) {
        phase_ = app::EtmPhase::Finalize;
        nextActionMs_ = now;
        return true;
      }
      startFineWindow(state, now);
      nextActionMs_ = now;
      return true;
    }

    awaitingMeasure_ = false;
    nextActionMs_ = now;
    return true;
  }

  void buildFineWindows() {
    fineWindowCount_ = 0;
    for (uint8_t segIdx = 0; segIdx < segmentCount_ && fineWindowCount_ < app::kEtmMaxFineWindows; ++segIdx) {
      const app::EtmSegment& seg = segments_[segIdx];
      const app::EtmBandProfile* prof = segmentProfiles_[segIdx];
      if (prof->fineStepKhz == 0) continue;

      // Collect candidates for this segment and sort by frequency
      uint8_t n = 0;
      app::EtmCandidate segCands[app::kEtmMaxCandidates];
      for (uint8_t i = 0; i < candidateCount_; ++i) {
        if (candidates_[i].segmentIndex == segIdx) segCands[n++] = candidates_[i];
      }
      if (n == 0) continue;

      for (uint8_t i = 1; i < n; ++i) {
        app::EtmCandidate key = segCands[i];
        int8_t j = static_cast<int8_t>(i) - 1;
        while (j >= 0 && segCands[j].frequencyKhz > key.frequencyKhz) {
          segCands[j + 1] = segCands[j];
          --j;
        }
        segCands[j + 1] = key;
      }

      // Cluster: merge within 2*coarseStep; center = stronger; window ±fineWindowKhz clamped to segment
      const uint16_t mergeDist = static_cast<uint16_t>(seg.coarseStepKhz * 2);
      uint16_t clusterCenter = segCands[0].frequencyKhz;
      uint8_t clusterBestRssi = segCands[0].rssi;

      for (uint8_t i = 1; i <= n; ++i) {
        uint16_t freq = i < n ? segCands[i].frequencyKhz : 0xFFFF;
        if (i < n && absDeltaKhz(freq, clusterCenter) <= mergeDist) {
          if (segCands[i].rssi > clusterBestRssi) {
            clusterBestRssi = segCands[i].rssi;
            clusterCenter = freq;
          }
          continue;
        }
        if (fineWindowCount_ >= app::kEtmMaxFineWindows) break;
        uint16_t scanMin = clusterCenter >= prof->fineWindowKhz ? clusterCenter - prof->fineWindowKhz : seg.minKhz;
        if (scanMin < seg.minKhz) scanMin = seg.minKhz;
        uint16_t scanMax = clusterCenter + prof->fineWindowKhz;
        if (scanMax > seg.maxKhz) scanMax = seg.maxKhz;
        fineWindows_[fineWindowCount_++] = {
            clusterCenter,
            clusterBestRssi,
            scanMin,
            scanMax,
            segIdx,
        };
        if (i < n) {
          clusterCenter = segCands[i].frequencyKhz;
          clusterBestRssi = segCands[i].rssi;
        }
      }
    }
  }

  void startFineWindow(app::AppState& state, uint32_t now) {
    if (fineWindowIndex_ >= fineWindowCount_) return;
    const app::EtmFineWindow& w = fineWindows_[fineWindowIndex_];
    const app::EtmSegment& seg = segments_[w.segmentIndex];
    const app::EtmBandProfile* prof = segmentProfiles_[w.segmentIndex];
    fineCurrentKhz_ = w.scanMinKhz;
    fineStepKhz_ = seg.fineStepKhz;
    fineScanMaxKhz_ = w.scanMaxKhz;
    fineBestKhz_ = w.centerKhz;
    fineBestRssi_ = w.bestRssi;
    fineBestSnr_ = 0;
    fineAwaitingMeasure_ = false;
    fineSettleMs_ = prof != nullptr ? prof->settleMs : settleMs_;
    (void)state;
    (void)now;
  }

  void upgradeCandidateInWindow(uint16_t centerKhz, uint16_t bestKhz, uint8_t bestRssi, uint8_t bestSnr, uint8_t segIdx) {
    const app::EtmSegment& seg = segments_[segIdx];
    const uint16_t mergeDist = static_cast<uint16_t>(seg.coarseStepKhz * 2);
    for (uint8_t i = 0; i < candidateCount_; ++i) {
      if (candidates_[i].segmentIndex != segIdx) continue;
      if (absDeltaKhz(candidates_[i].frequencyKhz, centerKhz) <= mergeDist) {
        candidates_[i].frequencyKhz = bestKhz;
        candidates_[i].rssi = bestRssi;
        candidates_[i].snr = bestSnr;
        candidates_[i].scanPass = app::kScanPassFine;
        return;
      }
    }
  }

  bool tickFine(app::AppState& state, uint32_t now) {
    state.seekScan.active = true;
    state.seekScan.seeking = false;
    state.seekScan.scanning = true;
    publishState(state);

    if (fineWindowIndex_ >= fineWindowCount_) {
      phase_ = app::EtmPhase::Finalize;
      nextActionMs_ = now;
      return true;
    }

    const app::EtmFineWindow& w = fineWindows_[fineWindowIndex_];

    if (!fineAwaitingMeasure_) {
      state.radio.frequencyKhz = fineCurrentKhz_;
      state.radio.bfoHz = 0;
      services::radio::apply(state);
      fineAwaitingMeasure_ = true;
      nextActionMs_ = now + fineSettleMs_;
      return true;
    }

    uint8_t rssi = 0, snr = 0;
    services::radio::readSignalQuality(&rssi, &snr);
    if (rssi > fineBestRssi_ || (rssi == fineBestRssi_ && snr > fineBestSnr_)) {
      fineBestRssi_ = rssi;
      fineBestSnr_ = snr;
      fineBestKhz_ = fineCurrentKhz_;
    }

    fineCurrentKhz_ += fineStepKhz_;
    if (fineCurrentKhz_ > fineScanMaxKhz_) {
      upgradeCandidateInWindow(w.centerKhz, fineBestKhz_, fineBestRssi_, fineBestSnr_, w.segmentIndex);
      ++fineWindowIndex_;
      if (fineWindowIndex_ >= fineWindowCount_) {
        phase_ = app::EtmPhase::Finalize;
        nextActionMs_ = now;
        return true;
      }
      startFineWindow(state, now);
    }
    fineAwaitingMeasure_ = false;
    nextActionMs_ = now;
    return true;
  }

  bool tickFinalize(app::AppState& state) {
    const app::EtmBandProfile* prof = segmentCount_ > 0 ? segmentProfiles_[0] : &app::kEtmProfileFm;
    const uint16_t mergeKhz = prof->mergeDistanceKhz;

    // Merge candidates into memory: dedupe by mergeKhz, best RSSI wins; sort by freq
    memory_.count = 0;
    memory_.cursor = -1;
    memory_.bandIndex = bandIndex_;
    memory_.modulation = modulation_;

    for (uint8_t i = 0; i < candidateCount_; ++i) {
      const app::EtmCandidate& c = candidates_[i];
      int16_t found = -1;
      for (uint8_t j = 0; j < memory_.count; ++j) {
        if (absDeltaKhz(memory_.stations[j].frequencyKhz, c.frequencyKhz) <= mergeKhz) {
          found = static_cast<int16_t>(j);
          break;
        }
      }
      if (found >= 0) {
        app::EtmStation& s = memory_.stations[found];
        if (c.rssi > s.rssi || (c.rssi == s.rssi && c.scanPass > s.scanPass)) {
          s.frequencyKhz = c.frequencyKhz;
          s.rssi = c.rssi;
          s.snr = c.snr;
          s.scanPass = c.scanPass;
          s.lastSeenMs = millis();
        }
        continue;
      }
      if (memory_.count >= app::kEtmMaxStations) {
        // Evict: pass 0 first, then 1
        int16_t evict = -1;
        for (uint8_t j = 0; j < memory_.count; ++j) {
          if (memory_.stations[j].scanPass == 2) continue;
          if (evict < 0 || memory_.stations[j].scanPass < memory_.stations[evict].scanPass ||
              (memory_.stations[j].scanPass == memory_.stations[evict].scanPass && memory_.stations[j].rssi < memory_.stations[evict].rssi))
            evict = static_cast<int16_t>(j);
        }
        if (evict >= 0) {
          memory_.stations[evict] = {
              c.frequencyKhz, c.rssi, c.snr, bandIndex_, modulation_, c.scanPass, static_cast<uint32_t>(millis())};
        }
        continue;
      }
      memory_.stations[memory_.count++] = {
          c.frequencyKhz, c.rssi, c.snr, bandIndex_, modulation_, c.scanPass, static_cast<uint32_t>(millis())};
    }

    // Sort by frequency
    for (uint8_t i = 1; i < memory_.count; ++i) {
      app::EtmStation key = memory_.stations[i];
      int8_t j = static_cast<int8_t>(i) - 1;
      while (j >= 0 && memory_.stations[j].frequencyKhz > key.frequencyKhz) {
        memory_.stations[j + 1] = memory_.stations[j];
        --j;
      }
      memory_.stations[j + 1] = key;
    }

    uint16_t tuneKhz = restoreKhz_;
    uint8_t bestRssi = 0;
    for (uint8_t i = 0; i < memory_.count; ++i) {
      if (memory_.stations[i].rssi > bestRssi) {
        bestRssi = memory_.stations[i].rssi;
        tuneKhz = memory_.stations[i].frequencyKhz;
        memory_.cursor = static_cast<int16_t>(i);
      }
    }
    if (memory_.count > 0 && memory_.cursor < 0)
      memory_.cursor = 0;

    state.radio.frequencyKhz = tuneKhz;
    state.radio.bfoHz = 0;
    services::radio::apply(state);

    state.seekScan.active = false;
    state.seekScan.seeking = false;
    state.seekScan.scanning = false;
    state.seekScan.pointsVisited = pointsVisited_;
    state.seekScan.bestFrequencyKhz = tuneKhz;
    state.seekScan.bestRssi = bestRssi;
    publishState(state);

    candidateCount_ = 0;
    phase_ = app::EtmPhase::Idle;
    return true;
  }

  void addStationToMemory(uint16_t freqKhz, uint8_t rssi, uint8_t snr, uint8_t pass) {
    if (memory_.count < app::kEtmMaxStations) {
      app::EtmStation& s = memory_.stations[memory_.count++];
      s.frequencyKhz = freqKhz;
      s.rssi = rssi;
      s.snr = snr;
      s.bandIndex = memory_.bandIndex;
      s.modulation = memory_.modulation;
      s.scanPass = pass;
      s.lastSeenMs = millis();
      return;
    }
    int16_t evict = -1;
    for (uint8_t i = 0; i < memory_.count; ++i) {
      if (memory_.stations[i].scanPass == 2) continue;
      if (evict < 0 || memory_.stations[i].scanPass < memory_.stations[evict].scanPass ||
          (memory_.stations[i].scanPass == memory_.stations[evict].scanPass &&
           memory_.stations[i].rssi < memory_.stations[evict].rssi))
        evict = static_cast<int16_t>(i);
    }
    if (evict >= 0) {
      memory_.stations[evict].frequencyKhz = freqKhz;
      memory_.stations[evict].rssi = rssi;
      memory_.stations[evict].snr = snr;
      memory_.stations[evict].scanPass = pass;
      memory_.stations[evict].lastSeenMs = millis();
    }
  }

  void tuneToCursor(app::AppState& state) {
    if (memory_.cursor < 0 || memory_.cursor >= static_cast<int16_t>(memory_.count)) return;
    const app::EtmStation& s = memory_.stations[memory_.cursor];
    state.radio.frequencyKhz = s.frequencyKhz;
    state.radio.bfoHz = 0;
    services::radio::apply(state);
  }

  bool tickCancelling(app::AppState& state) {
    state.radio.frequencyKhz = restoreKhz_;
    state.radio.bfoHz = 0;
    services::radio::apply(state);
    candidateCount_ = 0;
    state.seekScan.active = false;
    state.seekScan.seeking = false;
    state.seekScan.scanning = false;
    publishState(state);
    phase_ = app::EtmPhase::Idle;
    return true;
  }

  app::EtmPhase phase_ = app::EtmPhase::Idle;
  uint32_t nextActionMs_ = 0;
  app::EtmMemory memory_{};
  uint16_t mergeDistanceKhz_ = app::kEtmProfileFm.mergeDistanceKhz;

  app::EtmSegment segments_[kEtmMaxSegments];
  const app::EtmBandProfile* segmentProfiles_[kEtmMaxSegments];
  uint8_t segmentCount_ = 0;
  uint8_t segmentIndex_ = 0;
  uint16_t currentKhz_ = 0;
  uint16_t totalPoints_ = 0;
  uint16_t pointsVisited_ = 0;
  uint16_t restoreKhz_ = 0;
  uint16_t settleMs_ = 0;
  uint8_t bandIndex_ = 0;
  app::Modulation modulation_ = app::Modulation::FM;
  bool awaitingMeasure_ = false;

  app::EtmCandidate candidates_[app::kEtmMaxCandidates];
  uint8_t candidateCount_ = 0;

  app::EtmFineWindow fineWindows_[app::kEtmMaxFineWindows];
  uint8_t fineWindowCount_ = 0;
  uint8_t fineWindowIndex_ = 0;
  uint16_t fineCurrentKhz_ = 0;
  uint16_t fineStepKhz_ = 0;
  uint16_t fineScanMaxKhz_ = 0;
  uint16_t fineBestKhz_ = 0;
  uint8_t fineBestRssi_ = 0;
  uint8_t fineBestSnr_ = 0;
  uint16_t fineSettleMs_ = 0;
  bool fineAwaitingMeasure_ = false;
};

EtmScanner g_scanner;

}  // namespace

bool requestScan(const app::AppState& state) {
  return g_scanner.requestScan(state);
}

bool tick(app::AppState& state) {
  return g_scanner.tick(state);
}

void requestCancel() {
  g_scanner.requestCancel();
}

bool busy() {
  return g_scanner.busy();
}

void syncContext(app::AppState& state) {
  g_scanner.syncContext(state);
}

void publishState(app::AppState& state) {
  g_scanner.publishState(state);
}

void addSeekResult(uint16_t frequencyKhz, uint8_t rssi, uint8_t snr) {
  g_scanner.addSeekResult(frequencyKhz, rssi, snr);
}

void navigateNext(app::AppState& state) {
  g_scanner.navigateNext(state);
}

void navigatePrev(app::AppState& state) {
  g_scanner.navigatePrev(state);
}

void navigateNearest(app::AppState& state) {
  g_scanner.navigateNearest(state);
}

}  // namespace services::etm
