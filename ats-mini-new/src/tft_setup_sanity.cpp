#include <TFT_eSPI.h>

// Build-time guard against accidental fallback to TFT_eSPI defaults.
#if !defined(USER_SETUP_ID) || (USER_SETUP_ID != 206)
#error "TFT setup mismatch: expected USER_SETUP_ID 206 from project tft_setup.h"
#endif

#if !defined(ST7789_DRIVER)
#error "TFT setup mismatch: expected ST7789_DRIVER"
#endif

#if !defined(TFT_PARALLEL_8_BIT)
#error "TFT setup mismatch: expected TFT_PARALLEL_8_BIT"
#endif

#if !defined(TFT_WIDTH) || (TFT_WIDTH != 170)
#error "TFT setup mismatch: expected TFT_WIDTH 170"
#endif

#if !defined(TFT_HEIGHT) || (TFT_HEIGHT != 320)
#error "TFT setup mismatch: expected TFT_HEIGHT 320"
#endif

#if !defined(TFT_CS) || (TFT_CS != 6)
#error "TFT setup mismatch: expected TFT_CS 6"
#endif

#if !defined(TFT_DC) || (TFT_DC != 7)
#error "TFT setup mismatch: expected TFT_DC 7"
#endif

#if !defined(TFT_RST) || (TFT_RST != 5)
#error "TFT setup mismatch: expected TFT_RST 5"
#endif

#if !defined(TFT_WR) || (TFT_WR != 8)
#error "TFT setup mismatch: expected TFT_WR 8"
#endif

#if !defined(TFT_RD) || (TFT_RD != 9)
#error "TFT setup mismatch: expected TFT_RD 9"
#endif

#if !defined(TFT_D0) || (TFT_D0 != 39)
#error "TFT setup mismatch: expected TFT_D0 39"
#endif

#if !defined(TFT_D7) || (TFT_D7 != 48)
#error "TFT setup mismatch: expected TFT_D7 48"
#endif
