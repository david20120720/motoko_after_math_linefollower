#include "usr_main.h"

#include "../lib_usr/line_sensor.h"
#include "../lib_usr/lsm9ds0.h"
#include "../lib_usr/l3g4200.h"
#include "../lib_usr/hmc5883.h"
#include "../lib_usr/camera.h"

#include "../lib_usr/math.h"

#include "line_follower.h"
#include "broken_line.h"
#include "obstacle.h"
#include "q_predictor.h"

#include "test.h"

#define SAMPLIG_PERIOD		(u32)4
#define I2C_SAMPLIG_PERIOD	(u32)20

void line_sensor_thread()
{
	line_sensor_init();

 	event_timer_set_period(EVENT_TIMER_0_ID, SAMPLIG_PERIOD);


 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_0_ID);
		line_sensor_read();
 	}
}

void i2c_sensor_thread()
{
	#ifdef USE_LSM9DS0
	lsm9ds0_init();					/*IMU*/
	#endif

	#ifdef USE_L3G4200
	l3g4200_init();					/*gyro*/
	#endif

	#ifdef USE_HMC5883
	hmc5883_init();					/*compass*/
	#endif


 	event_timer_set_period(EVENT_TIMER_1_ID, I2C_SAMPLIG_PERIOD);

 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_1_ID);

		#ifdef USE_LSM9DS0
 		lsm9ds0_read();
		#endif

		#ifdef USE_L3G4200
		l3g4200_read();
		#endif

		#ifdef USE_HMC5883
		hmc5883_read();
		#endif
 	}
}



void line_follower()
{
	u32 cnt = 0;

	line_follower_init();

 	event_timer_set_period(EVENT_TIMER_2_ID, SAMPLIG_PERIOD);

	u32 time_stop = timer_get_time() + 100*1000;

	while (1)
	{
		event_timer_wait(EVENT_TIMER_2_ID);

		if (g_line_sensor.obstacle_position > OBSTACLE_SENSOR_TRESHOLD)
			obstacle_main();
		else
		if (g_line_sensor.on_line == IR_ON_LINE)
			line_follower_main();
		else
			broken_line_main();


	 	cnt++;
	 	if ((cnt%20) == 0)
	 		led_on(LED_0);
	 	else
	 		led_off(LED_0);

		if (time_stop < timer_get_time())
			break;
	}

	drv8834_run(0, 0);
}


void main_thread()
{
	printf_(OS_WELCOME_MESSAGE);

	create_thread(line_sensor_thread, line_sensor_thread_stack, sizeof(line_sensor_thread_stack), PRIORITY_MAX);
	create_thread(i2c_sensor_thread, i2c_sensor_thread_stack, sizeof(i2c_sensor_thread_stack), PRIORITY_MAX);



	// sensor_test();

	broken_line_init();
	obstacle_init();

	while (1)
	{
		if (get_key() != 0)
		{
			timer_delay_ms(1000);

			rotation_test();
			//line_follower();

			/*
			q_predictor_init();
			while (1)
			{
				q_predictor_print();

				led_on(LED_0);
				timer_delay_ms(100);

				led_off(LED_0);
				timer_delay_ms(200);
			}
			*/
		}

		q_predictor_print();


		led_on(LED_0);
    timer_delay_ms(100);

    led_off(LED_0);
    timer_delay_ms(200);
	}
}
