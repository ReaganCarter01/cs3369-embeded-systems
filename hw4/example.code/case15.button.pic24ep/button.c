#include <stdbool.h>
#include "Compiler.h"
// button is connected to pin D15
// when button is pressed, D15 reads high.
// when button is not pressed, D15 reads low.

bool volatile buttonPressed;

void initButton() {
    buttonPressed = false;
    TRISDbits.TRISD15 = 1;  // set input
    CNENDbits.CNIED15 = 1;  // enable interrupt
    IFS1bits.CNIF = 0;      // clear interrup flag
    IPC4bits.CNIP = 5;      // set interrupt priority
    IEC1bits.CNIE = 1;      // enable interrupt
}

void __attribute__((interrupt, auto_psv)) _CNInterrupt(void) {
    buttonPressed = (PORTDbits.RD15 == 1);
    IFS1bits.CNIF = 0;
}
