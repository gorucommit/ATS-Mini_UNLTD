# ATS-Mini UNLTD

Custom firmware for the ATS-Mini portable radio (ESP32-S3 + SI4735 + TFT). This repo contains the **ats-mini-new** firmware project.

## Main firmware: ats-mini-new

- **Path:** [ats-mini-new/](ats-mini-new/)
- **Stack:** Arduino CLI, ESP32-S3 (ESP32 core 3.3.6), esptool, SI4735, TFT_eSPI.
- **Docs:** [ats-mini-new/docs/](ats-mini-new/docs/) — architecture, specs, band plan, milestones.

### Quick links (raw text for tools/AI)

- [ats-mini-new README](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md)
- [Firmware map & file structure](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/FIRMWARE_MAP.md)
- [Product spec](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/PRODUCT_SPEC.md)
- [Development plan](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/DEVELOPMENT_PLAN.md)

### Build & flash (Arduino CLI + esptool)

We use **Arduino CLI** for building and **esptool** for flashing. PlatformIO is not used.

```bash
cd ats-mini-new
arduino-cli compile --profile ats-mini-s3 --build-path "../test-builds/arduino-cli/esp32.esp32.esp32s3"
# Then flash with esptool (see ats-mini-new/README.md for full command)
```

See [ats-mini-new/README.md](ats-mini-new/README.md) for complete build and flash instructions.

## Repo layout

| Folder        | Purpose                    |
|---------------|----------------------------|
| **ats-mini-new** | Main firmware (Arduino CLI sketch) |
| **test-builds/** | Build outputs (Arduino CLI)  |
| **ui-lab/**   | UI experiments              |

## License

See ats-mini-new and source files for license information.
