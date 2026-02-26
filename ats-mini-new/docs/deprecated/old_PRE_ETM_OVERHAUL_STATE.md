# Pre-ETM Overhaul State

This snapshot marks the project state **before** the ETM (scan/seek) overhaul.

## What’s included

- Firmware: `app_services.h`, `input_service`, `radio_service`, `seek_scan_service`
- Docs: band scan analysis, ETM scan redesign plan and assessments
- UI spec: `firmware-now-playing-320.json`

## How to return to this state

From the repo root (`ats-mini-UNLTD`):

```bash
git checkout pre-etm-overhaul
```

To create a branch from this state and keep working:

```bash
git checkout -b my-branch pre-etm-overhaul
```

To see the tagged commit:

```bash
git show pre-etm-overhaul --stat
```

Tag created: **pre-etm-overhaul** (annotated).
