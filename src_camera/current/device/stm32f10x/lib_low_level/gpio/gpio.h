#ifndef _GPIO_H_
#define _GPIO_H_

#include "../lib_low_level.h"
#include "stm32f10x_gpio.h"

/*on GPIOB */
#define LED_1	(1<<15)

/*on GPIOA */
#define LED_IR	(1<<8)


void gpio_init();
void led_on(u32 led);
void led_off(u32 led);


#endif