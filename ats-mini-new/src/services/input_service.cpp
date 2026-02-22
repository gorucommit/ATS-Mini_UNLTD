#include <Arduino.h>

#include "../../include/app_config.h"
#include "../../include/app_services.h"
#include "../../include/hardware_pins.h"

namespace services::input {
namespace {

constexpr uint8_t kDirCw = 0x10;
constexpr uint8_t kDirCcw = 0x20;

constexpr uint8_t kRStart = 0x0;
constexpr uint8_t kRCwFinal = 0x1;
constexpr uint8_t kRCwBegin = 0x2;
constexpr uint8_t kRCwNext = 0x3;
constexpr uint8_t kRCcwBegin = 0x4;
constexpr uint8_t kRCcwFinal = 0x5;
constexpr uint8_t kRCcwNext = 0x6;
constexpr uint32_t kEncoderAccelResetMs = 350;
constexpr uint8_t kAccelerationFactors[] = {1, 2, 4, 8, 16};
constexpr int16_t kMaxRawBufferedDelta = 16;
constexpr int16_t kMaxAccelBufferedDelta = 96;
constexpr int16_t kMaxConsumedDelta = 96;

// Full-step decoder table from the well-known Ben Buxton rotary state machine.
constexpr uint8_t kRotaryTable[7][4] = {
    {kRStart, kRCwBegin, kRCcwBegin, kRStart},
    {kRCwNext, kRStart, kRCwFinal, kRStart | kDirCw},
    {kRCwNext, kRCwBegin, kRStart, kRStart},
    {kRCwNext, kRCwBegin, kRCwFinal, kRStart},
    {kRCcwNext, kRStart, kRCcwBegin, kRStart},
    {kRCcwNext, kRCcwFinal, kRStart, kRStart | kDirCcw},
    {kRCcwNext, kRCcwFinal, kRCcwBegin, kRStart},
};

volatile int16_t g_encoderDelta = 0;
volatile int16_t g_encoderDeltaAccel = 0;
volatile uint8_t g_rotaryState = kRStart;
volatile bool g_abortRequested = false;
volatile bool g_rotateWhileHeld = false;

uint32_t g_lastEncoderTime = 0;
uint32_t g_speedFilter = kEncoderAccelResetMs;
int8_t g_lastDir = 0;
uint8_t g_accelerationIndex = 0;

bool g_initialized = false;

uint8_t g_lastRawButtonState = HIGH;
uint8_t g_stableButtonState = HIGH;
uint32_t g_lastDebounceMs = 0;
uint32_t g_pressStartMs = 0;
bool g_longSent = false;
bool g_veryLongSent = false;

uint8_t g_pendingClicks = 0;
uint32_t g_lastClickReleaseMs = 0;
uint32_t g_multiClickWindowMs = app::kMultiClickWindowMs;

bool g_singleClick = false;
bool g_doubleClick = false;
bool g_tripleClick = false;
bool g_longPress = false;
bool g_veryLongPress = false;

int16_t clampEncoderDelta(int16_t value, int16_t limit) {
  if (value > limit) {
    return limit;
  }
  if (value < -limit) {
    return static_cast<int16_t>(-limit);
  }
  return value;
}

int16_t accelerateEncoder(int8_t dir) {
  const uint32_t now = millis();
  const uint32_t elapsed = now - g_lastEncoderTime;

  // Reset on direction change or timeout.
  if (dir != g_lastDir || elapsed > kEncoderAccelResetMs) {
    g_accelerationIndex = 0;
  }

  // Smoothing filter.
  g_speedFilter = (g_speedFilter * 3U + elapsed) / 4U;

  // Lookup acceleration factor.
  if (g_speedFilter < 25U) {
    g_accelerationIndex = 4;
  } else if (g_speedFilter < 35U) {
    g_accelerationIndex = 3;
  } else if (g_speedFilter < 45U) {
    g_accelerationIndex = 2;
  } else if (g_speedFilter < 60U) {
    g_accelerationIndex = 1;
  } else {
    g_accelerationIndex = 0;
  }

  g_lastEncoderTime = now;
  g_lastDir = dir;

  return static_cast<int16_t>(dir * static_cast<int16_t>(kAccelerationFactors[g_accelerationIndex]));
}

void IRAM_ATTR onEncoderChange() {
  const uint8_t pinState = (digitalRead(hw::kPinEncoderB) << 1) | digitalRead(hw::kPinEncoderA);
  g_rotaryState = kRotaryTable[g_rotaryState & 0x0F][pinState];
  const uint8_t emit = g_rotaryState & 0x30;

  if (emit == kDirCw || emit == kDirCcw) {
    const int8_t dir = emit == kDirCw ? 1 : -1;
    const int16_t accelDelta = accelerateEncoder(dir);

    g_encoderDelta = clampEncoderDelta(static_cast<int16_t>(g_encoderDelta + dir), kMaxRawBufferedDelta);
    g_encoderDeltaAccel = clampEncoderDelta(static_cast<int16_t>(g_encoderDeltaAccel + accelDelta), kMaxAccelBufferedDelta);

    g_abortRequested = true;
    if (digitalRead(hw::kPinEncoderButton) == LOW) {
      g_rotateWhileHeld = true;
    }
  }
}

void finalizeClicksIfReady() {
  if (g_pendingClicks == 0) {
    return;
  }

  if (millis() - g_lastClickReleaseMs < g_multiClickWindowMs) {
    return;
  }

  if (g_pendingClicks >= 3) {
    g_tripleClick = true;
  } else if (g_pendingClicks == 2) {
    g_doubleClick = true;
  } else {
    g_singleClick = true;
  }

  g_pendingClicks = 0;
}

void setButtonState(uint8_t newState) {
  g_stableButtonState = newState;

  if (newState == LOW) {
    g_pressStartMs = millis();
    g_longSent = false;
    g_veryLongSent = false;
    g_rotateWhileHeld = false;
    g_abortRequested = true;
    return;
  }

  const uint32_t heldMs = millis() - g_pressStartMs;
  if (!g_rotateWhileHeld && !g_longSent && !g_veryLongSent && heldMs > 35) {
    if (g_pendingClicks < 3) {
      ++g_pendingClicks;
    }
    g_lastClickReleaseMs = millis();
  }
}

void updateButton() {
  const uint8_t rawState = digitalRead(hw::kPinEncoderButton);
  if (rawState != g_lastRawButtonState) {
    g_lastRawButtonState = rawState;
    g_lastDebounceMs = millis();
  }

  if ((millis() - g_lastDebounceMs) > app::kInputDebounceMs && rawState != g_stableButtonState) {
    setButtonState(rawState);
  }

  if (g_stableButtonState == LOW) {
    if (g_rotateWhileHeld) {
      return;
    }

    const uint32_t heldMs = millis() - g_pressStartMs;

    if (!g_longSent && heldMs >= app::kLongPressMs) {
      g_longSent = true;
      g_longPress = true;
    }

    if (!g_veryLongSent && heldMs >= app::kVeryLongPressMs) {
      g_veryLongSent = true;
      g_veryLongPress = true;
    }
  }

  finalizeClicksIfReady();
}

}  // namespace

bool begin() {
  pinMode(hw::kPinEncoderA, INPUT_PULLUP);
  pinMode(hw::kPinEncoderB, INPUT_PULLUP);
  pinMode(hw::kPinEncoderButton, INPUT_PULLUP);

  g_lastRawButtonState = digitalRead(hw::kPinEncoderButton);
  g_stableButtonState = g_lastRawButtonState;

  attachInterrupt(digitalPinToInterrupt(hw::kPinEncoderA), onEncoderChange, CHANGE);
  attachInterrupt(digitalPinToInterrupt(hw::kPinEncoderB), onEncoderChange, CHANGE);

  g_initialized = true;
  Serial.println("[input] initialized");
  return true;
}

void tick() {
  if (!g_initialized) {
    return;
  }

  updateButton();
}

int8_t consumeEncoderDelta() {
  noInterrupts();
  int16_t delta = g_encoderDeltaAccel;
  g_encoderDelta = 0;
  g_encoderDeltaAccel = 0;
  interrupts();

  delta = clampEncoderDelta(delta, kMaxConsumedDelta);

  return static_cast<int8_t>(delta);
}

bool consumeSingleClick() {
  const bool pressed = g_singleClick;
  g_singleClick = false;
  return pressed;
}

bool consumeDoubleClick() {
  const bool pressed = g_doubleClick;
  g_doubleClick = false;
  return pressed;
}

bool consumeTripleClick() {
  const bool pressed = g_tripleClick;
  g_tripleClick = false;
  return pressed;
}

bool consumeLongPress() {
  const bool pressed = g_longPress;
  g_longPress = false;
  return pressed;
}

bool consumeVeryLongPress() {
  const bool pressed = g_veryLongPress;
  g_veryLongPress = false;
  if (pressed) {
    g_longPress = false;
  }
  return pressed;
}

bool isButtonHeld() { return g_stableButtonState == LOW; }

void setMultiClickWindowMs(uint32_t windowMs) {
  if (windowMs < 120) {
    windowMs = 120;
  }
  g_multiClickWindowMs = windowMs;
}

void clearAbortRequest() {
  noInterrupts();
  g_abortRequested = false;
  interrupts();
}

bool consumeAbortRequest() {
  // During seek, allow hold-to-cancel regardless of debounce stage.
  if (digitalRead(hw::kPinEncoderButton) == LOW) {
    return true;
  }

  return consumeAbortEventRequest();
}

bool consumeAbortEventRequest() {
  noInterrupts();
  const bool abortRequested = g_abortRequested;
  g_abortRequested = false;
  interrupts();

  return abortRequested;
}

}  // namespace services::input
