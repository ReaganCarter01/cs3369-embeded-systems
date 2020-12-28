#ifndef DELAY_H
#define	DELAY_H

#define FCY 4000000UL
#include <libpic30.h>
#include <timer.h>

#define duration 10 // millisecond
#define MILLISECOND(x) ((FCY / 1000 * (x)) >> 8)

void startDelay();

#endif	/* DELAY_H */

