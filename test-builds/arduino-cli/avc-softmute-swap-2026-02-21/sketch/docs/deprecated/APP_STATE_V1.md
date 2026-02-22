#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/docs/deprecated/APP_STATE_V1.md"
# AppState v1 Schema Freeze

This document defines the canonical `app::AppState` struct layout.
All services read from and write to this schema. No field may be added
or renamed without a schema version bump and migration guard update.

---

## 1. Operation Mode

```cpp
enum class OpMode : uint8_t {
    TUNE = 0,
    SEEK = 1,
    SCAN = 2,
};

enum class OpSubState : uint8_t {
    IDLE   = 0,  // default for all modes
    ACTIVE = 1,  // seek running / scan running
};
```

- `opMode`: current operation mode (`TUNE`, `SEEK`, `SCAN`).
- `opSubState`: `IDLE` or `ACTIVE`. Only meaningful for `SEEK` and `SCAN`.
- `seekDirection`: `+1` (up) or `-1` (down). Set on the encoder tick that
  triggers a seek. Retained until next seek trigger.
- On mode transition (double-click), `opSubState` resets to `IDLE`.
- On cancel (click or rotate during `ACTIVE`), `opSubState` returns to `IDLE`
  and `opMode` is unchanged.

---

## 2. UI Layer State

```cpp
enum class UiLayer : uint8_t {
    NOW_PLAYING  = 0,
    QUICK_EDIT   = 1,
    SYS_SUBMENU  = 2,
    FAVORITES    = 3,
    SETTINGS     = 4,
    DIAL_PAD     = 5,
};

enum class QuickEditState : uint8_t {
    BROWSE = 0,  // rotating moves chip focus
    EDIT   = 1,  // rotating changes chip value
};
```

- `uiLayer`: current active UI layer.
- `quickEditState`: only meaningful when `uiLayer == QUICK_EDIT`.
- `chipFocus`: index into the chip ring (0–9) representing current focus.
  - Ring order: `BAND(0) STEP(1) BW(2) AGC_ATT(3) SQL(4) SYS(5) SETTINGS(6) FAV(7) FINETUNE(8) MODE(9)`
- `quickEditParentMode`: the `OpMode` that was active when Quick Edit was
  entered. Restored on long press exit from Quick Edit.
- `lastChipFocus`: last chip index focused before leaving Quick Edit.
  Restored on next Quick Edit entry (power-user return-to-last behavior).
- `dialPadActive`: bool. Set when dial pad is open.
- `dialPadTimerMs`: timestamp of last dial pad input. Used for 5s timeout.

---

## 3. Radio State

```cpp
struct RadioState {
    uint8_t  bandId;        // index into bandplan
    uint8_t  mode;          // RadioMode enum
    uint32_t frequencyKhz;  // current frequency in kHz (FM stored as kHz * 10 for .1 resolution)
    uint8_t  volume;        // 0–63 (SI473x range)
    bool     muted;
    uint8_t  bwIndex;       // index into per-mode bandwidth table
    int16_t  bfoOffsetHz;   // SSB BFO offset, -16000..+16000
    int8_t   agcIndex;      // AGC/ATT index (0 = auto)
    uint8_t  sqlLevel;      // squelch level
};
```

```cpp
enum class RadioMode : uint8_t {
    FM  = 0,
    AM  = 1,
    LSB = 2,
    USB = 3,
};
```

- `frequencyKhz` stores FM as tenths of kHz (e.g., 90.4 MHz = `904000` / 10 =
  `90400` in units of 0.1 kHz). Use a dedicated FM accessor to avoid confusion.
- `bwIndex` is per-mode. Mapping lives in `bandplan.h`.
- `bfoOffsetHz` is session state for non-SSB modes (ignored but retained).

---

## 4. RF Metrics (polled, not persisted)

```cpp
struct RfMetrics {
    uint8_t  rssi;       // 0–127 dBuV
    uint8_t  snr;        // 0–127 dB
    uint8_t  multipath;  // 0–127 (FM only, post-v0.1)
    bool     stereo;     // FM stereo pilot detected
    bool     rdsPending; // RDS data available to read
};
```

- Polled on a cadence defined in the Radio Service Contract.
- Never persisted.
- `multipath` and `stereo` are FM-only; zero for AM/SSB.

---

## 5. Seek/Scan State

```cpp
struct SeekScanState {
    bool     active;             // seek or scan loop running
    int8_t   seekDirection;      // +1 up, -1 down
    uint32_t scanCurrentKhz;     // current scan position
    uint8_t  rawHitCount;        // number of raw hits recorded
    uint8_t  mergedHitCount;     // number of hits after cluster merge
    uint8_t  navIndex;           // current position in found-station nav list
};
```

