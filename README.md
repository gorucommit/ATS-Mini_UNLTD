# ATS-Mini UNLTD

Custom firmware for the ATS-Mini portable radio (ESP32-S3 + SI4735 + TFT). This repo contains the **ats-mini-new** firmware project and supporting references/tools.

## Main firmware: ats-mini-new

- **Path:** [ats-mini-new/](ats-mini-new/)
- **Stack:** PlatformIO, ESP32-S3, Arduino framework, SI4735, TFT_eSPI.
- **Docs:** [ats-mini-new/docs/](ats-mini-new/docs/) — architecture, specs, band plan, milestones.

### Quick links (raw text for tools/AI)

- [ats-mini-new README](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/README.md)
- [Firmware map & file structure](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/FIRMWARE_MAP.md)
- [Product spec](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/PRODUCT_SPEC.md)
- [Development plan](https://raw.githubusercontent.com/gorucommit/ATS-Mini_UNLTD/main/ats-mini-new/docs/DEVELOPMENT_PLAN.md)

### Build & flash

```bash
cd ats-mini-new
pio run
pio run -t upload
```

## Repo layout

| Folder        | Purpose                          |
|---------------|----------------------------------|
| **ats-mini-new** | Main firmware (PlatformIO project) |
| references/   | Other firmware trees, snapshots  |
| test-builds/  | Build outputs, snapshots         |
| tools/        | Build/helper scripts             |
| ui-lab/       | UI experiments                  |

## License

See ats-mini-new and source files for license information.
