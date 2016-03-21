#include "line_sensor.h"


#define LINE_STEP_W	64

i16 rgb_calibration_ambient[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i16 rgb_calibration_r[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i16 rgb_calibration_g[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i16 rgb_calibration_b[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i16 rgb_w[] = {
				LINE_STEP_W*1, LINE_STEP_W*2, LINE_STEP_W*3, LINE_STEP_W*4,
				LINE_STEP_W*5, LINE_STEP_W*6, LINE_STEP_W*7, LINE_STEP_W*8};

u32 line_sensor_init()
{
	u32 i, j;
	rgb_init();
	rgb_read();

	/*check correct sensor bus ID*/
	u32 rgb_error_result = 0;
	rgb_i2c_read_reg(RGB_ADDRESS,  RGB_COMMAND|RGB_ID, g_line_sensor.tmp);

	for (i = 0; i < SENSORS_COUNT; i++)
	{
		if (g_line_sensor.tmp[i] != RGB_ID_VALUE)
			rgb_error_result|=(1<<i);
	}


	for (i = 0; i < (SENSORS_COUNT-1); i++)
		g_line_sensor.raw_data_dif[i] = 0;

	g_line_sensor.state = 0;
	g_line_sensor.on_line = 0;
	g_line_sensor.flag = 0;
	g_line_sensor.line_position = 0;
	g_line_sensor.obstacle_position = 0;

	line_sensor_read(1);

	for (j = 0; j < 8; j++)
	{
		line_sensor_read(1);

		for (i = 0; i < (SENSORS_COUNT-1); i++)
		{
			rgb_calibration_ambient[i]+=  g_rgb.ambient[i];
			rgb_calibration_r[i]+=  g_rgb.r[i];
			rgb_calibration_g[i]+=  g_rgb.g[i];
			rgb_calibration_b[i]+=  g_rgb.b[i];
		}
	}

	for (i = 0; i < (SENSORS_COUNT-1); i++)
	{
		rgb_calibration_ambient[i]/= 8;
		rgb_calibration_r[i]/= 8;
		rgb_calibration_g[i]/= 8;
		rgb_calibration_b[i]/= 8;
	}

	return rgb_error_result;
}


void line_sensor_clear_flag(u8 flag)
{
	sched_off();
	g_line_sensor.flag&=~flag;
	sched_on();
}


void line_sensor_read(u8 calibration_enabled)
{
	u32 i;
	rgb_read();

	if (calibration_enabled != 0)
		return;

	//calculate obstacle position
	g_line_sensor.obstacle_position = (g_line_sensor.obstacle_position*7 + g_rgb.proximity[SENSORS_COUNT-1])/8;

	i16 average_ambient = 0;
	i16 average_r = 0;
	i16 average_g = 0;
	i16 average_b = 0;

	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	{
		g_rgb.ambient[i]-= rgb_calibration_ambient[i];
		g_rgb.r[i]-= rgb_calibration_r[i];
		g_rgb.g[i]-= rgb_calibration_g[i];
		g_rgb.b[i]-= rgb_calibration_b[i];

		average_ambient+= g_rgb.ambient[i];
		average_r+= g_rgb.r[i];
		average_g+= g_rgb.g[i];
		average_b+= g_rgb.b[i];
	}

	average_ambient/= (RGB_SENSORS_COUNT-1);
	average_r/= (RGB_SENSORS_COUNT-1);
	average_g/= (RGB_SENSORS_COUNT-1);
	average_b/= (RGB_SENSORS_COUNT-1);

	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	{
		g_rgb.ambient[i]-= average_ambient;
		g_rgb.r[i]-= average_r;
		g_rgb.g[i]-= average_g;
		g_rgb.b[i]-= average_b;

		i32 tmp = g_rgb.ambient[i];

    	if (g_rgb.r[i] < tmp)
    		 tmp = g_rgb.r[i];

    	if (g_rgb.g[i] < tmp)
    		 tmp = g_rgb.g[i];

    	if (g_rgb.b[i] < tmp)
    		 tmp = g_rgb.b[i];

    	g_line_sensor.raw_data_dif[i] = -tmp;
	}

	i32 sum = 0;
	i32 average = 0;
	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
		average+= g_line_sensor.raw_data_dif[i];

	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
		sum+= rgb_w[i]*g_line_sensor.raw_data_dif[i];

	sum = sum/average;


	if (average > LINE_SENSOR_TRESHOLD)
	{
		sum = sum - LINE_OFFSET;
		if (sum > LINE_MAX)
			sum = LINE_MAX;
		if (sum < -LINE_MAX)
			sum = -LINE_MAX;

		g_line_sensor.line_position = sum;
		g_line_sensor.on_line = IR_ON_LINE;
	}
	else
	{
		g_line_sensor.on_line = 0;
	}

}

/*
	i32 average = 0;
	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
		average+= g_rgb.ambient[i];
	average/= (RGB_SENSORS_COUNT-1);

	i32 max = 0;
    for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
     	if (g_rgb.ambient[i] > max)
    		max = g_rgb.ambient[i];

    for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
    {
    	i32 tmp = 1024;

    	if (g_rgb.r[i] < tmp)
    		 g_rgb.r[i] = tmp;

    	if (g_rgb.g[i] < tmp)
    		 g_rgb.g[i] = tmp;

    	if (g_rgb.b[i] < tmp)
    		 g_rgb.b[i] = tmp;

    	g_line_sensor.raw_data_dif[i] = (g_rgb.ambient[i] + rgb_calibration[i]) - tmp;
	}

	line_sensor_filter();
*/
