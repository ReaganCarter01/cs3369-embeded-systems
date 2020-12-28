#include <stdbool.h>
#include "timerint.h"
#include "pwm.h"
#include "libpic30.h"

int main() {

    initPWM();

    configureTimer(period);
    timerFired = false;

    while (1) {
        if (timerFired) {
            timerFired = false;
            pwmOn();
            __delay_ms(duty);
            pwmOff();
        }
    }

    return 0;
}
