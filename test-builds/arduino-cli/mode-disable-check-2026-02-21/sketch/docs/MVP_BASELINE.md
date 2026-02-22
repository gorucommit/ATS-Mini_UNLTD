#line 1 "/Users/beegee/Documents/ats mini/ats-mini-UNLTD/ats-mini-new/docs/MVP_BASELINE.md"
# MVP Baseline Status

This firmware now implements the MVP baseline in code, using the `ats-nano` style radio control flow with a custom service-based structure.

## Implemented
- SI473x power-up and I2C detection.
- Safe startup ordering (power, I2C, radio setup, amp enable).
- Band tuning and wrap logic.
- Mode switching with per-band constraints.
- Volume control.
- One-shot seek up/down (cancelable via user input).
- Basic full-band scan that lands on strongest RSSI candidate.
- Settings persistence with schema + checksum validation.

## Current control scheme (temporary MVP)
- Short press: cycle control focus (`TUNE -> BAND -> MODE -> VOL -> SEEK -> SCAN`).
- Rotate encoder in current focus:
  - `TUNE`: tune frequency (SSB uses BFO + 1 kHz carry).
  - `BAND`: switch band.
  - `MODE`: AM/LSB/USB or FM where valid.
  - `VOL`: volume up/down.
  - `SEEK`: seek in rotation direction.
  - `SCAN`: run full scan in rotation direction (AM/FM only).
- Long press: cancel active seek/scan; otherwise reset focus to `TUNE`.
- Very long press: force cancel and reset focus to `TUNE`.

## Hardware verification checklist
- Confirm boot with SI473x connected.
- Confirm error path with SI473x disconnected.
- Confirm audio output on default station after boot.
- Confirm each focus action works from encoder/button.
- Confirm seek lands on valid stations on FM and AM.
- Confirm scan finishes and tunes to best candidate.
- Confirm settings survive reboot.

## Notes
- UI is intentionally serial-first for MVP validation. Final TFT/menu design comes later.
- Scan/seek thresholds are initial values and should be tuned from real-world tests.
