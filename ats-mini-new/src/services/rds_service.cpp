#include <Arduino.h>
#include <SI4735.h>

#include <string.h>

#include "../../include/app_services.h"

namespace services::rds {
namespace {

constexpr uint32_t kRdsTickMs = 220;
constexpr uint8_t kMaxGroupsPerTick = 4;  // signal-scale: RDS_CHECK_GROUPS_PER_TICK
constexpr uint32_t kRdsUiCommitMinMs = 500;
constexpr uint8_t kRdsQualityMinBuffer = 30;
constexpr uint8_t kRdsQualityMinCommit = 45;
constexpr uint8_t kRdsPiVoteWindow = 5;
constexpr uint8_t kRdsPiLockThreshold = 3;
constexpr uint8_t kRdsPiChangeThreshold = 4;
constexpr uint8_t kRdsPsSegments = 4;
constexpr uint8_t kRdsPsVoteWindow = 5;
constexpr uint8_t kRdsPsCommitThreshold = 3;
constexpr uint8_t kRdsPsChangeThreshold = 4;
constexpr uint32_t kRdsPsFreshWindowMs = 4000;
constexpr uint8_t kRdsRtSegments2A = 16;
constexpr uint8_t kRdsRtSegments2B = 16;
constexpr uint32_t kRdsRtAbDebounceWindowMs = 10000;
constexpr uint8_t kRdsRtAbDebounceToggles = 2;
constexpr uint8_t kRdsRtPartialCommitSegments = 12;
constexpr uint32_t kRdsHoldMs = 10000;
constexpr uint32_t kRdsStaleClearMs = 30000;
constexpr uint32_t kCtStaleMs = 90000;
constexpr uint8_t kCtRepeatVotes = 2;

struct PiVoteState {
  uint16_t window[kRdsPiVoteWindow];
  uint8_t count;
  uint8_t index;
  bool locked;
  uint16_t lockedPi;
};

struct QualityState {
  uint8_t score;
  uint32_t lastUiCommitMs;
  uint32_t lastGoodGroupMs;
};

struct PsSegmentState {
  uint16_t window[kRdsPsVoteWindow];
  uint8_t count;
  uint8_t index;
  bool committed;
  uint16_t committedValue;
  uint32_t committedAtMs;
};

struct PsState {
  PsSegmentState seg[kRdsPsSegments];
};

struct RtState {
  char buf2A[64];
  uint16_t mask2A;
  char buf2B[32];
  uint16_t mask2B;
  bool hasAb;
  uint8_t abFlag;
  uint32_t lastAbToggleMs;
  uint8_t abToggleCount;
  char committed[65];
  bool committedValid;
  uint32_t committedAtMs;
};

struct DecoderRuntime {
  bool initialized;
  uint8_t lastBandIndex;
  uint16_t lastFrequencyKhz;
  app::Modulation lastModulation;
  app::RdsMode lastMode;
  bool lastSeekBusy;
  uint32_t lastTickMs;
  PiVoteState piVote;
  QualityState quality;
  PsState ps;
  RtState rt;

