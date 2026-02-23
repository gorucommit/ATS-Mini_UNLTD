# Saved state: before FM two-pass ETM enhancement

**To return to this state:**

```bash
git checkout etm-before-fm-two-pass
```

- **Tag:** `etm-before-fm-two-pass` (annotated), created on the commit that precedes the FM two-pass verification enhancement.
- If you have uncommitted changes you want to keep, commit or stash them before switching, or they will be lost when you checkout the tag.
- To build from this state: normal build (e.g. PlatformIO or Arduino CLI from `ats-mini-new`).

**Context:** This snapshot marks the ETM implementation with consolidated docs (`ETM_SCAN.md`), two-level sensitivity (Low/High), per-band thresholds, and coarse-only scan for all bands (70 ms FM, 90 ms AM). The assessment of the *FM two-pass + FREQOFF scoring* variant is in `docs/ETM_FM_TWO_PASS_ASSESSMENT.md`.
