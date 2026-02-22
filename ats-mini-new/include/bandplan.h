#pragma once

#include <stddef.h>
#include <stdint.h>

namespace app {

enum class Modulation : uint8_t { FM = 0, LSB = 1, USB = 2, AM = 3 };

enum class FmRegion : uint8_t {
  World = 0,
  US = 1,
  Japan = 2,
  Oirt = 3,
};

enum class BandId : uint8_t {
  All = 0,
  FM = 1,
  LW = 2,
  MW = 3,
  BC120m = 4,
  BC90m = 5,
  BC75m = 6,
  BC60m = 7,
  BC49m = 8,
  BC41m = 9,
  BC31m = 10,
  BC25m = 11,
  BC22m = 12,
  BC19m = 13,
  BC16m = 14,
  BC15m = 15,
  BC13m = 16,
  BC11m = 17,
  HAM160m = 18,
  HAM80m = 19,
  HAM60m = 20,
  HAM40m = 21,
  HAM30m = 22,
  HAM20m = 23,
  HAM17m = 24,
  HAM15m = 25,
  HAM12m = 26,
  HAM10m = 27,
  CB = 28,
};

struct BandDef {
  BandId id;
  const char* name;
  uint16_t minKhz;
  uint16_t maxKhz;
  uint16_t defaultKhz;
  Modulation defaultMode;
  bool allowSsb;
};

struct SubBandDef {
  const char* name;
  uint16_t minKhz;
  uint16_t maxKhz;
};

struct FmRegionProfile {
  uint16_t fmMinKhz;
  uint16_t fmMaxKhz;
  uint16_t fmDefaultKhz;
  uint8_t fmDeemphasisUs;
  uint8_t mwDefaultStepKhz;
};

inline constexpr FmRegionProfile fmRegionProfile(FmRegion region) {
  switch (region) {
    case FmRegion::US:
      return {8800, 10800, 9040, 75, 10};
    case FmRegion::Japan:
      return {7600, 9000, 8200, 50, 9};
    case FmRegion::Oirt:
      return {6580, 7400, 7000, 50, 9};
    case FmRegion::World:
    default:
      return {8750, 10800, 9040, 50, 9};
  }
}

inline constexpr uint8_t defaultMwStepKhzForRegion(FmRegion region) {
  return fmRegionProfile(region).mwDefaultStepKhz;
}

inline constexpr uint16_t mwChannelOriginKhzForRegion(FmRegion region) {
  return defaultMwStepKhzForRegion(region) == 10 ? 530 : 531;
}

inline constexpr uint8_t fmDeemphasisUsForRegion(FmRegion region) {
  return fmRegionProfile(region).fmDeemphasisUs;
}

inline constexpr uint16_t bandMinKhzFor(const BandDef& band, FmRegion region) {
  return band.id == BandId::FM ? fmRegionProfile(region).fmMinKhz : band.minKhz;
}

inline constexpr uint16_t bandMaxKhzFor(const BandDef& band, FmRegion region) {
  return band.id == BandId::FM ? fmRegionProfile(region).fmMaxKhz : band.maxKhz;
}

inline constexpr uint16_t bandDefaultKhzFor(const BandDef& band, FmRegion region) {
  return band.id == BandId::FM ? fmRegionProfile(region).fmDefaultKhz : band.defaultKhz;
}

inline constexpr BandDef kBandPlan[] = {
    // Amateur - shown above VHF in BAND popup.
    {BandId::HAM160m, "160m", 1700, 2100, 1900, Modulation::LSB, true},
    {BandId::HAM80m, "80m", 3400, 4000, 3700, Modulation::LSB, true},
    {BandId::HAM60m, "60m", 5100, 5600, 5350, Modulation::LSB, true},
    {BandId::HAM40m, "40m", 6800, 7500, 7150, Modulation::LSB, true},
    {BandId::HAM30m, "30m", 10000, 10300, 10125, Modulation::LSB, true},
    {BandId::HAM20m, "20m", 13800, 14500, 14200, Modulation::USB, true},
    {BandId::HAM17m, "17m", 17900, 18300, 18115, Modulation::USB, true},
    {BandId::HAM15m, "15m", 20800, 21700, 21225, Modulation::USB, true},
    {BandId::HAM12m, "12m", 24700, 25100, 24940, Modulation::USB, true},
    {BandId::HAM10m, "10m", 27500, 30000, 28500, Modulation::USB, true},
    {BandId::All, "ALL", 150, 30000, 9400, Modulation::AM, true},
    {BandId::FM, "VHF", 8750, 10800, 9040, Modulation::FM, false},
    // MW + broadcast shown below VHF in BAND popup.
    {BandId::LW, "LW", 150, 300, 279, Modulation::AM, false},
    {BandId::MW, "MW", 300, 1800, 1000, Modulation::AM, false},
    {BandId::BC120m, "120m", 2200, 2600, 2400, Modulation::AM, false},
    {BandId::BC90m, "90m", 3000, 3600, 3300, Modulation::AM, false},
    {BandId::BC75m, "75m", 3700, 4200, 3950, Modulation::AM, false},
    {BandId::BC60m, "60m", 4500, 5300, 4900, Modulation::AM, false},
    {BandId::BC49m, "49m", 5600, 6700, 6000, Modulation::AM, false},
    {BandId::BC41m, "41m", 6800, 7800, 7300, Modulation::AM, false},
    {BandId::BC31m, "31m", 9000, 10100, 9600, Modulation::AM, false},
    {BandId::BC25m, "25m", 11300, 12500, 11850, Modulation::AM, false},
    {BandId::BC22m, "22m", 13300, 14200, 13650, Modulation::AM, false},
    {BandId::BC19m, "19m", 14800, 16200, 15450, Modulation::AM, false},
    {BandId::BC16m, "16m", 17100, 18300, 17650, Modulation::AM, false},
    {BandId::BC15m, "15m", 18600, 19400, 18950, Modulation::AM, false},
    {BandId::BC13m, "13m", 21200, 22200, 21650, Modulation::AM, false},
    {BandId::BC11m, "11m", 25200, 26400, 25850, Modulation::AM, false},
    {BandId::CB, "CB", 25000, 28000, 27135, Modulation::AM, false},
};

// Exact red-line broadcast segments from ats-mini-signalscale (kHz).
inline constexpr SubBandDef kBroadcastRedLineAll[] = {
    {"MW", 520, 1602},
    {"120m", 2300, 2500},
    {"90m", 3200, 3400},
    {"75m", 3900, 4000},
    {"60m", 4750, 5060},
    {"49m", 5800, 6325},
    {"41m", 7200, 7450},
    {"31m", 9400, 9900},
    {"25m", 11600, 12100},
    {"22m", 13570, 13870},
    {"19m", 15100, 15800},
    {"16m", 17500, 17900},
    {"15m", 18900, 19020},
    {"13m", 21500, 21850},
    {"11m", 25600, 26100},
};

inline constexpr SubBandDef kBroadcastRedLineSw[] = {
    {"120m", 2300, 2500},
    {"90m", 3200, 3400},
    {"75m", 3900, 4000},
    {"60m", 4750, 5060},
    {"49m", 5800, 6325},
    {"41m", 7200, 7450},
    {"31m", 9400, 9900},
    {"25m", 11600, 12100},
    {"22m", 13570, 13870},
    {"19m", 15100, 15800},
    {"16m", 17500, 17900},
    {"15m", 18900, 19020},
    {"13m", 21500, 21850},
    {"11m", 25600, 26100},
};

inline constexpr SubBandDef kAmateurRedLineSw[] = {
    {"160m", 1810, 2000},
    {"80m", 3500, 3800},
    {"60m", 5250, 5450},
    {"40m", 7000, 7200},
    {"30m", 10100, 10150},
    {"20m", 14000, 14530},
    {"17m", 18070, 18170},
    {"15m", 21000, 21500},
    {"10m", 28000, 29700},
};

inline constexpr size_t kBandCount = sizeof(kBandPlan) / sizeof(kBandPlan[0]);
inline constexpr size_t kBroadcastRedLineAllCount = sizeof(kBroadcastRedLineAll) / sizeof(kBroadcastRedLineAll[0]);
inline constexpr size_t kBroadcastRedLineSwCount = sizeof(kBroadcastRedLineSw) / sizeof(kBroadcastRedLineSw[0]);
inline constexpr size_t kAmateurRedLineSwCount = sizeof(kAmateurRedLineSw) / sizeof(kAmateurRedLineSw[0]);

inline constexpr bool isFmBand(uint8_t bandIndex) {
  return bandIndex < kBandCount && kBandPlan[bandIndex].id == BandId::FM;
}

inline constexpr bool isWithin(uint16_t frequencyKhz, const SubBandDef& subBand) {
  return frequencyKhz >= subBand.minKhz && frequencyKhz <= subBand.maxKhz;
}

}  // namespace app
