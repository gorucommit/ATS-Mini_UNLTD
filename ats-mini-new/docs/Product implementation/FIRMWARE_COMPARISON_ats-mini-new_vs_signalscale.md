# Firmware Comparison: ats-mini-new vs ats-mini-signalscale

> Status (2026-02-26): Comparison snapshot / analysis document.
> Parts of this file predate later refactors (for example the ETM/seek split cleanup and `seek_service.cpp` rename) and should not be treated as current implementation-truth.
> Use `docs/ARCHITECTURE.md`, `docs/FIRMWARE_MAP.md`, and source files for the current code structure.

**Chip:** Silicon Labs SI4732 (AM/FM/SW) over I2C.  
**MCU (both):** ESP32-S3 (Arduino framework).  
**Driver (both):** PU2CLR SI4735 library 2.1.8 (I2C via `Wire`, 800 kHz).

Ground truth at the time this comparison snapshot was written: code paths and constants cited from both repositories. Where something is missing, it is called out.

---

## 1. Performance comparison

### 1.1 Tuning latency (user input → stable audio + display)

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|--------|------------------|---------------------------|--------|
| **Freq-only path** | `applyRadioState(false)` → `g_rx.setFrequency()`; no extra delay. | `updateFrequency()` → `rx.setFrequency()`; no extra delay. | Same: no added delay for simple tune. |
| **Band/mode change** | `configureModeAndBand()`: amp off → `delay(12)` → chip config → `delay(20)` → amp on. | `useBand()`: no explicit amp mute around mode; `delay(50)` after config. | A: explicit 12+20 ms pop mitigation. B: 50 ms settle only; amp not explicitly muted during band switch. |
| **Display update after tune** | UI render throttled to 50 ms (`kUiRefreshMs`) and 80 ms frame (`kUiFrameMs`); content-driven (state/signal/battery/minute). | Redraw only when `needRedraw`; RSSI every 80 ms, background refresh every 5 s. | A: predictable ~50–80 ms to next frame. B: immediate if `needRedraw` set; otherwise up to 5 s when idle. |

**Evidence (A):**  
`radio_service.cpp` 436–462: `setAmpEnabled(false); delay(12);` … `delay(20); setAmpEnabled(true);`  
`main.cpp` 865–868: `if (nowMs - g_lastUiRenderMs >= app::kUiRefreshMs)` → `render()`; `app_config.h`: `kUiRefreshMs = 50`.  
`ui_service.cpp` 1443–1470: `kUiFrameMs` (80 ms), early return if no state/signal/battery/minute/hud change.

**Evidence (B):**  
`ats-mini.ino` 433: `delay(50)` after radio config in `useBand()`.  
`ats-mini.ino` 19–28: `BACKGROUND_REFRESH_TIME 5000`; `needRedraw` drives `drawScreen()`.

---

### 1.2 Seek / scan speed and accuracy

| Feature | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|---------|------------------|---------------------------|--------|
| **Seek** | Blocking. `seekscan::tick()` → `radio::seek()` → library `seekStationProgress()`. | Blocking. `doSeek()` → `rx.seekStationProgress()` (custom loop with `delay(maxDelaySetFrequency)`). | Both block main loop for full seek. |
| **Seek thresholds** | FM: RSSI 5, SNR 2. AM: RSSI 10, SNR 3. Set in `configureSeekProperties()` and used in `isValidSeekResult()`. | FM: RSSI 5, SNR 2. AM: RSSI 10, SNR 3 (in `useBand()` / seek setup). | Same thresholds. |
| **Seek validation** | `isValidSeekResult()`: same RSSI/SNR thresholds, freq in range, ≠ start; retry once from opposite edge if invalid. | No post-seek validation; library VALID/BLTF and timeout. | A validates result and can retry. |
| **Seek timeout** | 45 s (`app::kSeekTimeoutMs`) via `g_rx.setMaxSeekTime()`. | 600 s (`SEEK_TIMEOUT`). | B allows much longer seek. |
| **Scan** | **Non-blocking** state machine. Per point: set freq → wait `g_scanSettleMs` (60 FM / 80 AM-SSB / 30 other) → read RSSI/SNR → thresholds (FM 5/2, AM 10/3) → merge/store. | **Blocking** `for(; scanTickTime();)` in `scanRun()`. Mute → loop (10 ms poll, tune complete then read RSSI/SNR) → unmute. 200 points; no threshold filter for “station” (raw data). | A: UI/input alive during scan; B: main loop blocked for full scan. |
| **Scan settle** | 60 / 80 / 30 ms by modulation (`settleDelayMsFor()`). `app_config.h` has `kScanSettleMs=85` but **not used** in seek_scan (uses 80 for AM/SSB). | Tuning delay set: FM 60 ms, AM/SSB 80 ms (`TUNE_DELAY_*`). Poll every 10 ms until tune complete. | Same effective settle idea; A has explicit per-step wait; B uses library tuning delay + poll. |
| **Scan cancel** | ETM scan cancel via `services::etm::requestCancel()` (`Cancelling` phase restores tuned freq). Seek cancel is separate in `seek_service.cpp` and injects an input abort event for active seeks. | `seekStop` (encoder/button); `checkStopSeeking()` in `scanTickTime()`. | Both support cancel; implementation shape differs. |

