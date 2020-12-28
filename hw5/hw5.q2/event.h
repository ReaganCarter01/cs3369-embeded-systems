#ifndef EVENT_H
#define	EVENT_H

#include <stdbool.h>
#include <stdint.h>

typedef enum {
    E0 = 0u,
    E1 = 1u,
    E2 = 2u,
    E3 = 3u,
    END = 255u,
} Event;

#define QLEN (4) // the lenght of queue, must known in application design
typedef struct {
    uint8_t curEvent; // the first event of queue
    uint8_t q[QLEN];
} Queue;

extern Queue queue;

bool isEmpty(Queue* que);
void initQueue(Queue* que);
uint8_t pop(Queue* que);
void append(Queue* que, uint8_t ev);

#endif	/* EVENT_H */