- Max raw hits: 64 (sufficient for full FM or SW broadcast sweep).
- Raw hit buffer: `uint32_t rawHits[64]` (frequencies in kHz).
- RSSI buffer: `uint8_t rawHitRssi[64]` (paired with rawHits).
- Merged hit list: `uint32_t mergedHits[32]` (post-deduplication).
- All buffers are session-only heap or static arrays; not in NVS.
- `navIndex` wraps: navigating past end goes to 0, before 0 goes to last.

### Found-station list clear conditions
Clear `rawHits`, `mergedHits`, and all counts when:
- Band changes (`bandId` changes).
- Mode family changes (FM ↔ AM/SSB).
- Regional MW spacing changes (9 ↔ 10 kHz).
- Reboot / cold start.
- New scan starts (replaces prior scan results; seek hits are also cleared).

---

## 6. Favorites

```cpp
struct Favorite {
    uint32_t frequencyKhz;  // 0 = empty slot
    uint8_t  bandId;
    // reserved: uint8_t[3] for future RDS/EiBi name pointer
};

struct FavoritesStore {
    Favorite slots[20];
    uint8_t  writeHead;  // next slot to overwrite (FIFO)
    uint8_t  count;      // number of valid entries (0–20)
};
```

- `writeHead` advances modulo 20 on each save.
- `count` stops incrementing at 20; thereafter it is always 20.
- Empty slot: `frequencyKhz == 0`.
- Triple-click writes current `RadioState.frequencyKhz` + `bandId` to
  `slots[writeHead]` and advances `writeHead`.
- FAV chip entry shows the 20 slots; rotate navigates, click tunes.

---

## 7. Regional / Persistence Settings

```cpp
struct RegionSettings {
    uint8_t mwSpacingKhz;   // 9 or 10
    uint8_t fmDeemphasis;   // 0 = 75us (Americas), 1 = 50us (Europe/Asia)
    bool    oirtEnabled;    // extend FM band to 65–74 MHz if true
};

struct DisplaySettings {
    uint8_t  brightnessDefault;  // 0–255
    uint16_t displaySleepSec;    // seconds before backlight off (0 = never)
    bool     powerSaveEnabled;
    uint16_t deepSleepSec;       // seconds before deep sleep (0 = never)
};
```

---

## 8. Per-Band Persisted Frequency

```cpp
// Stored in NVS keyed by bandId (see Persistence Schema).
// Not a field in AppState directly — loaded into RadioState.frequencyKhz
// on band switch, saved from RadioState.frequencyKhz on band change or
// on delayed-save flush.
```

---

## 9. Dirty Flags

```cpp
struct DirtyFlags {
    bool radioState;       // frequency/band/mode/vol changed
    bool regionSettings;   // MW spacing / de-emphasis / OIRT changed
    bool displaySettings;  // brightness / sleep / power-save changed
    bool favorites;        // favorites list mutated
    bool rfSettings;       // BW/AGC/SQL changed
};
```

- Set by the coordinator when corresponding fields change.
- Cleared by `services::settings` after successful NVS write.
- Save policy is defined in the Persistence Schema document.

---

## 10. Full AppState Struct (top-level)

```cpp
namespace app {

struct AppState {
    // Operation
    OpMode        opMode          = OpMode::TUNE;
    OpSubState    opSubState      = OpSubState::IDLE;

    // UI
    UiLayer       uiLayer         = UiLayer::NOW_PLAYING;
    QuickEditState quickEditState = QuickEditState::BROWSE;
    uint8_t       chipFocus       = 0;
    uint8_t       lastChipFocus   = 0;
    OpMode        quickEditParentMode = OpMode::TUNE;
    bool          dialPadActive   = false;
    uint32_t      dialPadTimerMs  = 0;
    bool          displaySleeping = false;
    bool          wakeConsumed    = false;  // first-wake-absorb flag

    // Radio
    RadioState    radio           = {};
    RfMetrics     rfMetrics       = {};

    // Seek/Scan
    SeekScanState seekScan        = {};

    // Favorites
    FavoritesStore favorites      = {};

    // Persisted settings
    RegionSettings  region        = {};
    DisplaySettings display       = {};

    // Dirty tracking
    DirtyFlags    dirty           = {};
};

} // namespace app
```

---

## 11. Schema Version

- Schema version: `1`.
- Stored in NVS alongside data (see Persistence Schema).
- Any field addition, removal, or type change increments this version.
- Migration guard: on load, if stored version ≠ current version, log
  warning and revert to safe defaults. Do not attempt field migration in v1.
