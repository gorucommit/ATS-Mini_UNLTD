# Assessment: FM ETM two-pass verification and FREQOFF-based scoring

**Variant assessed:** Coarse pass with short settle + permissive threshold → verification pass (long settle, full RSQ) → cluster adjudication using FREQOFF, PILOT, MULT, RSSI, SNR. MW/SW/LW unchanged.

**Conclusion:** **Sound and implementable.** The design correctly addresses AGC stability and adjacent-channel bleed for FM. Library support for FREQOFF, PILOT, and MULT is present. A few clarifications and small risks are noted below; no blocking issues.

---

## 1. Summary table

| Area | Verdict | Notes |
|------|---------|------|
| Problem analysis | ✅ Agreed | 70 ms below AGC stability; 100 kHz grid causes duplicate bleed hits. |
| Two-pass FM (coarse → verify) | ✅ Sound | Permissive 30 ms coarse then 100 ms verify is coherent. |
| RSQ fields (FREQOFF, PILOT, MULT) | ✅ Available | PU2CLR SI4735 exposes all; FREQOFF is byte, use as signed. |
| Scoring weights | ✅ Plausible | FREQOFF dominant; pilot and multipath used sensibly. Tuning may be needed. |
| AM-family unchanged | ✅ Correct | Single pass, no verify, no API change. |
| Data structure changes | ✅ Clear | Profile + candidate extensions are minimal and backward-friendly. |
| Coarse threshold constants | ✅ Resolved | FM Thorough coarse only: fixed permissive kEtmCoarseThresholdFm. AM (Fast and Thorough): unchanged — use existing kEtmSensitivityAm[user]. No kEtmCoarseThresholdAm. |
| Phase / state machine | ⚠️ Add phase | New phase e.g. `VerifyScan` between CoarseScan and Finalize for FM Thorough. |
| EtmStation / persist | ⚠️ Optional | RSQ fields not in EtmStation; only used during Finalize. Fine as-is. |

---

## 2. Problem analysis — agreed

- **AGC:** 70 ms is below the ~80 ms often needed for FM AGC on weak signals; readings at margin are unreliable. Moving to 100 ms on a *verification* pass (only on candidates) is the right fix.
- **Bleed:** 100 kHz grid with a single RSSI/SNR reading per point cannot distinguish true carrier (e.g. 99.0 MHz) from adjacent grid points (98.9, 99.1) where the same station appears above threshold. Both get committed and dedupe by merge distance still leaves two entries. Using FREQOFF to pick the grid point where the carrier is centered is the right discriminator.

MW/SW/LW do not have this to the same degree: raster matches coarse step, and adjacent-channel bleed is less of an issue. Leaving them single-pass is appropriate.

---

## 3. Two-pass FM flow — sound

- **Pass 1 (coarse):** 30 ms settle, fixed permissive threshold (RSSI ≥ 3, SNR ≥ 1). Purpose: collect all candidate grid points including bleed and weak. Fast and intentionally over-inclusive.
- **Pass 2 (verify):** Re-tune only to each coarse candidate; 100 ms settle; read full RSQ (RSSI, SNR, FREQOFF, PILOT, MULT). Purpose: stable AGC and carrier discrimination for scoring.
- **Finalize:** Cluster within 2×coarseStep (200 kHz for FM); score each candidate; commit clear winner when FREQOFF/PILOT discriminate; when they don’t (poor RSQ), keep both/all in cluster.

This gives FM Thorough a clear meaning (better list quality and no duplicates from bleed) while FM Fast stays single-pass with existing behaviour. AM-family unchanged.

---

## 4. Library and RSQ API — supported

From the PU2CLR SI4735 library (as used in this project):

- **FREQOFF:** `getCurrentSignedFrequencyOffset()` → `currentRqsStatus.resp.FREQOFF`. Stored as `uint8_t`; comment says "Signed frequency offset (kHz)". Use `(int8_t)resp.FREQOFF` (or equivalent) when computing signed offset for scoring. Units: ~1 kHz per step; tuning to 99.1 with carrier at 99.0 gives offset ≈ −10, as in the proposal.
- **PILOT:** `getCurrentPilot()` → `currentRqsStatus.resp.PILOT` (bool). FM-only; confirms stereo pilot / real FM broadcast.
- **MULT:** `getCurrentMultipath()` → `currentRqsStatus.resp.MULT` (0–100). FM multipath metric.