**Evidence (A):**  
`radio_service.cpp` 266–274 (seek thresholds), 360 (`isValidSeekResult`), 595–652 (`seek()`).  
Current code split note: seek is in `seek_service.cpp` (namespace `services::seekscan`) and scan is in `etm_scan_service.cpp`; this older evidence line predates that cleanup split.

**Evidence (B):**  
`Scan.cpp` 5–8, 107–158, 197–215: `scanRun` → `for(; scanTickTime();)`; `SI4735-fixed.h` 67–91 (`seekStationProgress` loop).  
`ats-mini.ino` 25: `SEEK_TIMEOUT 600000`; `Menu.cpp` 571: `scanRun(currentFrequency, scanStep)`.

---

### 1.3 Audio: mute, soft-mute, de-emphasis, pops

| Feature | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|---------|------------------|---------------------------|--------|
| **Mute during tune/seek** | No explicit mute in freq-only path. Amp off 12 ms + 20 ms only for band/mode change. | Seek: “disable amp to avoid sound artifacts” (comment in `doSeek`). Scan: `muteOn(MUTE_TEMP, true)` before, `muteOn(MUTE_TEMP, false)` after. | B mutes for seek/scan; A only for mode change. |
| **Mute implementation** | `setAudioMute(0/1)` + MCU mute pin; `setAmpEnabled(false/true)` for mode change. | `muteOn()`: amp off, mute pin HIGH, `delay(50)`, `rx.setAudioMute(true)`; reverse for unmute. Comment: don’t call too often (NS4160). | B: 50 ms around mute/unmute. A: no delay in simple mute path. |
| **Soft-mute (squelch)** | FM: `setFmSoftMuteMaxAttenuation(0)`. AM/SSB: `setAmSoftMuteMaxAttenuation(0..32)`, `setAMSoftMuteSnrThreshold(0)`; level from `softMuteAmLevel` / `softMuteSsbLevel`. | AM: `setAmSoftMuteMaxAttenuation(softMuteMaxAttIdx)` (0–32). SSB: `setSsbSoftMuteMaxAttenuation` **commented out** in `useBand()`. | A applies soft-mute for both AM and SSB; B only AM. |
| **De-emphasis** | FM: `setFMDeEmphasis(deemphasis)` from region (75 µs = 2, 50 µs = 1). | `setFMDeEmphasis(fmRegions[FmRegionIdx].value)` (50 µs / 75 µs). | Same idea, region-based. |
| **Volume ramping** | None. | None. | Neither implements ramping. |
| **Pop/click** | Amp disable 12 ms before and 20 ms after mode/band config only. | 50 ms delay around mute/unmute; mute before seek/scan. | B more conservative on mute timing; A targeted at mode switch. |

**Evidence (A):**  
`radio_service.cpp` 156–165 (soft-mute), 279 (`applyMuteState`), 430–463 (`configureModeAndBand`).

**Evidence (B):**  
`Utils.cpp` 94–185 (`muteOn`); `Menu.cpp` 405 (`//rx.setSsbSoftMuteMaxAttenuation`), 826–836 (`doSoftMute`); `Scan.cpp` 202–212 (mute around scan).

---

### 1.4 RF metrics (RSSI/SNR, multipath, polling, smoothing)

| Feature | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|---------|------------------|---------------------------|--------|
| **Read** | `readCurrentSignalQuality()` → `getCurrentReceivedSignalQuality()`, `getCurrentRSSI()`, `getCurrentSNR()`. | `processRssiSnr()`: same sequence. | Same chip API. |
| **Poll interval** | 80 ms (`kSignalPollMs`) inside `render()`. | 80 ms (`MIN_ELAPSED_RSSI_TIME`). | Same. |
| **Display commit** | Every 8th poll (`!(g_signalUpdateCounter++ & 7U)`) → ~640 ms. | `if(!(updateCounter++ & 7))` → ~640 ms. | Same. |
| **Smoothing/filtering** | None; raw values. | None. | Neither. |
| **Multipath/overload** | Not read or displayed. | Not used. | Neither. |
| **Squelch (RSSI gate)** | SQL in state; not shown in radio_service read path. | `currentSquelch`: RSSI &lt; threshold → MUTE_SQUELCH. | B uses RSSI for squelch; A has SQL in UI/state. |

