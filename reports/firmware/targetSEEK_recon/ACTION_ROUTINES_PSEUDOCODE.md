# Action routine pseudo-C outline

Target routines are dispatched from SEEK/ETM handler keys `51..54`.

## `0x4200ADD0` (`Memories`)

```c
// Range: 0x4200ADD0..0x4200AEC8 (hard end)
void action_memories(void) {
  // Build/open /memo.txt in write mode.
  file_t f = open_text_file("/memo.txt", "w");

  // Source table at 0x3FC949DC: 64 records, stride 6 bytes.
  // Sentinel value 0x270F (9999) means "unused slot".
  for (int i = 1; i <= 64; i++) {
    rec = memory_table[i];
    if (rec.freq == 9999) continue;
    line = fmt("%02d,%05d,%d,%d,%d", i, rec.freq, rec.b2, rec.b3, rec.step_or_mode);
    append_line(f, line);
  }

  finalize_file(f);
}
```

## `0x4200AECC` (`Stations`)

```c
// Range: 0x4200AECC..0x4200B1FC (hard end)
void action_stations(void) {
  // Export stations to /stations.txt.
  file_t out = open_text_file("/stations.txt", "w");
  write_line(out, "9998");  // header/version marker

  // Large station loop: count 0x1E5, stride 8-byte records.
  for (int i = 0; i < 0x1E5; i++) {
    rec = station_table[i];
    line = fmt("%5d,%s", rec.freq, rec.name);
    append_line(out, line);
  }
  finalize_file(out);

  // Then load/merge /user.txt if present.
  if (!file_exists_or_openable("/user.txt", "r")) {
    ui_print("no user stations");
  } else {
    // Parse comma-delimited entries and populate runtime tables.
    // Emits "Userdata found" and completion status.
    load_user_station_entries();
    ui_print("Userdata found");
  }
  ui_print(" user stations ready.");
}
```

## `0x4200B4A8` (`ETM-List`)

```c
// Range: inferred 0x4200B4A8..0x4200B710 (next entry at 0x4200B714)
void action_etm_list(void) {
  int n = etm_count();  // 0x4200340C path
  if (n <= 0) goto done;

  file_t out = open_text_file("/etm.txt", "w");

  // Header with local date/time.
  write_line(out, fmt("ETM at %02d.%02d.%d - %02d:%02d Local\n", ...));

  // Iterate ETM list/table and emit one formatted line per entry.
  for (int i = 0; i < n; i++) {
    rec = etm_entry(i);
    // Form is stable even if some fields are inferred.
    line = fmt("%02d %04X %8s %5d %3d", rec.index, rec.code, rec.name, rec.freq, rec.quality);
    append_line(out, line);
  }

  finalize_file(out);
done:
  return;
}
```

## `0x4200B714` (`Settings`)

```c
// Range: 0x4200B714..0x4200BD60 (hard end)
void action_settings(void) {
  file_t out = open_text_file("/settings.txt", "w");
  write_line(out, "9997");  // header/version marker

  // Repeated key/value emission pattern:
  //   append_key(label) -> format value from global -> append value
  emit_kv(out, "menu",        cfg.menu);
  emit_kv(out, "bandwidthSSB",cfg.bandwidth_ssb);
  emit_kv(out, "bandwidthAM", cfg.bandwidth_am);
  emit_kv(out, "bandwidthFM", cfg.bandwidth_fm);
  emit_kv(out, "stepSSB",     cfg.step_ssb);
  emit_kv(out, "stepAM",      cfg.step_am);
  emit_kv(out, "stepFM",      cfg.step_fm);
  emit_kv(out, "mode",        cfg.mode);
  emit_kv(out, "battery",     cfg.battery);
  emit_kv(out, "decoder",     cfg.decoder);
  emit_kv(out, "automute",    cfg.automute);
  emit_kv(out, "band",        cfg.band);
  emit_kv(out, "store",       cfg.store);
  emit_kv(out, "station",     cfg.station);
  emit_kv(out, "volume",      cfg.volume);
  emit_kv(out, "agcFM",       cfg.agc_fm);
  emit_kv(out, "agcAM",       cfg.agc_am);
  emit_kv(out, "agcSSB",      cfg.agc_ssb);
  emit_kv(out, "softmute",    cfg.softmute);
  emit_kv(out, "bfo",         cfg.bfo);
  emit_kv(out, "frequency",   cfg.frequency);
  emit_kv(out, "backlight",   cfg.backlight);
  emit_kv(out, "tint",        cfg.tint);
  emit_kv(out, "inverse",     cfg.inverse);
  emit_kv(out, "greyscale",   cfg.greyscale);
  emit_kv(out, "home",        cfg.home);

  // "slow" is selected via 0x4201ECC4 result compare to 240.
  emit_kv(out, "slow", speed_mode_string());

  // "seek" uses a bool byte at 0x3FC94EB1 to select one of two strings.
  emit_kv(out, "seek", seek_enabled_string());

  finalize_file(out);
}
```

## Notes

- Helper names (`open_text_file`, `append_line`, `emit_kv`) are inferred wrappers for concrete call clusters:
- `0x42013AB0`, `0x42013B28`, `0x42013B48`, `0x4201D418`, `0x4201DDC4`, `0x42046044`.
- Constants and labels are from direct `l32r` xrefs resolved in:
- `action_routines_string_xrefs_resolved.txt`.
