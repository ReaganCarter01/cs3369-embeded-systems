/* 
 * File:   led.h
 * Author: qijun
 *
 * Created on September 7, 2015, 10:55 AM
 */

#ifndef LED_H
#define	LED_H

#include <stdint.h>

void initLeds();

void ledOn(uint8_t sel);

void ledOff(uint8_t sel);

void ledToggle(uint8_t sel);

void ledSet(uint8_t val);

#endif	/* LED_H */