**Evidence (A):**  
`ui_service.cpp`: `kSignalPollMs` 80; commit every 8th; `readSignalQuality()`.

**Evidence (B):**  
`ats-mini.ino`: `MIN_ELAPSED_RSSI_TIME 80`; `processRssiSnr()`; squelch in `Utils.cpp` (e.g. 204–212, 233–243).

---

### 1.5 Power / sleep

| Feature | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|---------|------------------|---------------------------|--------|
| **Sleep/idle** | Sleep mode in state (DisplaySleep, DeepSleep); UI/clock handle it. No explicit loop slowdown. | Display sleep (timer), optional light sleep; `elapsedSleep`, `sleepOn()`. | Both have display/sleep concepts. |
| **Loop delay** | `delay(5)` at end of `loop()`. | `delay(2)` at end of `loop()`. | A slightly heavier base delay. |
| **Polling** | Input tick every loop; UI every 50 ms; RSSI every 80 ms in render. | RSSI 80 ms; RDS 250 ms; background refresh 5 s; NTP 60 s; prefs 10 s. | B has more periodic tasks. |

---

### 1.6 I2C

| Feature | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|---------|------------------|---------------------------|--------|
| **Speed** | `setI2CFastModeCustom(800000UL)`. | Same. | 800 kHz both. |
| **Blocking** | All SI4735 calls blocking (library + usage). | All blocking; WebControl docstring: I2C not thread-safe, radio in `loop()`. | Same. |
| **Error recovery** | None. Init: `getDeviceI2CAddress()` → 0 then fail. No retry, no bus reset. | Same: address 0 → “Si4732 not detected”, no retry. | Neither. |
| **Transaction size** | Library-defined; not overridden. | Library-defined. | Same. |

---

### 1.7 UI frame rate / input

| Feature | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|---------|------------------|---------------------------|--------|
| **Encoder debounce** | No time debounce; state table (Ben Buxton style). | Rotary state table; invalid transitions reset state (implicit debounce). | Both table-based. |
| **Button debounce** | 30 ms (`kInputDebounceMs`); stable for that duration before accepting change. | 50 ms (`DEBOUNCE_INTERVAL` in Button). | A 30 ms, B 50 ms. |
| **Acceleration** | `kAccelerationFactors[] = {1,2,4,8,16}`; `kEncoderAccelResetMs = 350`; speed filter on step interval. | `speedThresholds[]` (350,60,45,35,25 ms), `accelFactors[]` (1,2,4,8,16); 7/10 current + 3/10 previous interval. | Similar idea; B uses 25 ms minimum interval. |
| **Missed steps under load** | Seek blocks loop (no encoder processing until seek returns). Scan does not block. | Seek and scan both block; encoder only processed between blocking ops. | Under seek/scan both can miss steps; A only during seek. |

**Evidence (A):**  
`app_config.h` 11: `kInputDebounceMs = 30`.  
`input_service.cpp`: `kRotaryTable`, `kAccelerationFactors`, `kEncoderAccelResetMs`, `g_speedFilter`.

**Evidence (B):**  
`Button.cpp`: `DEBOUNCE_INTERVAL 50`.  
`ats-mini.ino`: `accelerateEncoder()`, `speedThresholds`, `accelFactors`; `Rotary.cpp` state table.

---

## 2. High-level architecture

### 2.1 Module boundaries

| Layer | ats-mini-new (A) | ats-mini-signalscale (B) |
|-------|------------------|---------------------------|
| **SI4732 API** | `radio_service.cpp`: `SI4735Local` (extends SI4735), `g_rx`; band/mode/freq/seek/quality. | `SI4735-fixed.h`: `SI4735_fixed` (extends SI4735), `rx`; RDS/seek customisation. |
| **UI** | `ui_service.cpp`: render, drawScreen, throttling, signal/battery. | `Draw.cpp`, `Layout-*.cpp`, `Themes.cpp`; `drawScreen()` when `needRedraw`. |
| **Input** | `input_service.cpp`: encoder table, acceleration, button debounce, abort flag. | `Rotary.cpp`, `Button.cpp`; encoder/button in `.ino` and Menu. |
| **Storage** | `settings_service.cpp`: NVS Preferences, schema V2 blob, tune debounce, save tick. | `Storage.cpp`: NVS namespaces (settings, bands, memories), LittleFS; `prefsTickTime()`, `STORE_TIME` 10 s. |
| **Seek/scan** | `seek_service.cpp` (seek only, blocking via `radio::seek()`) + `etm_scan_service.cpp` (non-blocking scan state machine). | `Scan.cpp` (blocking scan); seek in `.ino`/Menu via `doSeek()`. |
| **RDS** | `rds_service.cpp`: tick, decode, commit to state. | RDS in main loop (`RDS_CHECK_TIME` 250 ms), status in Draw/WebControl. |
| **Clock** | `clock_service.cpp`: tick, NTP implied by state. | NTP in loop (60 s), clock in Draw. |

