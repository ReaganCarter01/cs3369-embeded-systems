#ifndef TIMERINT_H
#define	TIMERINT_H

#define TimerInt

#define FCY 4000000UL
#include <timer.h>

extern bool volatile timerFired;
#define period 20 // millisecond
#define duty 4 // millisecond
#define MILLISECOND(x) ((FCY / 1000 * (x)) >> 8)

void configureTimer(unsigned long duration);

#endif	/* TIMERINT_H */
