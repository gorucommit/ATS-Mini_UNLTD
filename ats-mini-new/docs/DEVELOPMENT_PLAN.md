# ATS-MINI-NEW Development Plan
## Feature Parity with SignalScale Firmware

**Version:** 1.0  
**Date:** 2026-02-21  
**Goal:** Bring ats-mini-new to feature parity with signal-scale (excluding web control)

---

## Executive Summary

ats-mini-new already has a solid service-oriented architecture with centralized state management. This document outlines the incremental additions needed to match signal-scale's features while maintaining the clean architectural patterns.

### Current State Assessment

| Category | ats-mini-new | signal-scale | Gap |
|----------|-------------|--------------|-----|
| **Architecture** | Service-oriented, centralized AppState | Monolithic, scattered globals | ✅ Better |
| **State Management** | Single AppState struct | Scattered globals | ✅ Better |
| **Band Plan** | 28 bands (HAM + Broadcast) | 32 bands | ⚠️ Minor |
| **Memory Slots** | 20 | 99 | ❌ Missing |
| **Encoder Acceleration** | None | 5-speed (1x-16x) | ❌ Missing |
| **EiBi Schedule** | None | Full database | ❌ Missing |
| **Themes** | Enum defined, not implemented | Multiple themes | ❌ Missing |
| **UI Layouts** | Enum defined, not implemented | 3 layouts | ❌ Missing |
| **RDS Modes** | Basic only | 8 combinations | ❌ Missing |
| **Serial Remote** | None | Full protocol | ❌ Missing |
| **BLE Remote** | None | Nordic UART | ❌ Missing |
| **FM Region** | Enum defined, partial | EU/US/OIRT/Japan | ⚠️ Minor |
| **UTC Time Zones** | Basic offset | 40 time zones | ⚠️ Minor |
| **WiFi** | Enum defined, not implemented | Full AP/Station | 🔜 Future |

---

## Phase 1: Quick Wins (Estimated: 2-3 days)

### 1.1 Encoder Acceleration

**Current State:**
- `input_service.cpp` returns raw encoder delta (±1 per detent)
- No speed-based acceleration

**SignalScale Implementation:**
```cpp
// Speed thresholds: 350ms, 60ms, 45ms, 35ms, 25ms
// Acceleration factors: 1x, 2x, 4x, 8x, 16x
int16_t accelerateEncoder(uint8_t dir) {
  uint32_t now = millis();
  uint32_t elapsed = now - g_lastEncoderTime;
  
  // Reset on direction change or timeout
  if (dir != g_lastDir || elapsed > 350) {
    g_accelerationIndex = 0;
  }
  
  // Smoothing filter
  g_speedFilter = (g_speedFilter * 3 + elapsed) / 4;
  
  // Lookup acceleration factor
  if (g_speedFilter < 25) g_accelerationIndex = 4;  // 16x
  else if (g_speedFilter < 35) g_accelerationIndex = 3;  // 8x
  else if (g_speedFilter < 45) g_accelerationIndex = 2;  // 4x
  else if (g_speedFilter < 60) g_accelerationIndex = 1;  // 2x
  else g_accelerationIndex = 0;  // 1x
  
  g_lastEncoderTime = now;
  g_lastDir = dir;
  
  return kAccelerationFactors[g_accelerationIndex];
}
```

**Implementation Plan:**
1. Add acceleration state to `input_service.cpp` namespace
2. Modify `consumeEncoderDelta()` to return accelerated values
3. Add acceleration configuration constants to `app_config.h`
4. Tune thresholds for the specific encoder hardware

**Files to Modify:**
- `src/services/input_service.cpp`
- `include/app_config.h`

---

### 1.2 Extended Memory Slots

**Current State:**
- `kMemoryCount = 20` in `app_state.h`
- Memory UI limited to showing few slots

**Implementation Plan:**
1. Increase `kMemoryCount` to 99
2. Update QuickEdit popup to show paginated memory list
3. Add memory naming support (already have 17-char capacity)
4. Consider memory backup/restore via serial

**Files to Modify:**
- `include/app_state.h` - increase count
- `include/quick_edit_model.h` - pagination logic
- `src/services/ui_service.cpp` - memory list rendering

---

### 1.3 FM Region Full Implementation

**Current State:**
- `FmRegion` enum defined with World/US/Japan/Oirt
- `radio_service.cpp` only uses US vs World de-emphasis

**SignalScale Implementation:**
- US: 75µs de-emphasis, 88-108 MHz
- EU/World: 50µs de-emphasis, 87.5-108 MHz  
- Japan: 50µs de-emphasis, 76-90 MHz (wideband)
- OIRT: 50µs de-emphasis, 65.8-74 MHz (Eastern Europe)

