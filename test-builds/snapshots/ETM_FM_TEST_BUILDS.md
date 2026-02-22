# ETM FM test builds (3 variants)

Flash with esptool (replace `DIR` with one of the folder names below):

```bash
cd "test-builds/snapshots/DIR"
python3 -m esptool --chip esp32s3 --port /dev/cu.usbmodem101 --baud 921600 write_flash \
  0x0 bootloader.bin 0x8000 partitions.bin 0x10000 firmware.bin
```

| Folder | Branch | Change |
|--------|--------|--------|
| **etm-fm-settle-70ms** | `etm-fm-settle-70ms` | FM ETM settle 70 ms only (now on main) |
| **etm-sample-3x** | `etm-sample-3x` | Coarse pass: sample RSSI/SNR 3× (15 ms apart), use max. (All bands.) |
| **etm-fm-70ms-and-3x** | `etm-fm-70ms-and-3x` | Both: 70 ms FM settle + 3× sampling on coarse |
