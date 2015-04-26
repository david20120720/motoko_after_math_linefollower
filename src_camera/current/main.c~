#include "device/device.h"
#include "lib_usr/stdio.h"

#include "lib_usr/sh1106.h"
#include "lib_usr/i2c_slave.h"


#define CAMERA_ADDRESS 				0xF0

#define CAMERA_STATE 				0x01
#define CAMERA_LINE_POSITION 		0x02






int main(void) 
{
	lib_low_level_init();

	led_on(LED_IR);

	// LCD_SH1106_init();

	line_camera_init();

	led_on(LED_1);

	u32 cnt = 0;
	while (1)
	{

		if (getc_() == 'r')
		{
			line_position_calc();
			printf_(">%i %i", g_line_camera.line_state, g_line_camera.line_position);
			putc_(10);
			putc_(13);
			putc_(0);

			cnt++;
			if ((cnt%10) == 0) 
				led_on(LED_1);
			else
				led_off(LED_1);
		}
	}

	/*
	u32 i;

	u32 cnt = 0;
	while (1)
	{ 
		       while (g_line_camera.flag == 0)
	        {
	        	__asm("nop");
	        	__asm("nop");
	        	__asm("nop");
	        }
	    g_line_camera.flag = 0;
		i32 average = 0;
		for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
		{
			average+= g_line_camera.pixels[i];
		}
		average/= LINE_CAMERA_PIXELS_COUNT;

		if ((cnt%10) == 0)
		{
			for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
				printf_("%i ", g_line_camera.pixels[i]);
			printf_("\n\n");
		}

		LCD_SH1106_clear_buffer(0);

		for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
		{
			i32 tmp = 32 + (g_line_camera.pixels[LINE_CAMERA_PIXELS_COUNT-1-i])/16; //map(0, 4096, 0, 63, g_line_camera.pixels[i]);

			if (tmp < 0)
				tmp = 0;

			if (tmp > 63)
				tmp = 63;

			LCD_SH1106_set_pixel(i, tmp, 1);
		}

			LCD_SH1106_flush_buffer();

		if ((cnt%10) == 0)
			led_on(LED_1);
		else
			led_off(LED_1);

		cnt++;
	} 
 	*/


	return 0;
}
