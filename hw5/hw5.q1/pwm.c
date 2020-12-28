#include "ConfigurationBits.h"

// pwm is connected to port D0

void initPWM() {
    TRISD &= 0xFFFE;
}

void pwmOn() {
    LATD |= 1;
}

void pwmOff() {
    LATD &= ~1;
}