---

### 2.2 Control model

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) |
|--------|------------------|---------------------------|
| **Loop** | Single `loop()`: seekscan::syncContext → input::tick → button/rotation → seekscan::tick → tune persist → radio::tick → rds/clock/settings::tick → UI render (throttled) → delay(5). | Single `loop()`: encoder consume → button → serial/BLE → push-and-rotate → encoder dispatch (doTune/doSeek/doDigit/sidebar) → click/long-press → timeouts → RSSI → RDS → schedule/NTP/prefs → background refresh → drawScreen if needRedraw → delay(2). |
| **State machine** | Explicit: `OperationMode` (Tune/Seek/Scan), `UiLayer`, `SeekScanState`; `seekscan::tick()` has SeekPending vs ScanRunning. | Implicit: `currentCmd` (CMD_NONE, CMD_SEEK, CMD_SCAN, CMD_MENU, etc.); no separate state-machine file. |
| **RTOS** | No radio/UI tasks; all in loop. | No radio/UI tasks; all in loop. |
| **ISR** | Encoder ISR updates state/direction; main loop consumes. | Same. |

---

### 2.2a Dual-core / multi-task usage (ESP32-S3)

Neither firmware explicitly pins tasks to cores (no `xTaskCreatePinnedToCore`, no `xPortGetCoreID()`). The difference is whether a **second execution context** is used at all.

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) |
|--------|------------------|---------------------------|
| **Application tasks** | Single context: everything runs from Arduino `loop()` (typically core 1). No web server in `src/`. | **Two contexts:** (1) Arduino `loop()` — radio, UI, command processing; (2) **ESPAsyncWebServer** — HTTP/SSE runs in a **separate FreeRTOS task** (library default; often the other core). |
| **Radio / I2C** | All in `loop()`; no concurrency. | I2C is not thread-safe. Web handlers **must not** call `rx.*`. Handlers only **enqueue** commands; `webControlProcessCommands()` in `loop()` drains the queue and performs all radio operations. |
| **Synchronisation** | None (single thread). | **Command queue** (e.g. 24 entries) + **portMUX_TYPE** (`cmdQueueMux`) with `portENTER_CRITICAL` / `portEXIT_CRITICAL` around enqueue/dequeue and shared flags (`webScanStartPending`, `webScanCancelPending`). |
| **Second core** | Used only by ESP32/Arduino default (e.g. WiFi, TCP/IP, or idle). No app logic. | Effectively used by the async web server task; app explicitly designed for “async HTTP task + main loop” with queue and mutex. |

**Evidence (A):** No `xTaskCreate`, no `portENTER_CRITICAL`, no web server in application code; single-thread design.

**Evidence (B):**  
`WebControl.cpp` 6–14: “ESPAsyncWebServer runs callbacks in a separate FreeRTOS task … all radio operations (rx.*) MUST happen in the main loop() task … API handlers only set pending commands in a queue.”  
`WebControl.cpp` 55–95: `cmdQueue`, `cmdQueueMux`, `cmdEnqueue`/`cmdDequeue` with `portENTER_CRITICAL(&cmdQueueMux)`; handlers call `cmdEnqueue(...)`; `webControlProcessCommands()` (from `loop()`) calls `cmdDequeue` and runs `doTune`/`doSeek`/`scanRun` etc.

**Summary:** A is single-thread; the second core is not used by application code. B uses a second execution context (the async web server task) and coordinates with the main loop via a thread-safe command queue so radio stays on one side only.

---

### 2.2b Recommended core split for ats-mini-new (if we divide tasks)

**Constraint:** All SI4735 / I2C access must run on a single core (one task). The Wire driver and `g_rx` must never be used from two tasks.