  bool ctCandidateValid;
  uint16_t ctCandidateMjd;
  uint8_t ctCandidateHour;
  uint8_t ctCandidateMinute;
  uint8_t ctCandidateRepeats;
};

DecoderRuntime g_rt{};

inline bool isFmActive(const app::AppState& state) { return state.radio.modulation == app::Modulation::FM; }

inline bool modeEnabled(app::RdsMode mode) { return mode != app::RdsMode::Off; }
inline bool modeAllowsPs(app::RdsMode mode) { return mode == app::RdsMode::Ps || mode == app::RdsMode::FullNoCt || mode == app::RdsMode::All; }
inline bool modeAllowsPi(app::RdsMode mode) { return mode == app::RdsMode::FullNoCt || mode == app::RdsMode::All; }
inline bool modeAllowsPty(app::RdsMode mode) { return mode == app::RdsMode::FullNoCt || mode == app::RdsMode::All; }
inline bool modeAllowsRt(app::RdsMode mode) { return mode == app::RdsMode::FullNoCt || mode == app::RdsMode::All; }
inline bool modeAllowsCtApply(app::RdsMode mode) { return mode == app::RdsMode::All; }

inline bool isGoodBle(uint8_t ble) { return ble <= 1; }

void resetRtAssembly() {
  memset(g_rt.rt.buf2A, ' ', sizeof(g_rt.rt.buf2A));
  memset(g_rt.rt.buf2B, ' ', sizeof(g_rt.rt.buf2B));
  g_rt.rt.mask2A = 0;
  g_rt.rt.mask2B = 0;
}

void resetDecoderRuntime() {
  memset(&g_rt.piVote, 0, sizeof(g_rt.piVote));
  memset(&g_rt.quality, 0, sizeof(g_rt.quality));
  memset(&g_rt.ps, 0, sizeof(g_rt.ps));
  memset(&g_rt.rt, 0, sizeof(g_rt.rt));
  resetRtAssembly();
  g_rt.ctCandidateValid = false;
  g_rt.ctCandidateMjd = 0;
  g_rt.ctCandidateHour = 0;
  g_rt.ctCandidateMinute = 0;
  g_rt.ctCandidateRepeats = 0;
}

void clearPi(app::RdsState& rds) {
  rds.pi = 0;
  rds.hasPi = 0;
}

void clearPty(app::RdsState& rds) {
  rds.pty = 0;
  rds.hasPty = 0;
}

void clearPs(app::RdsState& rds) {
  rds.ps[0] = '\0';
  rds.hasPs = 0;
}

void clearRt(app::RdsState& rds) {
  rds.rt[0] = '\0';
  rds.hasRt = 0;
}

void clearCt(app::AppState& state) {
  state.rds.hasCt = 0;
  state.rds.ctMjd = 0;
  state.rds.ctHour = 0;
  state.rds.ctMinute = 0;
  services::clock::clearRdsUtcBase(state);
}

void applyModeVisibilityMask(app::AppState& state) {
  const app::RdsMode mode = state.global.rdsMode;
  if (!modeAllowsPs(mode)) {
    clearPs(state.rds);
  }
  if (!modeAllowsPi(mode)) {
    clearPi(state.rds);
  }
  if (!modeAllowsPty(mode)) {
    clearPty(state.rds);
  }
  if (!modeAllowsRt(mode)) {
    clearRt(state.rds);
  }
  if (!modeAllowsCtApply(mode)) {
    services::clock::clearRdsUtcBase(state);
  }
}

uint32_t ctStampMinutes(uint16_t mjd, uint8_t hour, uint8_t minute) {
  return static_cast<uint32_t>(mjd) * 1440UL + static_cast<uint32_t>(hour) * 60UL + minute;
}

char sanitizeRdsChar(uint8_t value) {
  return (value >= 0x20 && value <= 0x7E) ? static_cast<char>(value) : ' ';
}

char sanitizeRtChar(uint8_t value) {
  if (value == 0x0D || value == 0x0A) {
    return static_cast<char>(value);
  }
  return sanitizeRdsChar(value);
}

size_t trimCopy(char* dst, size_t dstSize, const char* src, size_t srcLen) {
  if (dst == nullptr || dstSize == 0) {
    return 0;
  }

  while (srcLen > 0 && (src[srcLen - 1] == ' ' || src[srcLen - 1] == '\0')) {
    --srcLen;
  }

  if (srcLen > dstSize - 1) {
    srcLen = dstSize - 1;
  }

  if (srcLen > 0) {
    memcpy(dst, src, srcLen);
  }
  dst[srcLen] = '\0';
  return srcLen;
}

bool updatePiVote(uint16_t pi, uint16_t* selectedPi = nullptr) {
  if (pi == 0x0000) {
    if (selectedPi != nullptr) {
      *selectedPi = g_rt.piVote.lockedPi;
    }
    return g_rt.piVote.locked;
  }

  g_rt.piVote.window[g_rt.piVote.index] = pi;
  g_rt.piVote.index = static_cast<uint8_t>((g_rt.piVote.index + 1U) % kRdsPiVoteWindow);
  if (g_rt.piVote.count < kRdsPiVoteWindow) {
    ++g_rt.piVote.count;
  }

  uint16_t winner = 0x0000;
  uint8_t winnerCount = 0;
  uint8_t runnerCount = 0;

  for (uint8_t i = 0; i < g_rt.piVote.count; ++i) {
    const uint16_t candidate = g_rt.piVote.window[i];
    if (candidate == 0x0000) {
      continue;
    }

    uint8_t count = 0;
    for (uint8_t j = 0; j < g_rt.piVote.count; ++j) {
      count += (g_rt.piVote.window[j] == candidate) ? 1U : 0U;
    }

    if (count > winnerCount || (count == winnerCount && candidate == g_rt.piVote.lockedPi)) {
      runnerCount = winnerCount;
      winnerCount = count;
      winner = candidate;
    } else if (count > runnerCount && candidate != winner) {
      runnerCount = count;
    }
  }

  if (g_rt.piVote.locked) {
    if (winner == g_rt.piVote.lockedPi) {
      g_rt.piVote.locked = winnerCount >= kRdsPiLockThreshold;
    } else if (winnerCount >= kRdsPiChangeThreshold && winnerCount >= static_cast<uint8_t>(runnerCount + 2U)) {
      g_rt.piVote.lockedPi = winner;
    }
  } else if (winnerCount >= kRdsPiLockThreshold && winnerCount >= static_cast<uint8_t>(runnerCount + 1U)) {
    g_rt.piVote.locked = true;
    g_rt.piVote.lockedPi = winner;
  }

  if (selectedPi != nullptr) {
    *selectedPi = g_rt.piVote.lockedPi;
  }
  return g_rt.piVote.locked;
}

uint8_t computeGroupQuality(uint8_t snrSample, uint8_t bleA, uint8_t bleB, uint8_t bleC, uint8_t bleD) {
  const uint8_t maxBle = max(max(bleA, bleB), max(bleC, bleD));
  const uint8_t sumBle = static_cast<uint8_t>(bleA + bleB + bleC + bleD);

  int quality = 30 + min(static_cast<int>(snrSample) * 3, 60);
  quality -= static_cast<int>(maxBle) * 18;
  quality -= static_cast<int>(sumBle) * 4;
  return static_cast<uint8_t>(constrain(quality, 0, 100));
}

uint8_t updateRdsQuality(bool validGroup, int qualitySample, uint32_t nowMs) {
  const int target = validGroup ? constrain(qualitySample, 0, 100) : 0;

  if (validGroup && target >= kRdsQualityMinBuffer) {
    g_rt.quality.lastGoodGroupMs = nowMs;
  }

  g_rt.quality.score = static_cast<uint8_t>((static_cast<uint16_t>(g_rt.quality.score) * 3U + static_cast<uint16_t>(target)) / 4U);
  return g_rt.quality.score;
}

bool commitPiToState(app::AppState& state, uint16_t pi, uint32_t nowMs) {
  if (!modeAllowsPi(state.global.rdsMode)) {
    return false;
  }

  if (state.rds.hasPi && state.rds.pi == pi) {
    return false;
  }

  state.rds.pi = pi;
  state.rds.hasPi = 1;
  state.rds.lastPiCommitMs = nowMs;
  return true;
}

void commitPtyImmediate(app::AppState& state, uint8_t pty, uint32_t nowMs) {
  if (!modeAllowsPty(state.global.rdsMode)) {
    return;
  }

  pty &= 0x1F;
  if (state.rds.hasPty && state.rds.pty == pty) {
    return;
  }

  state.rds.pty = pty;
  state.rds.hasPty = 1;
  state.rds.lastPtyCommitMs = nowMs;
}

bool commitPsToState(app::AppState& state, const char* ps, uint32_t nowMs) {
  if (!modeAllowsPs(state.global.rdsMode)) {
    return false;
  }

  char trimmed[app::kRdsPsCapacity];
  if (trimCopy(trimmed, sizeof(trimmed), ps, 8) == 0) {
    return false;
  }

  if (state.rds.hasPs && strcmp(state.rds.ps, trimmed) == 0) {
    return false;
  }

  app::copyText(state.rds.ps, trimmed);
  state.rds.hasPs = 1;
  state.rds.lastPsCommitMs = nowMs;
  return true;
}

bool commitRtToState(app::AppState& state, const char* rt, uint32_t nowMs) {
  if (!modeAllowsRt(state.global.rdsMode)) {
    return false;
  }

  char trimmed[app::kRdsRtCapacity];
  if (trimCopy(trimmed, sizeof(trimmed), rt, strlen(rt)) == 0) {
    return false;
  }

  if (state.rds.hasRt && strcmp(state.rds.rt, trimmed) == 0) {
    return false;
  }

  app::copyText(state.rds.rt, trimmed);
  state.rds.hasRt = 1;
  state.rds.lastRtCommitMs = nowMs;
  return true;
}

void addPsSegmentVote(uint8_t address, char c0, char c1, uint32_t nowMs) {
  if (address >= kRdsPsSegments) {
    return;
  }

  PsSegmentState& seg = g_rt.ps.seg[address];
  const uint16_t sample = static_cast<uint16_t>((static_cast<uint16_t>(static_cast<uint8_t>(c0)) << 8) |
                                                static_cast<uint8_t>(c1));

  seg.window[seg.index] = sample;
  seg.index = static_cast<uint8_t>((seg.index + 1U) % kRdsPsVoteWindow);
  if (seg.count < kRdsPsVoteWindow) {
    ++seg.count;
  }

  uint16_t winner = 0;
  uint8_t winnerCount = 0;
  uint8_t runnerCount = 0;

  for (uint8_t i = 0; i < seg.count; ++i) {
    const uint16_t candidate = seg.window[i];
    uint8_t count = 0;
    for (uint8_t j = 0; j < seg.count; ++j) {
      count += (seg.window[j] == candidate) ? 1U : 0U;
    }

    if (count > winnerCount || (count == winnerCount && candidate == seg.committedValue)) {
      runnerCount = winnerCount;
      winnerCount = count;
      winner = candidate;
    } else if (count > runnerCount && candidate != winner) {
      runnerCount = count;
    }
  }

  bool commit = false;
  if (seg.committed) {
    if (winner == seg.committedValue) {
      commit = winnerCount >= kRdsPsCommitThreshold;
    } else {
      commit = winnerCount >= kRdsPsChangeThreshold && winnerCount >= static_cast<uint8_t>(runnerCount + 2U);
    }
  } else {
    commit = winnerCount >= kRdsPsCommitThreshold && winnerCount >= static_cast<uint8_t>(runnerCount + 2U);
  }

  if (commit) {
    seg.committed = true;
    seg.committedValue = winner;
    seg.committedAtMs = nowMs;
  }
}

bool getCommittedPs(char* out, uint32_t nowMs) {
  uint32_t minTs = 0xFFFFFFFFUL;
  uint32_t maxTs = 0;

  for (uint8_t i = 0; i < kRdsPsSegments; ++i) {
    const PsSegmentState& seg = g_rt.ps.seg[i];
    if (!seg.committed) {
      return false;
    }

    minTs = min(minTs, seg.committedAtMs);
    maxTs = max(maxTs, seg.committedAtMs);

    out[i * 2] = static_cast<char>((seg.committedValue >> 8) & 0xFF);
    out[i * 2 + 1] = static_cast<char>(seg.committedValue & 0xFF);
  }

  out[8] = '\0';

  if ((maxTs - minTs) > kRdsPsFreshWindowMs || (nowMs - maxTs) > kRdsPsFreshWindowMs) {
    return false;
  }

  return true;
}

void processPsGroup(const services::radio::RdsGroupSnapshot& snap, uint32_t nowMs) {
  if (snap.groupType != 0 || snap.bleB > 1 || snap.bleD > 1) {
    return;
  }

  // Group 0 PS address is only the lower 2 bits of block B.
  const uint8_t psAddress = static_cast<uint8_t>(snap.blockB & 0x03U);
  if (psAddress >= kRdsPsSegments) {
    return;
  }

  const char c0 = sanitizeRdsChar(static_cast<uint8_t>(snap.blockD >> 8));
  const char c1 = sanitizeRdsChar(static_cast<uint8_t>(snap.blockD & 0xFF));
  addPsSegmentVote(psAddress, c0, c1, nowMs);
}

uint8_t bitCount16(uint16_t value) {
  uint8_t count = 0;
  while (value) {
    count = static_cast<uint8_t>(count + (value & 1U));
    value >>= 1;
  }
  return count;
}

bool commitRtCandidate(const char* source, uint8_t maxLen, uint32_t nowMs) {
  char candidate[65];
  uint8_t len = 0;

  while (len < maxLen && len < (sizeof(candidate) - 1)) {
    const char c = source[len];
    if (c == 0x0D || c == '\0') {
      break;
    }
    candidate[len++] = c;
  }

  while (len > 0 && candidate[len - 1] <= ' ') {
    --len;
  }
  candidate[len] = '\0';

  if (len == 0) {
    return false;
  }
  if (g_rt.rt.committedValid && strcmp(g_rt.rt.committed, candidate) == 0) {
    return false;
  }

  strcpy(g_rt.rt.committed, candidate);
  g_rt.rt.committedValid = true;
  g_rt.rt.committedAtMs = nowMs;
  return true;
}

bool processRtGroup(const services::radio::RdsGroupSnapshot& snap, uint32_t nowMs) {
  if (snap.groupType != 2) {
    return false;
  }
  if (snap.bleB > 1) {
    return false;
  }

  const uint8_t currentAb = snap.textAbFlag;
  if (!g_rt.rt.hasAb) {
    g_rt.rt.hasAb = true;
    g_rt.rt.abFlag = currentAb;
    resetRtAssembly();
  } else if (currentAb != g_rt.rt.abFlag) {
    if ((nowMs - g_rt.rt.lastAbToggleMs) <= kRdsRtAbDebounceWindowMs) {
      ++g_rt.rt.abToggleCount;
    } else {
      g_rt.rt.abToggleCount = 1;
    }

    g_rt.rt.lastAbToggleMs = nowMs;

    if (g_rt.rt.abToggleCount > kRdsRtAbDebounceToggles) {
      return false;
    }

    g_rt.rt.abFlag = currentAb;
    resetRtAssembly();
  } else if ((nowMs - g_rt.rt.lastAbToggleMs) > kRdsRtAbDebounceWindowMs) {
    g_rt.rt.abToggleCount = 0;
  }

  const uint8_t segment = snap.segmentAddress;
  bool changed = false;

  if (!snap.versionB) {
    if (segment >= kRdsRtSegments2A || snap.bleC > 1 || snap.bleD > 1) {
      return false;
    }

    const uint8_t pos = static_cast<uint8_t>(segment * 4U);
    g_rt.rt.buf2A[pos + 0] = sanitizeRtChar(static_cast<uint8_t>(snap.blockC >> 8));
    g_rt.rt.buf2A[pos + 1] = sanitizeRtChar(static_cast<uint8_t>(snap.blockC & 0xFF));
    g_rt.rt.buf2A[pos + 2] = sanitizeRtChar(static_cast<uint8_t>(snap.blockD >> 8));
    g_rt.rt.buf2A[pos + 3] = sanitizeRtChar(static_cast<uint8_t>(snap.blockD & 0xFF));
    g_rt.rt.mask2A |= static_cast<uint16_t>(1U << segment);

    const bool hasEnd = memchr(g_rt.rt.buf2A, 0x0D, sizeof(g_rt.rt.buf2A)) != nullptr;
    const uint8_t count = bitCount16(g_rt.rt.mask2A);
    if (hasEnd || count == kRdsRtSegments2A || (!g_rt.rt.committedValid && count >= kRdsRtPartialCommitSegments)) {
      changed |= commitRtCandidate(g_rt.rt.buf2A, sizeof(g_rt.rt.buf2A), nowMs);
    }
  } else {
    if (segment >= kRdsRtSegments2B || snap.bleD > 1) {
      return false;
    }

    const uint8_t pos = static_cast<uint8_t>(segment * 2U);
    g_rt.rt.buf2B[pos + 0] = sanitizeRtChar(static_cast<uint8_t>(snap.blockD >> 8));
    g_rt.rt.buf2B[pos + 1] = sanitizeRtChar(static_cast<uint8_t>(snap.blockD & 0xFF));
    g_rt.rt.mask2B |= static_cast<uint16_t>(1U << segment);

    const bool hasEnd = memchr(g_rt.rt.buf2B, 0x0D, sizeof(g_rt.rt.buf2B)) != nullptr;
    const uint8_t count = bitCount16(g_rt.rt.mask2B);
    if (hasEnd || count == kRdsRtSegments2B || (!g_rt.rt.committedValid && count >= kRdsRtPartialCommitSegments)) {
      changed |= commitRtCandidate(g_rt.rt.buf2B, sizeof(g_rt.rt.buf2B), nowMs);
    }
  }

  return changed;
}

bool decodeCtUtc(const services::radio::RdsGroupSnapshot& snap, uint16_t& outMjd, uint8_t& outHour, uint8_t& outMinute) {
  if (snap.groupType != 4 || snap.versionB || !isGoodBle(snap.bleB) || !isGoodBle(snap.bleC) || !isGoodBle(snap.bleD)) {
    return false;
  }

  si47x_rds_date_time dt{};
  dt.raw[4] = static_cast<uint8_t>(snap.blockB & 0xFF);
  dt.raw[5] = static_cast<uint8_t>(snap.blockB >> 8);
  dt.raw[2] = static_cast<uint8_t>(snap.blockC & 0xFF);
  dt.raw[3] = static_cast<uint8_t>(snap.blockC >> 8);
  dt.raw[0] = static_cast<uint8_t>(snap.blockD & 0xFF);
  dt.raw[1] = static_cast<uint8_t>(snap.blockD >> 8);

  const uint32_t mjd = dt.refined.mjd;
  const uint32_t hour = dt.refined.hour;
  const uint32_t minute = dt.refined.minute;
  const uint32_t offset = dt.refined.offset;

  if (mjd == 0 || hour > 23 || minute > 59 || offset > 31) {
    return false;
  }

  outMjd = static_cast<uint16_t>(mjd);
  outHour = static_cast<uint8_t>(hour);
  outMinute = static_cast<uint8_t>(minute);
  return true;
}

void commitCt(app::AppState& state, uint16_t mjd, uint8_t hour, uint8_t minute, uint32_t nowMs) {
  state.rds.hasCt = 1;
  state.rds.ctMjd = mjd;
  state.rds.ctHour = hour;
  state.rds.ctMinute = minute;
  state.rds.lastCtCommitMs = nowMs;

  if (modeAllowsCtApply(state.global.rdsMode)) {
    services::clock::setRdsUtcBase(state, mjd, hour, minute);
  }
}

void processCt(app::AppState& state, const services::radio::RdsGroupSnapshot& snap, uint32_t nowMs) {
  uint16_t mjd = 0;
  uint8_t hour = 0;
  uint8_t minute = 0;
  if (!decodeCtUtc(snap, mjd, hour, minute)) {
    return;
  }

  if (!g_rt.ctCandidateValid ||
      g_rt.ctCandidateMjd != mjd ||
      g_rt.ctCandidateHour != hour ||
      g_rt.ctCandidateMinute != minute) {
    g_rt.ctCandidateValid = true;
    g_rt.ctCandidateMjd = mjd;
    g_rt.ctCandidateHour = hour;
    g_rt.ctCandidateMinute = minute;
    g_rt.ctCandidateRepeats = 1;
  } else if (g_rt.ctCandidateRepeats < 255) {
    ++g_rt.ctCandidateRepeats;
  }

  uint8_t threshold = kCtRepeatVotes;
  if (state.rds.hasCt) {
    const uint32_t oldStamp = ctStampMinutes(state.rds.ctMjd, state.rds.ctHour, state.rds.ctMinute);
    const uint32_t newStamp = ctStampMinutes(mjd, hour, minute);
    const uint32_t delta = (newStamp > oldStamp) ? (newStamp - oldStamp) : (oldStamp - newStamp);
    if (delta <= 2) {
      threshold = 1;
    } else if (delta > 180) {
      threshold = 3;
    }
  }

  if (g_rt.ctCandidateRepeats >= threshold) {
    commitCt(state, mjd, hour, minute, nowMs);
  }
}

void syncQualityToState(app::AppState& state) {
  state.rds.quality = g_rt.quality.score;
  state.rds.lastGoodGroupMs = g_rt.quality.lastGoodGroupMs;
}

void applyStalePolicy(app::AppState& state, uint32_t nowMs) {
  if ((nowMs - g_rt.quality.lastGoodGroupMs) <= kRdsHoldMs) {
    // signal-scale hold period
  } else if ((nowMs - g_rt.quality.lastGoodGroupMs) >= kRdsStaleClearMs) {
    if (modeAllowsPs(state.global.rdsMode) && state.rds.lastPsCommitMs &&
        (nowMs - state.rds.lastPsCommitMs) >= kRdsStaleClearMs) {
      clearPs(state.rds);
      state.rds.lastPsCommitMs = 0;
    }

    if (modeAllowsRt(state.global.rdsMode) && state.rds.lastRtCommitMs &&
        (nowMs - state.rds.lastRtCommitMs) >= kRdsStaleClearMs) {
      clearRt(state.rds);
      state.rds.lastRtCommitMs = 0;
    }

    if (modeAllowsPi(state.global.rdsMode) && state.rds.lastPiCommitMs &&
        (nowMs - state.rds.lastPiCommitMs) >= kRdsStaleClearMs) {
      clearPi(state.rds);
      state.rds.lastPiCommitMs = 0;
    }
  }

  // Keep CT stale handling as a local safety extension (signal-scale path does not persist CT this way).
  if (state.rds.hasCt && state.rds.lastCtCommitMs != 0 && (nowMs - state.rds.lastCtCommitMs) > kCtStaleMs) {
    clearCt(state);
  }

  syncQualityToState(state);
}

bool contextChanged(const app::AppState& state, bool seekBusy) {
  if (!g_rt.initialized) {
    return true;
  }

  if (seekBusy && g_rt.lastSeekBusy) {
    return g_rt.lastModulation != state.radio.modulation ||
           g_rt.lastMode != state.global.rdsMode ||
           g_rt.lastSeekBusy != seekBusy;
  }

  return g_rt.lastBandIndex != state.radio.bandIndex ||
         g_rt.lastFrequencyKhz != state.radio.frequencyKhz ||
         g_rt.lastModulation != state.radio.modulation ||
         g_rt.lastMode != state.global.rdsMode ||
         g_rt.lastSeekBusy != seekBusy;
}

void updateContextSnapshot(const app::AppState& state, bool seekBusy) {
  g_rt.initialized = true;
  g_rt.lastBandIndex = state.radio.bandIndex;
  g_rt.lastFrequencyKhz = state.radio.frequencyKhz;
  g_rt.lastModulation = state.radio.modulation;
  g_rt.lastMode = state.global.rdsMode;
  g_rt.lastSeekBusy = seekBusy;
}

void clearCommittedRds(app::AppState& state) {
  app::resetRdsState(state.rds);
}

bool hasAnyVisibleOrClockRdsState(const app::AppState& state) {
  return state.rds.hasPs || state.rds.hasRt || state.rds.hasPi || state.rds.hasPty || state.rds.hasCt ||
         state.rds.quality > 0 || state.clock.hasRdsBase;
}

}  // namespace

void reset(app::AppState& state) {
  clearCommittedRds(state);
  resetDecoderRuntime();
  services::clock::clearRdsUtcBase(state);
  g_rt.lastTickMs = 0;
}

void tick(app::AppState& state) {
  const uint32_t nowMs = millis();
  const bool seekBusy = services::seekscan::busy() || state.seekScan.active;
  const bool active = services::radio::ready() && isFmActive(state) && modeEnabled(state.global.rdsMode) && !seekBusy;

  if (contextChanged(state, seekBusy)) {
    if (g_rt.initialized &&
        (g_rt.lastFrequencyKhz != state.radio.frequencyKhz || g_rt.lastModulation != state.radio.modulation ||
         g_rt.lastBandIndex != state.radio.bandIndex || g_rt.lastMode == app::RdsMode::Off || seekBusy ||
         state.global.rdsMode == app::RdsMode::Off || !isFmActive(state))) {
      reset(state);
      if (services::radio::ready() && isFmActive(state) && modeEnabled(state.global.rdsMode)) {
        services::radio::resetRdsDecoder();
      }
    } else {
      applyModeVisibilityMask(state);
    }
    updateContextSnapshot(state, seekBusy);
  }

  if (!active) {
    if (!modeEnabled(state.global.rdsMode) || !isFmActive(state)) {
      if (hasAnyVisibleOrClockRdsState(state)) {
        reset(state);
      }
    } else {
      applyStalePolicy(state, nowMs);
      applyModeVisibilityMask(state);
    }
    return;
  }

  if (nowMs - g_rt.lastTickMs < kRdsTickMs) {
    applyStalePolicy(state, nowMs);
    applyModeVisibilityMask(state);
    return;
  }
  g_rt.lastTickMs = nowMs;

  uint8_t rssiSample = 0;
  uint8_t snrSample = 0;
  (void)services::radio::readSignalQuality(&rssiSample, &snrSample);

  bool validGroupSeen = false;
  uint16_t votedPi = 0x0000;
  bool piLocked = false;

  for (uint8_t i = 0; i < kMaxGroupsPerTick; ++i) {
    services::radio::RdsGroupSnapshot snap{};
    if (!services::radio::pollRdsGroup(&snap)) {
      break;
    }

    validGroupSeen = true;
    state.rds.lastGroupMs = nowMs;

    const uint8_t groupQuality = computeGroupQuality(snrSample, snap.bleA, snap.bleB, snap.bleC, snap.bleD);
    const uint8_t rollingQuality = updateRdsQuality(true, groupQuality, nowMs);
    syncQualityToState(state);

    const uint16_t piSample = (snap.bleA <= 1) ? snap.blockA : 0x0000;
    piLocked |= updatePiVote(piSample, &votedPi);

    if (snap.bleB <= 1) {
      commitPtyImmediate(state, snap.pty, nowMs);
    }

    // Keep CT updates immediate (signal-scale behavior for low-rate fields), but CT application remains mode-gated.
    processCt(state, snap, nowMs);

    if (groupQuality >= kRdsQualityMinBuffer) {
      processPsGroup(snap, nowMs);
      (void)processRtGroup(snap, nowMs);
    }

    if ((nowMs - g_rt.quality.lastUiCommitMs) < kRdsUiCommitMinMs) {
      continue;
    }
    if (rollingQuality < kRdsQualityMinCommit) {
      continue;
    }

    bool committed = false;
    char psText[9];
    const bool psReady = getCommittedPs(psText, nowMs);

    if (modeAllowsPs(state.global.rdsMode) && psReady) {
      committed |= commitPsToState(state, psText, nowMs);
    }

    if (modeAllowsRt(state.global.rdsMode) && g_rt.rt.committedValid) {
      committed |= commitRtToState(state, g_rt.rt.committed, nowMs);
    }

    if (modeAllowsPi(state.global.rdsMode) && piLocked) {
      committed |= commitPiToState(state, votedPi, nowMs);
    }

    if (committed) {
      g_rt.quality.lastUiCommitMs = nowMs;
    }
  }

  if (!validGroupSeen) {
    (void)updateRdsQuality(false, 0, nowMs);
    syncQualityToState(state);
  }

  applyStalePolicy(state, nowMs);
  applyModeVisibilityMask(state);
}

}  // namespace services::rds
