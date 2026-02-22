# SEEK/ETM pseudo-C outline

Target range: `0x42011A84..0x42013523` in `seg3_0x42000020.S`

```c
// Inferred high-level structure, not decompiled source.
void seek_etm_handler(void) {
  uint32_t t0 = tick_now();                  // 0x4201F614
  save_last_tick(t0);

  // Periodic housekeeping / one-shot notices.
  if (elapsed_ms(t0, last_notice_tick) > 1000) {
    if (pending_entries_found) {
      ui_print("-----------------");
      ui_print_count(entries_count, " entries found.");
      refresh_ui();
    }
    pending_entries_found = 0;
    if (done_flag) {
      ui_print("Done.");
      done_flag = 0;
    }
  }

  // Optional file receive path (user stations / user.txt).
  if (has_incoming_station_data()) {
    ui_print("Receiving Stations...");
    if (save_to_user_txt("/user.txt") != 0) {
      ui_print("Failed to save incoming data");
    }
  }

  // Optional reset/default-stations path.
  if (reset_stations_requested()) {
    if (reset_to_defaults_ok()) {
      ui_print("Reset to default stations done.");
    }
  }

  // Main loop/update path:
  // - scan/seek progress math
  // - lock / tunelock / tunefast / freeze / numpad status
  // - current line rendering with draw_text(...)
  update_scan_progress_and_status_lines();

  // Keycode dispatch (key byte tested against constants):
  uint8_t key = read_keycode();
  switch (key) {
    case 50:  // '2' equivalent in this firmware mapping
      draw_action_label(" Hardcopy ");
      do_hardcopy();                         // 0x42003664 + 0x42003688 path
      refresh_ui();
      break;

    case 51:
      draw_action_label(" Memories ");
      action_memories();                     // 0x4200ADD0
      wait_ms(1000);
      refresh_ui();
      break;

    case 52:
      draw_action_label(" Stations ");
      action_stations();                     // 0x4200AECC
      wait_ms(500);
      refresh_ui();
      break;

    case 53:
      draw_action_label(" ETM-List ");
      action_etm_list();                     // 0x4200B4A8
      wait_ms(500);
      refresh_ui();
      break;

    case 54:
      draw_action_label(" Settings ");
      action_settings();                     // 0x4200B714
      wait_ms(500);
      refresh_ui();
      break;

    case 66:
      draw_action_label("logfile.txt");
      action_logfile();                      // 0x4200CEFC
      wait_ms(500);
      refresh_ui();
      break;

    case 60:
      tint_mode ^= 1;
      draw_action_label(tint_mode ? " TINT " : " Normal ");
      wait_ms(500);
      refresh_ui();
      break;

    case 61:
      inverse_mode ^= 1;
      draw_action_label(inverse_mode ? " Inverse " : " Normal ");
      wait_ms(500);
      refresh_ui();
      break;

    case 62:
      grayscale_mode ^= 1;
      draw_action_label(grayscale_mode ? " GreyScale " : " Color ");
      wait_ms(500);
      refresh_ui();
      break;

    case 63:
      seek_enabled ^= 1;
      draw_action_label(seek_enabled ? " SEEK ON " : " SEEK OFF ");
      wait_ms(500);
      refresh_ui();
      break;

    case 44:
      // speed option path derives value from 0x4201ECC4 result
      draw_action_label(is_fast_mode() ? " Fast " : " Slow ");
      wait_ms(500);
      refresh_ui();
      break;

    default:
      break;
  }
}
```

## Confidence

- High confidence: keycode constants, associated labels, and called action routines.
- Medium confidence: semantic names for helper routines (`draw_action_label`, `refresh_ui`, etc.).
- Lower confidence: full pre-dispatch housekeeping semantics where data tables interleave with code.
