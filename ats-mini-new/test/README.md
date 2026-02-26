# Test Strategy (Current)

This folder does not yet contain automated tests.

Current validation is primarily:

- compile/build checks (PlatformIO and/or Arduino CLI)
- hardware smoke tests on device (boot, tune, seek/scan, UI input, RDS, settings persistence)

Planned future additions:

- unit-style logic tests for band/step/grid math and UI state transitions
- host-side tests for sanitization/migration logic in `settings_service`