**Implementation Plan:**
1. Add FM band limits per region to `bandplan.h`
2. Update `radio_service.cpp` to apply regional settings
3. Add region selection to Settings screen
4. Update band limits dynamically when region changes

**Files to Modify:**
- `include/bandplan.h` - regional band definitions
- `src/services/radio_service.cpp` - apply regional settings
- `src/services/settings_service.cpp` - persist region

---

## Phase 2: Core Features (Estimated: 5-7 days)

### 2.1 Theme System

**Current State:**
- `Theme` enum defined (Classic, Dark, Light)
- UI uses hardcoded colors (`kColorBg`, `kColorText`, etc.)

**SignalScale Implementation:**
```cpp
struct ColorTheme {
  const char* name;
  uint16_t bg;
  uint16_t text;
  uint16_t text_muted;
  uint16_t text_warn;
  uint16_t smeter_bg;
  uint16_t smeter_fg;
  uint16_t menu_bg;
  uint16_t menu_focus;
  uint16_t freq_text;
  uint16_t scan_graph;
};
```

**Implementation Plan:**
1. Create `include/themes.h` with `ColorTheme` struct
2. Create `src/services/theme_service.cpp` for theme management
3. Define 3-5 built-in themes (Classic, Dark, Light, Amber, Green)
4. Update `ui_service.cpp` to use current theme colors
5. Add theme selection to Settings screen
6. Persist theme selection via `settings_service.cpp`

**New Files:**
- `include/themes.h`
- `src/services/theme_service.cpp`

**Files to Modify:**
- `include/app_state.h` - ensure Theme enum matches
- `src/services/ui_service.cpp` - use theme colors
- `src/services/settings_service.cpp` - persist theme

---

### 2.2 Extended RDS Modes

**Current State:**
- `RdsMode` enum defined (Off, Basic, Full)
- No actual RDS implementation

**SignalScale RDS Features:**
- PS (Program Service) - station name
- CT (Clock Time) - sync from RDS
- PI (Program Identification) - station ID
- RT (Radio Text) - scrolling text
- PTY (Program Type) - genre
- RBDS mode for North America

**Implementation Plan:**
1. Add RDS state to `AppState`:
   ```cpp
   struct RdsState {
     char ps[9];           // Program Service name
     char rt[65];          // Radio Text
     uint16_t pi;          // Program Identification
     uint8_t pty;          // Program Type
     bool hasCt;           // Clock Time valid
     uint8_t hour, minute; // Decoded CT
   };
   ```
2. Create `src/services/rds_service.cpp`
3. Integrate with SI4735 RDS API
4. Add RDS display to UI (PS name, RT scroll)
5. Add RDS mode selection to Settings
6. Implement CT time sync

**New Files:**
- `include/rds_types.h`
- `src/services/rds_service.cpp`

**Files to Modify:**
- `include/app_state.h` - add RdsState
- `src/services/ui_service.cpp` - RDS display
- `src/services/radio_service.cpp` - RDS callbacks

---

### 2.3 UTC Time Zone Support

**Current State:**
- `utcOffsetMinutes` in GlobalSettings (-720 to +840)
- Simple clock display without proper time zone names

**SignalScale Implementation:**
- 40 time zone offsets with 15-minute granularity
- Named time zones (UTC, GMT, EST, PST, etc.)
- DST support consideration

**Implementation Plan:**
1. Add time zone data table:
   ```cpp
   struct TimeZoneDef {
     const char* name;      // "UTC-8", "PST", etc.
     int16_t offsetMinutes;
     bool hasDst;
   };
   ```
2. Add time zone index to GlobalSettings
3. Create `src/services/clock_service.cpp`
4. Update UI to show time zone name
5. Consider NTP sync for WiFi-enabled builds

**New Files:**
- `include/timezones.h`
- `src/services/clock_service.cpp`

**Files to Modify:**
- `include/app_state.h` - add timeZoneIndex
- `src/services/ui_service.cpp` - clock display

---

## Phase 3: Advanced Features (Estimated: 7-10 days)

### 3.1 EiBi Broadcast Schedule

**Current State:**
- Band plan includes broadcast bands
- No station database or schedule

**SignalScale Implementation:**
- Large `EIBI.cpp` with broadcast schedule database
- Time-based station identification
- Schedule-aware seek (find next broadcast)

**Implementation Plan:**
1. Create EiBi data structures:
   ```cpp
   struct EibiStation {
     uint16_t frequencyKhz;
     uint8_t startHour;
     uint8_t endHour;
     const char* stationName;
     uint8_t days;        // Bitmask for days of week
   };
   ```
2. Create `src/services/eibi_service.cpp`
3. Generate or source schedule data (consider licensing)
4. Add station name display when tuned
5. Add schedule-aware navigation
6. Consider compressed storage for large database

