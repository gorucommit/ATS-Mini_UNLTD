#pragma once

#include <stdint.h>

#include "bandplan.h"

namespace app {

// --- User settings (used by scanner; GlobalSettings holds runtime choice) ---

enum class ScanSensitivity : uint8_t {
  Low = 0,
  High = 1,
};

enum class ScanSpeed : uint8_t {
  Fast = 0,
  Thorough = 1,
};

struct EtmSensitivity {
  uint8_t rssiMin;
  uint8_t snrMin;
};

// Per-band scan/seek thresholds. Index 0 = Low, 1 = High. High aligns with original firmware seek.
inline constexpr EtmSensitivity kEtmSensitivityFm[] = {
    {20, 3},  // Low
    {5, 2},   // High (default)
};
inline constexpr EtmSensitivity kEtmSensitivityAm[] = {
    {25, 5},   // Low
    {10, 3},   // High (default)
};

// Fixed permissive threshold for FM Thorough coarse pass only (not user-configurable).
inline constexpr EtmSensitivity kEtmCoarseThresholdFm = {3, 1};

// --- Scan pass constants ---

constexpr uint8_t kScanPassSeek = 0;    // found by seek, not scan-confirmed
constexpr uint8_t kScanPassCoarse = 1;  // coarse pass only
constexpr uint8_t kScanPassFine = 2;    // fine-confirmed, highest confidence

// --- Capacity constants ---

constexpr uint8_t kEtmMaxStations = 120;
constexpr uint8_t kEtmMaxCandidates = 128;
constexpr uint8_t kEtmMaxFineWindows = 64;

// --- Station memory (persistent, per band-context) ---

struct EtmStation {
  uint16_t frequencyKhz;
  uint8_t rssi;
  uint8_t snr;
  uint8_t bandIndex;
  Modulation modulation;
  uint8_t scanPass;  // 0=seek-found, 1=coarse, 2=fine-confirmed
  uint32_t lastSeenMs;
};

struct EtmMemory {
  EtmStation stations[kEtmMaxStations];
  uint8_t count;
  int16_t cursor;     // -1 = none selected
  uint8_t bandIndex;  // memory is per band-context
  Modulation modulation;
};

// --- Segment (scan range with steps) ---

struct EtmSegment {
  uint16_t minKhz;
  uint16_t maxKhz;
  uint16_t coarseStepKhz;
  uint16_t fineStepKhz;  // 0 = no fine pass for this segment
};

// --- Band profiles (coarse/fine step, settle, merge distance) ---

struct EtmBandProfile {
  uint16_t coarseStepKhz;
  uint16_t fineStepKhz;
  uint16_t fineWindowKhz;   // ±window around each coarse candidate
  uint16_t coarseSettleMs;   // settle time for coarse pass
  uint16_t verifySettleMs;   // settle for FM verification pass (0 = no verify)
  uint16_t mergeDistanceKhz;
};

// All values in kHz for AM bands (MW/LW/SW). For FM, band limits are in 10 kHz units
// (8750 = 87.5 MHz), so FM profile steps are also in 10 kHz units: 10 = 100 kHz.
// FM: 30 ms coarse (permissive), 100 ms verify for Thorough; AM-family: no verify.
inline constexpr EtmBandProfile kEtmProfileFm = {10, 0, 0, 30, 100, 9};   // coarse 30ms, verify 100ms, 90 kHz merge
inline constexpr EtmBandProfile kEtmProfileMw9 = {9, 0, 0, 90, 0, 8};     // 9 kHz region
inline constexpr EtmBandProfile kEtmProfileMw10 = {10, 0, 0, 90, 0, 9};  // 10 kHz region
inline constexpr EtmBandProfile kEtmProfileLw = {9, 0, 0, 90, 0, 8};
inline constexpr EtmBandProfile kEtmProfileSw = {5, 0, 0, 90, 0, 4};

// --- Working candidate (during scan only) ---

struct EtmCandidate {
  uint16_t frequencyKhz;
  uint8_t rssi;
  uint8_t snr;
  int8_t freqOff;       // carrier offset (~1 kHz units); 0 if not verified (AM or unset)
  bool pilotPresent;    // stereo pilot (FM); false if not verified
  uint8_t multipath;    // MULT from RSQ; 0 if not verified
  uint8_t scanPass;     // 1=coarse, 2=fine-confirmed
  uint8_t segmentIndex;
};

// --- Fine window (for Thorough mode second pass) ---

struct EtmFineWindow {
  uint16_t centerKhz;
  uint8_t bestRssi;
  uint16_t scanMinKhz;  // centerKhz - fineWindowKhz (clamped to segment)
  uint16_t scanMaxKhz;  // centerKhz + fineWindowKhz (clamped to segment)
  uint8_t segmentIndex;
};

// --- Scanner state machine ---

enum class EtmPhase : uint8_t {
  Idle = 0,
  CoarseScan = 1,
  FineScan = 2,
  Finalize = 3,
  Cancelling = 4,
  VerifyScan = 5,  // FM Thorough: re-tune to each candidate, read full RSQ
};

}  // namespace app
