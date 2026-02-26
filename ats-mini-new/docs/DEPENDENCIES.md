# Dependency Lock (Current)

## Firmware/library pins

### PlatformIO (`platformio.ini`)

- `platform = espressif32@6.7.0`
- `framework = arduino`
- `PU2CLR SI4735 = 2.1.8` (Git tag)
- `TFT_eSPI = 2.5.43` (Git tag)

### Arduino CLI (`sketch.yaml`)

- ESP32 core: `esp32:esp32 (3.3.6)`
- Libraries:
  - `PU2CLR SI4735 (2.1.8)`
  - `TFT_eSPI (2.5.43)`

## Source snapshots (reference only)

- `ats-nano` baseline commit: `50a380829c81a36743147715f859ffb64ce21f8a`
- `ats-mini-signalscale` inspiration commit: `86e3f8200a1df7feb5674265807951639fbbd010`

## Policy

- If firmware dependency versions change, update this file and the corresponding build config (`platformio.ini` and/or `sketch.yaml`) in the same change.
- This file records what is checked in, not which tool a given developer prefers to build with.
