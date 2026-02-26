# Saved state: before FM two-pass ETM enhancement

> Status (2026-02-26): Historical planning/assessment/session document.
> It may not reflect the current firmware implementation exactly. For current implementation docs, use docs/ARCHITECTURE.md, docs/FIRMWARE_MAP.md, docs/ETM_SCAN.md, docs/UI_INTERACTION_SPEC.md, and source under src/ and include/


**To return to this state:**

```bash
git checkout etm-before-fm-two-pass
```

- **Tag:** `etm-before-fm-two-pass` (annotated), created on the commit that precedes the FM two-pass verification enhancement.
- If you have uncommitted changes you want to keep, commit or stash them before switching, or they will be lost when you checkout the tag.
- To build from this state: normal build (e.g. PlatformIO or Arduino CLI from `ats-mini-new`).

**Context:** This snapshot marks the ETM implementation with consolidated docs (`ETM_SCAN.md`), two-level sensitivity (Low/High), per-band thresholds, and coarse-only scan for all bands (70 ms FM, 90 ms AM). The assessment of the *FM two-pass + FREQOFF scoring* variant is in `docs/ETM_FM_TWO_PASS_ASSESSMENT.md`.
