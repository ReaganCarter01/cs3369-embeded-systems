#define FCY 4000000UL
#include <libpic30.h>
#include <stdbool.h>
#include "Compiler.h"
#include "ConfigurationBits.h"
#include "led.h"
#include "button.h"

int main() {
    initLeds();
    initButton();

    bool wasPressed = false;

    while (1) {
        if (!wasPressed && buttonPressed) {
            ledOn(1);
            __delay_ms(10);
            wasPressed = true;
        } else if (wasPressed && !buttonPressed) {
            ledOff(1);
            __delay_ms(10);
            wasPressed = false;
        }
    }

    return 0;
}
