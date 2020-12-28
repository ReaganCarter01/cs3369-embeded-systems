#include <stdbool.h>
#include "Compiler.h"
#include "ConfigurationBits.h"
#include "led.h"

#include "delay.h"
#include "button.h"

#include "event.h"
#include "state.h"
#include "macros.h"


Event_Button volatile evbutton;
Event_Delay volatile evdelay;

int main() {
    initLeds();
    initButton();

    State st = S0_Released;
    evbutton = Released;
    evdelay = Expired;
    
    while (1) {

        #ifdef Polling
        pollButton();
        #endif

        // state machine here
        
    }

    return 0;
}
