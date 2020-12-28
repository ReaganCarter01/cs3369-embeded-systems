#include "event.h"

Queue queue;

int main() {
    // initialize scheduler
    initQueue(&queue);

    while (1) {

        // queue loop
        while (!isEmpty(&queue)) {
            // get the event in queue
            uint8_t event = pop(&queue);
            // run state machine on the event
            // could use any state machine implementation
            handleEvent(event);
        }
    }

    return 0;
}
