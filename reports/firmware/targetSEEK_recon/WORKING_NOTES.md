# targetSEEK reverse-engineering notes

## Goal

Map user-visible behavior (seek/ETM/menu/signal) to concrete code regions in `app0`.

## Primary artifacts

- Firmware map: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_map.md`
- Recon summary: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/RECON_SUMMARY.txt`
- Behavior anchors: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/behavior_anchors.txt`
- Main code disassembly: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/disasm/seg3_0x42000020.S`
- String index with runtime addresses: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/strings_index.txt`
- Call graph summary: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/SEEK_ETM_CALLGRAPH.md`
- Pseudo-C outline: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/SEEK_ETM_PSEUDOCODE.md`
- Action-routine call graph: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/ACTION_ROUTINES_CALLGRAPH.md`
- Action-routine pseudo-C outline: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/ACTION_ROUTINES_PSEUDOCODE.md`
- Action-routine callee counts: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/action_routines_call_data.txt`
- Action-routine xrefs: `/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/action_routines_string_xrefs_resolved.txt`

## High-value anchor strings

- `0x3C060B43` -> `"   SEEK   "`
- `0x3C060C7A` -> `" SEEK ON "`
- `0x3C060C84` -> `" SEEK OFF "`
- `0x3C060CE6` -> `" ETM-List "`
- `0x3C060218` -> `"ETM-Cont"`
- `0x3C060221` -> `"Waterfall"`
- `0x3C06044C` -> `"SIGNAL:%02d/%02d"`

## Confirmed code xrefs in seg3 disassembly

- `0x42010807` loads `0x3C060B43` (`SEEK` label).
- `0x42012EFB` loads `0x3C060CE6` (`ETM-List` label).
- `0x420132B4` / `0x420132BA` load `0x3C060C7A` / `0x3C060C84` (`SEEK ON/OFF`).
- `0x42004C1E` loads `0x3C060218` (`ETM-Cont`).
- `0x42004CC0` loads `0x3C060288` (`TUNE SEEK`).
- `0x42007793` loads `0x3C06044C` (`SIGNAL:%02d/%02d`).

## Function-range starting points (from nearest `entry`)

- `0x42004BE4..0x42004D63`: menu text selection (ETM-Cont/Waterfall/TUNE SEEK).
- `0x42007460..0x42007C8F`: signal/telemetry text formatting path.
- `0x4200FD54..0x42010BD4`: seek screen setup/update path.
- `0x42011A84..0x42013523`: ETM/seek mode control and SEEK ON/OFF toggle path.
- `0x4200ADD0..0x4200BD60`: action-export island (Memories/Stations/ETM/Settings routines).

## Useful repeated callees (candidate utility routines, inferred)

- `0x42019448`: likely text draw API (called with string pointer + coordinates).
- `0x42003100`: likely UI primitive / print helper (very frequent).
- `0x4201F630`: likely delay/timer wait (called with `0x1F4` in mode transitions).

These names are hypotheses and should be confirmed by tracing argument patterns.

## Practical workflow

1. Start in `seg3_0x42000020.S` at `0x420132B4` and label the SEEK toggle branch.
2. Walk upward to the nearest `entry` at `0x42011A84`; treat this as a mode/state handler.
3. Label calls inside this range, especially `0x42019448`, `0x42003100`, `0x4201F630`.
4. Repeat for `0x42012EFB` (`ETM-List`) and `0x42010807` (`SEEK`) to map state transitions.
5. Use `strings_index.txt` to tag additional UI states and correlate with nearby call clusters.
6. Use `ACTION_ROUTINES_CALLGRAPH.md` and `ACTION_ROUTINES_PSEUDOCODE.md` to trace file export/load behavior for keys `51..54`.