**New Files:**
- `include/eibi_types.h`
- `src/services/eibi_service.cpp`
- `data/eibi_schedule.h` (or external file)

**Files to Modify:**
- `include/app_state.h` - add EibiState
- `src/services/ui_service.cpp` - station name display
- `src/services/seek_scan_service.cpp` - schedule navigation

---

### 3.2 Serial Remote Control

**Current State:**
- No serial command processing
- Only debug output

**SignalScale Implementation:**
```cpp
// Single-character commands:
// 'u'/'d' - Tune up/down
// 'U'/'D' - Seek up/down
// 'm'/'M' - Mute toggle
// 'v'/'V' - Volume down/up
// 'b'/'B' - Band down/up
// 's'     - Status output
// 'S'     - Enable status logging
// ' '     - Button click
```

**Implementation Plan:**
1. Create `src/services/remote_service.cpp`
2. Add command parser and dispatcher
3. Add status output format (JSON or compact)
4. Add to main loop tick
5. Document protocol in README

**New Files:**
- `include/remote_types.h`
- `src/services/remote_service.cpp`

**Files to Modify:**
- `src/main.cpp` - call remote tick
- `include/app_services.h` - add service declaration

---

### 3.3 BLE Remote Control

**Current State:**
- `BleMode` enum defined (Off, On)
- No BLE implementation

**SignalScale Implementation:**
- Nordic UART Service (NUS) compatible
- Same command protocol as serial

**Implementation Plan:**
1. Add BLE dependency to `platformio.ini`
2. Create `src/services/ble_service.cpp`
3. Implement NUS service
4. Bridge to remote_service commands
5. Add BLE status to UI
6. Handle BLE connection events

**Dependencies:**
- `NimBLE` or `NordicUART` library

**New Files:**
- `src/services/ble_service.cpp`

**Files to Modify:**
- `platformio.ini` - add BLE library
- `src/main.cpp` - BLE initialization and tick
- `src/services/ui_service.cpp` - BLE status icon

---

## Phase 4: UI Enhancements (Estimated: 3-5 days)

### 4.1 Multiple UI Layouts

**Current State:**
- `UiLayout` enum defined (Standard, Compact, Extended)
- Only one layout implemented

**SignalScale Layouts:**
- Default: Frequency-centric
- S-Meter: Signal strength focus
- Signal Scale: Waterfall-style scan display

**Implementation Plan:**
1. Add layout mode to GlobalSettings (already exists)
2. Create layout-specific render functions
3. Implement S-Meter layout with large signal display
4. Implement Extended layout with scan preview
5. Add layout selection to Settings

**Files to Modify:**
- `src/services/ui_service.cpp` - multiple layouts

---

### 4.2 Push-and-Rotate Digit Selection

**Current State:**
- No digit-based frequency input
- Frequency change by step only

**SignalScale Implementation:**
- Hold button + rotate to select digit
- Selected digit blinks
- Rotate changes selected digit value

**Implementation Plan:**
1. Add digit selection state to UiState
2. Modify encoder handling when button held
3. Add visual feedback (blinking digit)
4. Handle digit overflow/underflow
5. Apply new frequency on button release

**Files to Modify:**
- `include/app_state.h` - add digit selection state
- `src/main.cpp` - handle button+rotate
- `src/services/ui_service.cpp` - digit highlighting

---

## Phase 5: Quality of Life (Estimated: 2-3 days)

### 5.1 Dial Pad Layer

**Current State:**
- `UiLayer::DialPad` defined but not implemented
- Long press in Tune mode should enter dial pad

**Implementation Plan:**
1. Design dial pad layout (0-9, decimal, enter, cancel)
2. Add dial pad rendering to UI service
3. Handle button/encoder input for digit selection
4. Support direct frequency entry (e.g., "94.5" → 9450 kHz FM)
5. Auto-detect band and mode from entered frequency

**Files to Modify:**
- `src/services/ui_service.cpp` - dial pad rendering
- `src/main.cpp` - dial pad input handling

---

### 5.2 Sleep Mode Enhancements

**Current State:**
- `SleepMode` enum defined (Disabled, DisplaySleep, DeepSleep)
- Sleep timer in GlobalSettings
- Not fully implemented

**Implementation Plan:**
1. Implement display sleep (backlight off, radio on)
2. Implement deep sleep (radio off, low power)
3. Add wake on encoder/button
4. Add sleep timer countdown in UI
5. Persist wake state

**Files to Modify:**
- `src/main.cpp` - sleep logic
- `src/services/ui_service.cpp` - sleep display
- `src/services/radio_service.cpp` - radio sleep/wake

---

## Implementation Priority Summary

