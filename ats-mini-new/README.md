# ats-mini-new

Custom firmware for the ATS-Mini portable radio. ESP32-S3 + SI4735 + TFT, built with **Arduino CLI** and flashed with **esptool**.

## Goals

- Minimal, understandable architecture.
- Rebuild menus, bands, seek, and scan from scratch.
- Use `ats-mini-signalscale` for inspiration only.

## Requirements

- **Arduino CLI** — for building
- **esptool** — for flashing (install via pip: `pip install esptool`)
- **ESP32 Arduino core 3.3.6** — installed via Arduino CLI

We do **not** use PlatformIO. Build and flash use Arduino CLI + esptool only.

## Quick start

### 1. Install Arduino CLI and ESP32 core

```bash
# Arduino CLI (e.g. via Homebrew)
brew install arduino-cli

# Add ESP32 board support
arduino-cli config add board_manager.additional_urls https://espressif.github.io/arduino-esp32/package_esp32_index.json
arduino-cli core update-index
arduino-cli core install esp32:esp32@3.3.6
```

### 2. Build

From this directory (or repo root):

```bash
arduino-cli compile --profile ats-mini-s3 --build-path "../test-builds/arduino-cli/esp32.esp32.esp32s3"
```

### 3. Flash

Connect the radio via USB. Find the port (e.g. `/dev/cu.usbmodem2101` on macOS). Then:

```bash
BUILD="../test-builds/arduino-cli/esp32.esp32.esp32s3"
BOOT_APP0="$HOME/Library/Arduino15/packages/esp32/hardware/esp32/3.3.6/tools/partitions/boot_app0.bin"

esptool --chip esp32s3 --port /dev/cu.usbmodem2101 --baud 921600 write_flash \
  0x0 "$BUILD/ats-mini-new.ino.bootloader.bin" \
  0x8000 "$BUILD/ats-mini-new.ino.partitions.bin" \
  0xe000 "$BOOT_APP0" \
  0x10000 "$BUILD/ats-mini-new.ino.bin"
```

Adjust `--port` to your device (e.g. `/dev/cu.usbmodem101`, `COM3` on Windows).

### 4. Monitor serial

```bash
# macOS/Linux
screen /dev/cu.usbmodem2101 115200
# or
arduino-cli monitor -p /dev/cu.usbmodem2101 -c baudrate=115200
```

## Project layout

| Path        | Purpose                          |
|-------------|----------------------------------|
| `src/`      | Application entry and services   |
| `include/`  | App config, bandplan, pin map, state |
| `docs/`     | Architecture, specs, milestones  |
| `tft_setup.h` | TFT_eSPI setup for this firmware |

## Configuration

- **sketch.yaml** — Arduino CLI profile (board FQBN, platform, libraries)
- **platformio.ini** — Present for legacy compatibility; **not used** for build or flash

## Recent implementation notes

- FM RDS/CT port status, behavior contract, fixes: `docs/RDS_PORT_2026-02-22.md`
- Brightness control (Settings, min 20, no zero) and frequency dial pad (long-press in TUNE/SEEK)

## Documentation

- `docs/PRODUCT_SPEC.md` — Product behavior contract
- `docs/UI_INTERACTION_SPEC.md` — State-action matrix
- `docs/MVP_BASELINE.md` — On-device verification
- `docs/MILESTONES.md` — Roadmap
