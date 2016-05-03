#include "usr_main.h"

#include "line_follower.h"
#include "broken_line.h"
#include "obstacle.h"
#include "q_predictor.h"

#include "error.h"
#include "robot_config.h"
#include "telemetry.h"


#define SAMPLIG_PERIOD		(u32)4
#define I2C_SAMPLIG_PERIOD	(u32)10

volatile u32 g_error;



void telemetry_thread()
{
	while (1)
	{
		telemetry_print();
		timer_delay_ms(100);
	}
}


void line_sensor_thread()
{
	u32 init_res = line_sensor_init(robot_config_get()->line_sensor_treshold, robot_config_get()->obstacle_treshold);

	if (init_res != 0)
	{
		g_error = 1;
		abort_error_(ERROR_LINE_SENSOR, init_res);
	}

 	event_timer_set_period(EVENT_TIMER_0_ID, SAMPLIG_PERIOD);


 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_0_ID);
		line_sensor_read(0);
 	}
}

void i2c_sensor_thread()
{
	u32 init_res;
	init_res = lsm9ds0_init();					/*IMU*/
	if (init_res != 0)
	{
		g_error = 1;
		abort_error_(ERROR_IMU, init_res);
	}

 	event_timer_set_period(EVENT_TIMER_1_ID, I2C_SAMPLIG_PERIOD);

 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_1_ID);
 		lsm9ds0_read();
 	}
}



void line_follower()
{
	u32 cnt = 0;

	line_follower_init();
	obstacle_init();

 	event_timer_set_period(EVENT_TIMER_2_ID, SAMPLIG_PERIOD);

	while (1)
	{
		if (
				(line_sensor_get()->obstacle == LINE_SENSOR_FLAG_OBSTACLE) &&
				(lsm9ds0_get()->ax > 8000)
			)
			obstacle_main();
		else
		if (line_sensor_get()->on_line == LINE_SENSOR_FLAG_ON_LINE)
			line_follower_main();
		else
			broken_line_main();


	 	cnt++;
	 	if ((cnt%20) == 0)
	 		led_on(LED_0);
	 	else
	 		led_off(LED_0);
	}

	drv8834_run(0, 0);
}




void main_thread()
{
	printf_(OS_WELCOME_MESSAGE);

	timer_delay_ms(300);

	g_error = 0;

	robot_config_init();

	create_thread(line_sensor_thread, line_sensor_thread_stack, sizeof(line_sensor_thread_stack), PRIORITY_MAX);
	create_thread(i2c_sensor_thread, i2c_sensor_thread_stack, sizeof(i2c_sensor_thread_stack), PRIORITY_MAX);
	create_thread(telemetry_thread, telemetry_thread_stack, sizeof(telemetry_thread_stack), PRIORITY_MAX + 20);

	broken_line_init();
	obstacle_init();
	#if CONFIG_USE_CAMERA == 1
	camera_init();
	#endif



	while (1)
	{
		if (g_error != 0)
		{
			while (1)
			{
				printf_("system aborted\n");
				timer_delay_ms(2000);
			}
		}

		if (get_key() != 0)
		{
			timer_delay_ms(1000);
			//line_follower();
			obstacle_test();
		}



		led_on(LED_0);
    timer_delay_ms(100);

    led_off(LED_0);
    timer_delay_ms(200);
	}
}