| Phase | Feature | Effort | Impact | Priority |
|-------|---------|--------|--------|----------|
| 1.1 | Encoder Acceleration | Low | High | 🔴 Critical |
| 1.2 | Extended Memory (99 slots) | Low | Medium | 🟡 High |
| 1.3 | FM Region Full Support | Low | Medium | 🟡 High |
| 2.1 | Theme System | Medium | High | 🟡 High |
| 2.2 | Extended RDS | Medium | High | 🟡 High |
| 2.3 | UTC Time Zones | Medium | Medium | 🟢 Medium |
| 3.1 | EiBi Schedule | High | High | 🟡 High |
| 3.2 | Serial Remote | Medium | Medium | 🟢 Medium |
| 3.3 | BLE Remote | Medium | Low | 🔵 Low |
| 4.1 | Multiple UI Layouts | Medium | Medium | 🟢 Medium |
| 4.2 | Digit Selection | Medium | High | 🟡 High |
| 5.1 | Dial Pad | Medium | Medium | 🟢 Medium |
| 5.2 | Sleep Mode | Medium | Medium | 🟢 Medium |

---

## Service Architecture Additions

```
src/services/
├── input_service.cpp      # MODIFY: Add acceleration
├── radio_service.cpp      # MODIFY: RDS integration, sleep modes
├── ui_service.cpp         # MODIFY: Themes, layouts, dial pad
├── settings_service.cpp   # MODIFY: New settings persistence
├── seek_scan_service.cpp  # MODIFY: EiBi integration
├── rds_service.cpp        # NEW: RDS decoding
├── theme_service.cpp      # NEW: Theme management
├── clock_service.cpp      # NEW: Enhanced clock with time zones
├── eibi_service.cpp       # NEW: Broadcast schedule
├── remote_service.cpp     # NEW: Serial command protocol
├── ble_service.cpp        # NEW: BLE NUS service
└── sleep_service.cpp      # NEW: Sleep mode management (optional)
```

---

## New Header Files

```
include/
├── themes.h               # ColorTheme definitions
├── rds_types.h            # RDS structures
├── eibi_types.h           # EiBi structures
├── timezones.h            # Time zone definitions
├── remote_types.h         # Remote protocol types
└── ble_types.h            # BLE configuration (if needed)
```

---

## Dependencies to Add

```ini
; platformio.ini additions

; For BLE support
lib_deps = 
    h2zero/NimBLE-Arduino @ ^1.4.0

; OR for Nordic UART specifically
lib_deps =
    nordicsemiconductor/NordicUART @ ^1.0.0
```

---

## Testing Strategy

### Unit Testing
- Test acceleration algorithm with simulated encoder timing
- Test time zone calculations
- Test RDS decoding with sample data

### Integration Testing
- Verify theme switching doesn't corrupt display
- Verify sleep/wake preserves radio state
- Verify remote commands don't conflict with UI

### Manual Testing
- Acceleration feel on real hardware
- RDS reception in FM mode
- BLE connection stability
- EiBi schedule accuracy

---

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| PSRAM usage exceeds capacity | Medium | High | Compress EiBi data, lazy loading |
| BLE adds too much complexity | Medium | Medium | Make BLE optional compile flag |
| RDS unreliable | Low | Low | Graceful degradation, timeout |
| Theme colors hard to tune | Low | Low | Use established theme palettes |
| Acceleration feels wrong | Medium | Medium | Extensive real-hardware testing |

---

## Success Metrics

1. **Feature Parity**: All signal-scale features (except web) working
2. **Code Quality**: Maintain service-oriented architecture
3. **Memory Usage**: Stay within ESP32-S3 PSRAM limits
4. **User Experience**: Smooth UI, responsive controls
5. **Reliability**: No crashes during extended operation

---

## Timeline Estimate

| Phase | Duration | Cumulative |
|-------|----------|------------|
| Phase 1: Quick Wins | 2-3 days | 3 days |
| Phase 2: Core Features | 5-7 days | 10 days |
| Phase 3: Advanced Features | 7-10 days | 20 days |
| Phase 4: UI Enhancements | 3-5 days | 25 days |
| Phase 5: Quality of Life | 2-3 days | 28 days |
| Testing & Polish | 2-3 days | 30 days |

**Total Estimated: 30 days** (can be parallelized across phases)

---

## Next Steps

1. **Start with Phase 1.1**: Encoder acceleration is the most impactful quick win
2. **Create feature branches**: One branch per feature for clean PRs
3. **Implement incrementally**: Each feature should be mergeable independently
4. **Test on hardware**: Flash after each feature to verify
5. **Document as you go**: Update FIRMWARE_MAP.md after each phase

---

*Generated: 2026-02-21*