| Core / task | Role | What runs there |
|-------------|------|------------------|
| **Core 1 — “Radio / control”** (e.g. Arduino `loop()` task) | All I2C, all radio decisions, input handling, and anything that triggers radio. | `seekscan::syncContext`, `input::tick`, `handleButtonEvents`, `handleRotation`, `seekscan::tick` (includes `radio::seek`, `radio::apply`, `readSignalQuality`), `flushPendingTunePersistIfIdle`, `radio::tick`, **RDS reads from chip** (`rds::tick` that talks to SI4735), `clock::tick`, `settings::tick` (dirty flag and *request* to save). **No** TFT draw or NVS write here. |
| **Core 0 — “Heavy / blocking”** (dedicated FreeRTOS tasks) | Display updates and blocking NVS writes. Optional: RDS decode-only, WiFi. | **(1) UI task:** Wake every 50–80 ms; take a **snapshot** of `AppState` (mutex or copy); call `ui::drawScreen(snapshot)` (TFT_eSPI only, no I2C). **(2) NVS task (low priority):** When settings service sets “dirty” and debounce elapsed, call `settings::saveNow()` so the main loop never blocks on Preferences. **(3) Optional:** RDS decode (parse blocks) on core 0 and write results to shared state with a lock; RDS *read* from chip stays on core 1. |

**Why this split**

- **Radio on one core:** Keeps I2C and SI4735 usage single-threaded; no mutex around `g_rx`, no risk of NACK or bus contention.
- **Display on the other core:** `drawScreen()` / TFT push can take several ms; moving it to a separate task avoids jitter and missed encoder steps when the UI is heavy. The radio task only updates shared state; the UI task reads a snapshot and draws.
- **NVS on the other core:** `saveNow()` and tune persist can block for many ms; offloading them keeps the radio loop responsive during writes.

**Sync needed**

- **AppState** (or a UI-specific snapshot struct): radio task writes; UI task reads. Use a mutex or a double-buffer updated atomically (e.g. pointer swap after copy).
- **Settings dirty / save request:** radio task sets “dirty” and “save requested”; NVS task clears dirty and runs `saveNow()`.
- **RDS** (if decode moves): radio task enqueues raw RDS data; decode task writes decoded PS/RT etc. into state with a lock.

**What stays on the radio core**

- All of `radio_service` (begin, apply, seek, setFrequency, readSignalQuality, setMuted, configureModeAndBand, etc.).
- All of `seek_scan_service` (tick calls radio::apply and radio::readSignalQuality).
- Input handling and everything that calls `applyRadioState()` or `radio::seek()`.
- RDS *read* from the chip (part of `rds::tick` that uses the SI4735).
- Clock and settings *logic*; only the blocking NVS *write* moves off.

---

### 2.3 State management

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) |
|--------|------------------|---------------------------|
| **Central state** | `AppState` in `app_state.h`: RadioState, UiState, SeekScanState, GlobalSettings, perBand, memories, etc. | Globals: `currentCmd`, `currentMode`, `bandIdx`, `currentFrequency`, `currentBFO`, `seekStop`, `encoderCount`/`encoderCountAccel`, band/menu/settings. |
| **Concurrency** | Single thread; abort via `consumeAbortRequest()` in seek callback. | Single thread; `seekStop` volatile; encoder ISR sets it. |
| **Re-entrancy** | Seek runs to completion inside tick(); no re-entry. | Same. |
| **Shared globals** | Services use module-static globals (e.g. `g_rx`, `g_scanSettleMs`); state passed in/out. | Many globals in `.ino` and Common.h; passed by reference or extern. |

---

### 2.4 Timing model

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) |
|--------|------------------|---------------------------|
| **Delays** | `delay(12)`/`delay(20)` for mode change; `delay(5)` loop; power settle 100 ms; seek/scan uses `millis()` for next step. | `delay(50)` in mute/useBand; `delay(2)` loop; seek uses `delay(maxDelaySetFrequency)` in loop; scan uses `millis()` for 10 ms poll. |
| **Scheduling** | `g_nextActionMs` for scan steps; `kUiRefreshMs`/`kUiFrameMs` for UI; `kSettingsSaveDebounceMs`/`kTunePersistIdleMs` for NVS. | `elapsedRSSI`, `lastRDSCheck`, `background_timer`, `elapsedCommand`, `prefsTickTime()` with `STORE_TIME`. |
| **Timeouts** | Seek 45 s; command/quick-edit timeouts in config. | Seek 600 s; `ELAPSED_COMMAND` 10 s. |

---

### 2.5 Error handling

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) |
|--------|------------------|---------------------------|
| **I2C NACK** | None. | None. |
| **SI4732 not found** | `getDeviceI2CAddress()` == 0 → show “SI473x not detected”, return from setup (no loop). | Same; “Si4732 not detected”, halt. |
| **Reset/power** | `prepareBootPower()` → power pin HIGH; wait `kSi473xPowerSettleMs` (100 ms) before I2C. | Power on, TFT init ~70 ms, then I2C and `rx.setup()`. |
| **Seek abort** | `stopSeekingCallback()` → `consumeAbortRequest()`; restores frequency if not found. | `checkStopSeeking()` → `seekStop` or button; no explicit restore in snippet. |

