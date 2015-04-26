#include "i2c_slave.h"

#define I2C_SLAVE_GPIO 	GPIOB
#define I2C_SLAVE_SCL 	(6)
#define I2C_SLAVE_SDA 	(7)


#define I2C_SLAVE_READ 		1
#define I2C_SLAVE_WRITE 	0

void i2c_slave_start_wait()
{
	u32 state = 0;
	while (1)
	{
		u32 input = I2C_SLAVE_GPIO->IDR;

		switch (state)
		{
			case 0:
					if (
						(input&I2C_SLAVE_SCL) &&
						((input&I2C_SLAVE_SDA) == 0)
		   			   )
							state = 1;
						break;

			case 1:
					if (
						((input&I2C_SLAVE_SCL) == 0) &&
						((input&I2C_SLAVE_SDA) == 0)
		   			   )
						{
							state = 0;
							return;
						}
						break;
		}
	}
}

u8 i2c_byte_read()
{
	u8 res = 0;
	u32 i;


	I2C_SLAVE_GPIO->CRL&=~(0x0f<<(I2C_SLAVE_SDA*4));
    I2C_SLAVE_GPIO->CRL|= 1<<(2+I2C_SLAVE_SDA*4);    /*pin as input*/

	for (i = 0; i < 8; i++)
	{
		while ((I2C_SLAVE_GPIO->IDR&I2C_SLAVE_SCL) == 0)
			__asm("nop");

		res<<=1;
		if (I2C_SLAVE_GPIO->IDR&I2C_SLAVE_SDA)
			res|= 0x01;

		while ((I2C_SLAVE_GPIO->IDR&I2C_SLAVE_SCL) != 0)
			__asm("nop");
	}

	return res;
}

void i2c_byte_write(u8 byte)
{
	u32 i;


	for (i = 0; i < 8; i++)
	{
		while ((I2C_SLAVE_GPIO->IDR&I2C_SLAVE_SCL) != 0)
			__asm("nop");

		if (byte&0x80)
		{
	    	I2C_SLAVE_GPIO->CRL&=~(0x0f<<(I2C_SLAVE_SDA*4));
    		I2C_SLAVE_GPIO->CRL|= 1<<(2+I2C_SLAVE_SDA*4);    /*pin as input*/
		}
		else
		{
			I2C_SLAVE_GPIO->BRR = 1<<I2C_SLAVE_SDA;       /*pin to 0*/
    		I2C_SLAVE_GPIO->CRL&=~(0x0f<<(I2C_SLAVE_SDA*4));
    		I2C_SLAVE_GPIO->CRL|= 1<<(I2C_SLAVE_SDA*4);    /*pin as output*/
		}
		byte<<=1;
	}

	while ((I2C_SLAVE_GPIO->IDR&I2C_SLAVE_SCL) != 0)
		__asm("nop");

	I2C_SLAVE_GPIO->CRL&=~(0x0f<<(I2C_SLAVE_SDA*4));
    I2C_SLAVE_GPIO->CRL|= 1<<(2+I2C_SLAVE_SDA*4);    /*pin as input*/
}


void i2c_slave_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;
 
    GPIO_InitStructure.GPIO_Pin = (1<<I2C_SLAVE_SDA)|(1<<I2C_SLAVE_SCL);
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

	u32 i;

	for (i = 0; i < I2C_SLAVE_REGS_COUNT; i++)
		g_i2c_slave.regs[i] = 0x00;

	g_i2c_slave.regs[1] = 161;
	g_i2c_slave.regs[2] = 123;
	
	g_i2c_slave.reg_adr = 0;
}


void i2c_slave_pool(u8 i2c_dev_adr)
{
	u32  state = 0;

	while (1)
	{
		i2c_slave_start_wait();

		u8 tmp = i2c_byte_read();

		if ((tmp&0xFE) != i2c_dev_adr)
			continue;

		if (tmp&1)
			state = I2C_SLAVE_READ;
		else
			state = I2C_SLAVE_WRITE;


		if (state == I2C_SLAVE_WRITE)
		{
			g_i2c_slave.reg_adr = i2c_byte_read();
			if (g_i2c_slave.reg_adr > I2C_SLAVE_REGS_COUNT)
				g_i2c_slave.reg_adr = 0;
			continue;
		}

		if (state == I2C_SLAVE_READ)
		{
			i2c_byte_write(g_i2c_slave.regs[g_i2c_slave.reg_adr]);
			continue;
		}
	}
}