All of these are populated by `getCurrentReceivedSignalQuality()` (already used for RSSI/SNR). So one RSQ read after the 100 ms verify settle gives RSSI, SNR, FREQOFF, PILOT, MULT. No new I2C or API discovery required; only need to call the extra getters after the same RSQ update.

**Implementation note:** Ensure `getCurrentReceivedSignalQuality()` is called once per verification point so that `getCurrentSignedFrequencyOffset()`, `getCurrentPilot()`, and `getCurrentMultipath()` reflect that tune. The existing pattern (tune → delay(settleMs) → readSignalQuality) extends naturally to “then read FREQOFF/PILOT/MULT from the same status.”

---

## 5. Scoring algorithm — plausible; tuning likely

Proposed formula:

- FREQOFF: up to 30 points; `(10 - min(abs(freqOff), 10)) * 3` → centered carrier wins.
- PILOT: +15 if present (FM only).
- RSSI × 0.5, SNR × 0.8.
- MULT × −0.3 penalty.

Rationale is correct: FREQOFF and pilot are the discriminators; RSSI/SNR reflect strength; multipath penalises reflected/co-channel. Exact weights may need tuning on hardware (e.g. FREQOFF scale, pilot reliability on very weak signals, multipath range). Suggest:

- Keep FREQOFF as the dominant term (e.g. ≥ 2× next).
- Document units and typical ranges (FREQOFF step ≈ 1 kHz) so future tweaks are easy.
- If MULT range is 0–127 in the chip and library returns 0–100, confirm and align the penalty scale.

**Cluster adjudication (FREQOFF/PILOT fallback):** When FREQOFF and PILOT clearly identify a single best carrier (e.g. one candidate has FREQOFF ≈ 0 and/or pilot, the other has large offset), commit only that candidate and discard the rest as bleed. **When the radio gives poor RSQ and FREQOFF/PILOT don’t discriminate** (e.g. both candidates have poor or missing FREQOFF/PILOT), **keep both** (or all in the cluster) so we don’t drop real stations. Fallback: if no clear winner by score, commit by best RSSI and allow multiple entries in the cluster rather than forcing one and losing the other.

No blocking issue; implement as proposed and adjust from real scans if needed.

---

## 6. Data structure changes — clear and backward-friendly

**EtmBandProfile:** Adding `coarseSettleMs` and `verifySettleMs` (with current `settleMs` becoming coarse) is clear. For AM profiles, `verifySettleMs = 0` and “no verify” is a simple branch (e.g. after coarse, go straight to Finalize). FM profile becomes e.g. `{ 10, 0, 0, 30, 100, 9 }` (coarse 30 ms, verify 100 ms). No change to segment or capacity constants.

**EtmCandidate:** Adding `freqOff` (int8_t), `pilotPresent` (bool), `multipath` (uint8_t) increases candidate size. For AM (no verify), leave them default (0/false/0); scoring then reduces to RSSI/SNR only within a cluster, which matches current “best RSSI wins” behaviour. Zero-initialisation and “only FM verification fills these” is easy to enforce.

**EtmStation:** Unchanged; RSQ fields are not stored in the persistent list. Only used during Finalize to choose which candidate in each cluster is committed. That keeps the stored list small and avoids schema changes to saved state.

**New constants:** `kEtmCoarseThresholdFm = { 3, 1 }` only (FM Thorough coarse pass). AM uses existing user sensitivity; no `kEtmCoarseThresholdAm`.

---

## 7. Coarse thresholds — AM unchanged

- **FM Thorough coarse:** Fixed permissive `kEtmCoarseThresholdFm = { 3, 1 }` only — no user setting, maximum sensitivity for candidate collection. Used only in the first (coarse) pass when FM + Thorough.
- **AM (Fast and Thorough):** Coarse pass uses the **same thresholds as today** — `kEtmSensitivityAm[sensIdx]` from user setting (Low/High). No new constant. AM Thorough remains a single pass with existing behaviour; no verification pass and no `kEtmCoarseThresholdAm`.

---

## 8. State machine — add VerifyScan phase

Current flow: CoarseScan → (Fast → Finalize; Thorough → buildFineWindows → FineScan or Finalize). For FM Thorough with verification:

- After coarse: do *not* call buildFineWindows (FM still has no fine windows). Instead, if FM and Thorough and `verifySettleMs > 0`, transition to a new phase, e.g. **VerifyScan**.
- **VerifyScan:** For each coarse candidate (or each cluster representative), tune → 100 ms settle → read full RSQ, fill candidate’s freqOff/pilotPresent/multipath; then move to next. When done → Finalize.
- Finalize: for FM, cluster + scoring; when FREQOFF/PILOT don’t discriminate, keep multiple in cluster (don’t force one). For AM, keep current merge (best RSSI within merge distance).

So the new phase is only used when the current band profile has `verifySettleMs > 0` (FM only with the proposed profiles). No change to FineScan or to AM path.

---

## 9. Performance and UX

- **FM Thorough time:** Coarse pass shorter (30 ms × ~21 points ≈ 0.6 s) but then one verify per *candidate* (up to 128). Worst case ~128 × 100 ms ≈ 12.8 s for verify only. In practice candidates are far fewer (e.g. 20–40), so verify adds a few seconds. Total FM Thorough will be noticeably longer than Fast but acceptable if duplicate reduction is the goal.
- **Progress:** Either extend progress to “coarse + verify” (e.g. totalSteps = coarsePoints + candidateCount) or show a second phase “Verifying…” with a separate indicator. Recommend documenting in the plan for UI.

---

## 10. Risks and mitigations

| Risk | Mitigation |
|------|------------|
| FREQOFF scale or sign differs by chip/revision | Cast to int8_t; log a few (freqKhz, FREQOFF) pairs on device and confirm ~1 kHz per step and sign convention. |
| Pilot false negative on very weak stereo | Scoring still has RSSI/SNR; centered carrier with no pilot can win if FREQOFF is good. Weights can be tuned. |
| MULT range 0–100 vs 0–127 | Check library and AN332; apply penalty in same units. |
| Verify pass time too long in dense areas | Cap candidates per cluster (e.g. verify cluster center only) or limit total verify steps; document as future optimisation. |

---

## 11. Implementation checklist (high level)

1. **etm_scan.h:** Add `coarseSettleMs` and `verifySettleMs` to `EtmBandProfile` (or rename `settleMs` → `coarseSettleMs`, add `verifySettleMs`). Update FM profile to (30, 100); AM profiles (90, 0). Add `freqOff`, `pilotPresent`, `multipath` to `EtmCandidate`. Add `kEtmCoarseThresholdFm`, `kEtmCoarseThresholdAm`.
2. **radio_service (or etm_scan_service):** Add a function to read “full RSQ” for FM (RSSI, SNR, FREQOFF, PILOT, MULT) after tune; use existing `getCurrentReceivedSignalQuality()` then call `getCurrentSignedFrequencyOffset()`, `getCurrentPilot()`, `getCurrentMultipath()` (with int8_t cast for FREQOFF).
3. **etm_scan_service:** In `tickCoarse()` for FM Thorough use `kEtmCoarseThresholdFm` and `coarseSettleMs` (30). When coarse ends and FM Thorough and `verifySettleMs > 0`, transition to **VerifyScan** (new phase) instead of Finalize.
4. **VerifyScan phase:** Iterate over candidates (or cluster centers); tune to candidate freq; wait `verifySettleMs`; read full RSQ; write freqOff, pilotPresent, multipath into candidate; advance. When done → Finalize.
5. **Finalize:** For FM, cluster within 2×coarseStepKhz; score; commit clear winner per cluster when FREQOFF/PILOT discriminate; when they don’t (poor RSQ), keep both/all in cluster. For AM, keep current merge logic (best RSSI within mergeKhz).
6. **EtmPhase:** Add `VerifyScan` (e.g. value 5) and handle in `tick()` and publishState (e.g. “Verifying” or reuse “FINE” semantics for UI).
7. **Tests:** Run FM Fast (unchanged); FM Thorough (expect fewer duplicates, possibly slightly more weak stations due to 100 ms verify); AM unchanged.

---

## 12. Verdict

**Proceed with implementation.** The variant is well aligned with the hardware (AGC, FREQOFF, PILOT, MULT), keeps AM unchanged, and extends the data model in a minimal way. Resolve the AM Thorough coarse threshold intent (§7), add the VerifyScan phase and wire it only when `verifySettleMs > 0`, and optionally document progress/UX for the verify pass. After that, implement and tune scoring on real hardware if needed.