---

### 2.6 Portability

| Aspect | ats-mini-new (A) | ats-mini-signalscale (B) |
|--------|------------------|---------------------------|
| **Pins** | `hardware_pins.h`: Power 15, Reset 16, Amp 10, Mute 3, I2C 17/18, Enc A/B 2/1, Button 21, Backlight 38, Battery 4. | `Common.h`: same pins (no battery pin in snippet). |
| **Display** | TFT_eSPI, ST7789, 8-bit parallel; 170×320; `tft_setup.h`. | Same; `tft_setup.h`, TFT_WIDTH 170, TFT_HEIGHT 320. |
| **Config** | `app_config.h` (constants); bandplan/region in code + NVS. | Defines in `.ino` and headers; band tables in Menu; NVS for runtime. |
| **Build** | PlatformIO, `platformio.ini`, ESP32-S3. | Makefile + Arduino CLI, `sketch.yaml`, ESP32-S3 variants. |

---

## 3. Bottlenecks and risks

### 3.1 Blocking

| Where | ats-mini-new (A) | ats-mini-signalscale (B) |
|-------|------------------|---------------------------|
| **Seek** | **Blocks** entire loop until seek completes (in `seekscan::tick()` → `radio::seek()`). | **Blocks** entire loop in `doSeek()` → `seekStationProgress()`. |
| **Scan** | **Does not block**: state machine, one step per tick with `g_nextActionMs`. | **Blocks**: `scanRun()` tight loop until 200 points or stop. |
| **NVS write** | Debounced 1500 ms; `saveNow()` likely blocks (Preferences). | Debounced 10 s; `prefsSave()` blocks. |
| **Display** | Full redraw when state/signal/etc. change; rate-limited 50/80 ms. | Full redraw when `needRedraw`; can be 5 s when idle. |
| **I2C** | Every chip access blocking; no timeouts. | Same. |

### 3.2 Coupling and feature growth

| Risk | ats-mini-new (A) | ats-mini-signalscale (B) |
|------|------------------|---------------------------|
| **SSB/BFO** | BFO in state; `applyRadioState`/`configureModeAndBand` apply it; patch in `patch_init.h`. | BFO/cal in bands; `updateBFO()`; SSB patch; soft-mute for SSB commented out. |
| **Better scan** | Scan already non-blocking and segment-based; adding hysteresis/dwell would be in one service. | Blocking scan; adding dwell or more points would lengthen block. |
| **RDS** | Dedicated `rds_service`; state in `AppState`; UI reads from state. | RDS in main loop and WebControl; status scattered. |
| **Menu system** | QuickEdit + Settings layers; state-driven. | Sidebar menus and `currentCmd`; many branches in Menu/Draw. |

### 3.3 SI4732 usage

| Item | ats-mini-new (A) | ats-mini-signalscale (B) |
|------|------------------|---------------------------|
| **Ordering** | Mode set after amp off; delays 12 ms and 20 ms; seek properties after mode. | useBand() sets mode/band; 50 ms after; no amp mute in useBand. |
| **Settling** | Explicit settle for scan (60/80/30 ms). Seek uses library. | Seek: `delay(maxDelaySetFrequency)` in custom loop; scan uses library tune delay + 10 ms poll. |
| **CTS** | Library handles CTS; no extra polling in app. | Same in custom seek loop: getStatus then delay. |

---

## 4. Structured output

### 4.1 Comparison table (summary)

