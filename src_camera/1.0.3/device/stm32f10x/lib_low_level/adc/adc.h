#ifndef _ADC_H_
#define _ADC_H_

#include "../lib_low_level.h"

void adc_init();

void adc_set_channel(u32 ch);
u16 adc_read();

#endif