# Dependency Lock

## Source snapshots
- `ats-nano` baseline commit: `50a380829c81a36743147715f859ffb64ce21f8a`
- `ats-mini-signalscale` inspiration commit: `86e3f8200a1df7feb5674265807951639fbbd010`

## PlatformIO pins
- `platform = espressif32@6.7.0`
- `framework = arduino` (resolved via pinned platform)
- `PU2CLR SI4735 = 2.1.8` (git tag)
- `TFT_eSPI = 2.5.43` (git tag)

## Arduino CLI pins
- ESP32 core: `esp32:esp32 (3.3.6)`
- Libraries:
  - `PU2CLR SI4735 (2.1.8)`
  - `TFT_eSPI (2.5.43)`

## Policy
- Any dependency change must update this file and `platformio.ini`/`sketch.yaml` together.