| Feature / metric | ats-mini-new (A) | ats-mini-signalscale (B) | Notes |
|------------------|------------------|---------------------------|--------|
| **MCU / build** | ESP32-S3, PlatformIO | ESP32-S3, Makefile + Arduino CLI | Same MCU. |
| **I2C** | 800 kHz, blocking, no recovery | 800 kHz, blocking, no recovery | Same. |
| **Seek** | Blocking; validate + retry; 45 s timeout | Blocking; no validation; 600 s timeout | A stricter and shorter. |
| **Scan** | Non-blocking; segments; thresholds; cancel | Blocking; 200 points; no threshold; cancel | A better for UI responsiveness. |
| **Seek thresholds** | FM 5/2, AM 10/3 | FM 5/2, AM 10/3 | Same. |
| **Mute during seek/scan** | No (only for mode change) | Yes (MUTE_TEMP 50 ms) | B safer for pops during seek/scan. |
| **Soft-mute SSB** | Applied | Commented out | A applies; B does not. |
| **AGC/attenuation** | AGC on/off + manual 0..26 (FM) / 0..36 (AM); AVC separate (AM/SSB). | Per-mode Fm/Am/Ssb AgcIdx; AVC Am/Ssb; menu + WebControl. | Both flexible; A single global avcLevel, B per-mode. |
| **RF metrics** | 80 ms poll; commit every 8th; no smoothing; no multipath | Same | Same. |
| **UI refresh** | 50 ms call, 80 ms frame, content-driven | needRedraw + 5 s background | A more predictable. |
| **Config** | Bandplan + region in code; NVS blob; kScanSettleMs=85 unused | Band tables in Menu; NVS + LittleFS | A: one unused constant. |
| **Complexity** | Clear services; state in AppState | More globals; currentCmd-driven; Menu large | A easier to follow. |
| **Testability** | Services take state; radio/UI separable | Globals; radio/UI mixed in loop | A easier to unit test. |

---

### 4.2 Architecture sketches (ASCII)

**ats-mini-new (A):**

```
┌─────────────────────────────────────────────────────────────────┐
│ main.cpp: setup() / loop()                                       │
│   delay(5)                                                        │
└─────────────────────────────────────────────────────────────────┘
     │
     ├─► seekscan::syncContext(g_state)
     ├─► input::tick() ──► handleButtonEvents / handleRotation
     ├─► seekscan::tick(g_state) ──┬─ SeekPending → radio::seek() [BLOCKING]
     │                            └─ ScanRunning → one step, g_nextActionMs [NON-BLOCKING]
     ├─► flushPendingTunePersistIfIdle()
     ├─► radio::tick() / rds::tick() / clock::tick() / settings::tick()
     └─► ui::render(g_state)  [throttled 50ms / 80ms]

┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ radio_service│  │ seek_scan_   │  │ input_service│  │ ui_service   │
│ g_rx (SI4735)│  │ service      │  │ encoder+btn  │  │ TFT_eSPI     │
│ apply, seek  │  │ requestSeek  │  │ debounce 30ms│  │ render 80ms  │
│ configure*   │  │ requestScan  │  │ accel 1-16   │  │ signal 80ms  │
└──────┬───────┘  └──────┬───────┘  └──────────────┘  └──────────────┘
       │                 │
       └────────┬────────┘
                 ▼
         app_state.h: AppState (Radio, Ui, SeekScan, Global, perBand, memories)
                 │
                 ▼
         settings_service: NVS Preferences "cfg2" blob, 1500ms debounce
```

**ats-mini-signalscale (B):**

```
┌─────────────────────────────────────────────────────────────────┐
│ ats-mini.ino: setup() / loop()                                    │
│   delay(2)                                                        │
└─────────────────────────────────────────────────────────────────┘
     │
     ├─► consumeEncoderCounts()
     ├─► pb1.update() (button)
     ├─► if(encCount) switch(currentCmd):
     │      CMD_NONE/CMD_SCAN → doTune()   CMD_SEEK → doSeek() [BLOCKING]
     │      CMD_FREQ → doDigit()           else → doSideBar()
     ├─► clickHandler() → Menu (scanRun) [BLOCKING]
     ├─► processRssiSnr()  (80ms)   RDS (250ms)   prefsTickTime()   background_timer (5s)
     └─► if(needRedraw) drawScreen()

┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ SI4735-fixed │  │ Scan.cpp     │  │ Rotary+Button│  │ Draw + Layout │
│ rx (SI4735)  │  │ scanRun()    │  │ encoder ISR  │  │ drawScreen() │
│ useBand()    │  │ for(;tick;)  │  │ debounce 50ms│  │ needRedraw   │
│ seekProgress │  │ mute→loop→   │  │ accel 1-16   │  │ themes       │
└──────┬───────┘  │ unmute       │  └──────────────┘  └──────────────┘
       │          └──────┬───────┘
       │                 │
       ▼                 ▼
  Common.h globals: currentCmd, bandIdx, currentFrequency, currentBFO, seekStop,
  encoderCount/Accel, volume, bands[], FmAgcIdx, AmAgcIdx, ...
       │
       ▼
  Storage.cpp: NVS (settings, bands, memories), LittleFS; prefsSave() 10s debounce
```

---

### 4.3 “What I’d improve first” (top 5 each)

**ats-mini-new (A):**

