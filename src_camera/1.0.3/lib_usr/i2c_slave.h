#ifndef _I2C_SLAVE_H_
#define _I2C_SLAVE_H_

#include "../device/device.h"



#define I2C_SLAVE_REGS_COUNT 	3

struct sI2CSlave
{
	u32 reg_adr;
	u8 regs[I2C_SLAVE_REGS_COUNT];
};

struct sI2CSlave g_i2c_slave;

void i2c_slave_init();


#endif