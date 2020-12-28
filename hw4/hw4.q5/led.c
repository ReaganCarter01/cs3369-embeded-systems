#include <stdint.h>
#include "Compiler.h"

// leds are connected to port D1..3

void initLeds() {
    TRISD &= 0xFFF1;
}

void ledOn(uint8_t sel) {
    LATD |= 1<<(sel+1);
}

void ledOff(uint8_t sel) {
    LATD &= ~(1<<(sel+1));
}

void ledToggle(uint8_t sel) {
    LATD ^= (1<<(sel+1));
}

void ledSet(uint8_t val) {
    LATD = (LATD & 0xFFF1) | ((val & 0x7) <<1);
}
