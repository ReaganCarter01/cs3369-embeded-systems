#include "Compiler.h"
#include "event.h"
#include "macros.h"

// button is connected to pin D15
// when button is pressed, D15 reads high.
// when button is not pressed, D15 reads low.

#ifdef Polling

void initButton() {
    TRISDbits.TRISD15 = 1;  // set input
}

void pollButton() {
    if (PORTDbits.RD15 == 1) evbutton = Pressed;
    else evbutton = Released;
}

#else

void initButton() {
    TRISDbits.TRISD15 = 1;  // set input
    CNENDbits.CNIED15 = 1;  // enable interrupt
    IFS1bits.CNIF = 0;      // clear interrup flag
    IPC4bits.CNIP = 5;      // set interrupt priority
    IEC1bits.CNIE = 1;      // enable interrupt
}

void __attribute__((interrupt, auto_psv)) _CNInterrupt(void) {
    // read status of pin D15
    if (PORTDbits.RD15 == 1) evbutton = Pressed;
    else evbutton = Released;
    // clear interrup flag
    IFS1bits.CNIF = 0;
}

#endif