1. **Unblock seek** – Run seek in a state machine (e.g. start seek, then in tick() poll status and advance until VALID/BLTF/abort) so the loop stays responsive and encoder/display keep updating.
2. **Use or remove kScanSettleMs** – Either use `app_config.h`’s `kScanSettleMs` (85) in seek_scan or delete it and document that settle comes from `settleDelayMsFor()` only.
3. **Mute during seek** – Add a short mute (amp + chip) before/after seek to avoid pops, similar to B’s MUTE_TEMP.
4. **I2C recovery** – On NACK or timeout, try bus reset and/or retry once before giving up.
5. **RSSI/SNR smoothing** – Optional 1–3 sample IIR or moving average so bars and SQL don’t jump every 640 ms.

**ats-mini-signalscale (B):**

1. **Non-blocking scan** – Replace `for(; scanTickTime();)` with a state machine driven from loop() (e.g. set freq, set “wait until” time, next tick read RSSI/SNR and advance) so UI and encoder stay responsive.
2. **Seek result validation** – Add RSSI/SNR and “freq ≠ start” check after seek; optionally retry from opposite edge like A.
3. **SSB soft-mute** – Re-enable `setSsbSoftMuteMaxAttenuation` in useBand() so SSB has consistent soft-mute with AM.
4. **Centralise state** – Move key tuning/UI state into a single struct (or small set) and pass it through; reduces globals and makes behaviour easier to reason about and test.
5. **I2C recovery** – Same as A: bus reset and/or retry on failure.

---

### 4.4 Decision guide

| Goal | Prefer | Reason |
|------|--------|--------|
| **Responsiveness** | **ats-mini-new (A)** | Non-blocking scan; UI throttled to 50/80 ms; only seek blocks. B blocks on both seek and scan. |
| **Feature growth** | **ats-mini-new (A)** | Clear service boundaries, explicit state, non-blocking scan; easier to add RDS, menus, BFO, or new scan logic. |
| **Stability** | **Tie** | Both: no I2C recovery, same chip usage. A: seek validation + retry. B: mute during seek/scan. |
| **Simplicity / fork** | **ats-mini-signalscale (B)** | Single sketch, Makefile, fewer files; good if you want a minimal, “one .ino” style codebase. |
| **Web / network** | **ats-mini-signalscale (B)** | WebControl, SSE, API (seek, mute, AGC, scan data); A has no web UI in the explored tree. |

**Summary:** For **responsiveness** and **feature growth**, ats-mini-new is ahead (non-blocking scan, clearer architecture, seek validation). For **stability**, both need I2C recovery and consistent mute strategy; B’s mute-around-seek/scan is a plus. For **minimal footprint** and **web control**, B is stronger. Choose A if you prioritise UI responsiveness and extensibility; choose B if you prioritise web API and a single-sketch layout.

---

### 4.5 Extra comparisons (as requested)

**Seek thresholds and validation:**  
- Both use FM RSSI 5 / SNR 2 and AM RSSI 10 / SNR 3.  
- A: `isValidSeekResult()` + one retry from opposite edge. B: no post-validation.

**Soft-mute and bandwidth:**  
- A: FM soft-mute 0; AM/SSB 0–32, per global softMuteAmLevel/softMuteSsbLevel; bandwidth per band (mapAmBandwidthIndex).  
- B: AM 0–32 (doSoftMute); SSB soft-mute commented out; bandwidth per band/mode (bandwidths[4], setBandwidth()).

**AGC/attenuation:**  
- A: agcEnabled + avcLevel (manual 0..26 FM, 0..36 AM); AVC for AM/SSB in runtime.  
- B: FmAgcIdx (0–27), AmAgcIdx (0–37), SsbAgcIdx (0–1); AmAvcIdx/SsbAvcIdx (12–90); setAutomaticGainControl/setAvcAmMaxGain.

**Audio mute timing during tune/seek:**  
- A: Mute only around band/mode change (12 ms + 20 ms amp off). No mute for seek.  
- B: Mute 50 ms around mute/unmute; mute before seek (comment) and before/after scan (MUTE_TEMP).

**Complexity (cyclomatic):**  
- A: Logic split across services; `tick()` and `render()` have several branches but contained.  
- B: Large switch(currentCmd) and Menu/Draw branches; more branches in one place.

**Testability:**  
- A: radio_service, seek_scan_service, ui_service take state; could inject a mock SI4735 or display.  
- B: Globals and direct `rx`/display use; harder to test without hardware or heavy stubs.

**Config management:**  
- A: bandplan.h, app_config.h, region in state, NVS blob; step options in app_state; one unused kScanSettleMs.  
- B: bands[] and step/bandwidth tables in Menu; NVS + version per namespace; compile-time band defs, runtime NVS.

---

*Document generated from code inspection of ats-mini-new and ats-mini-signalscale. All citations refer to paths under those project roots.*
