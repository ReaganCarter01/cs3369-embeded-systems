#include "delay.h"
#include "event.h"
#include "macros.h"

#ifdef Delay

void startDelay() {
    evdelay = Delaying;
    __delay_ms(10);
    evdelay = Expired;
}

#else

void startDelay() {
    evdelay = Delaying;
    // T3 interrupt on with priority 5
    ConfigIntTimer23(T3_INT_PRIOR_5 & T3_INT_ON);
    // clear timer 2&3
    WriteTimer23(0);
    // turn timer 2&3 on with prescaler 256 and 32-bit mode
    OpenTimer23(T2_ON & T2_GATE_OFF & T2_IDLE_CON & T2_PS_1_256 & T2_SOURCE_INT & T2_32BIT_MODE_ON,
            MILLISECOND(duration));
}

void __attribute__((interrupt, auto_psv)) _T3Interrupt() {
    evdelay = Expired;
    CloseTimer23();
}

#endif