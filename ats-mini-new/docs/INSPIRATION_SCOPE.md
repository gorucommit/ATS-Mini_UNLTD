# Inspiration Scope (signalscale)

> Status (2026-02-26): Policy/reference-selection document. This defines how inspiration is used; it is not an implementation-status or behavior-spec document.

Use `ats-mini-signalscale` only to extract ideas, not structure.

Allowed:
- UX concepts and feature behavior notes.
- Heuristics for scan/seek thresholds.
- Data-model ideas.

Not allowed:
- Copying menu flow implementation one-to-one.
- Reusing module boundaries as-is.
- Directly transplanting large functions.

Process:
1. Write behavior intent in your own words.
2. Implement from clean interfaces in `services/`.
3. Validate against milestone acceptance criteria.
