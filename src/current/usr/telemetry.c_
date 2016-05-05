#include "telemetry.h"
#include "robot_config.h"

void telemetry_print()
{
	u32 i;
	printf_(">>>L ");
	printf_("%i %i %i %i %i %i",
				line_sensor_get()->on_line,
				line_sensor_get()->line_position,
				line_sensor_get()->line_sensor_treshold,

				line_sensor_get()->obstacle,
				line_sensor_get()->obstacle_position,
				line_sensor_get()->obstacle_treshold
			);
	printf_("\n\n");

	printf_(">>>I ");
	printf_("%i %i %i ", lsm9ds0_get()->gx, lsm9ds0_get()->gy, lsm9ds0_get()->gz);
	printf_("%i %i %i ", lsm9ds0_get()->mx, lsm9ds0_get()->my, lsm9ds0_get()->mz);
	printf_("%i %i %i ", lsm9ds0_get()->ax, lsm9ds0_get()->ay, lsm9ds0_get()->az);
	printf_("%i %i %i ", lsm9ds0_get()->roll, lsm9ds0_get()->pitch, lsm9ds0_get()->yaw);
	printf_("\n\n");


	printf_(">>S ");

	for (i = 0; i < LINE_SENSORS_COUNT; i++)
		printf_("%i ", line_sensor_get()->raw_data_dif[i]);

	for (i = 0; i < LINE_SENSORS_COUNT; i++)
		printf_("%i ", rgb_get()->ambient[i]);

	for (i = 0; i < LINE_SENSORS_COUNT; i++)
		printf_("%i ", rgb_get()->r[i]);

	for (i = 0; i < LINE_SENSORS_COUNT; i++)
		printf_("%i ", rgb_get()->g[i]);

	for (i = 0; i < LINE_SENSORS_COUNT; i++)
		printf_("%i ", rgb_get()->b[i]);

	printf_("\n\n");


	printf_(">>C ");

	printf_("%i %i %i ", robot_config_get()->line_sensor_treshold, robot_config_get()->obstacle_treshold, robot_config_get()->use_predictor);
	printf_("%i %i %i %i ",
					(i32)(1000*robot_config_get()->kp),
					(i32)(1000*robot_config_get()->ki),
					(i32)(1000*robot_config_get()->kd),
					(i32)(1000*robot_config_get()->kd2));

	printf_("%i %i %i %i ",
					(i32)(1000*robot_config_get()->ks1),
					(i32)(1000*robot_config_get()->ks2),
					(i32)(1000*robot_config_get()->speed_min),
					(i32)(1000*robot_config_get()->speed_max));

	printf_("%i %i ", robot_config_get()->line_search_time, robot_config_get()->line_search_speed);

	printf_("\n\n");
}

/*
void imu_test()
{
	float roll = 0.0;
	float pitch = 0.0;
	float yaw = 0.0, yaw_ofs = 0.0;;

	u32 dt = 10;

	u32 i, max = 100;
	for (i = 0; i < max; i++)
	{
		yaw_ofs+= g_lsm9ds0_imu.gz;
		timer_delay_ms(dt);
	}

	yaw_ofs/= max;

	while (1)
	{
		led_on(LED_0);

		roll = m_atan2(g_lsm9ds0_imu.ay, m_sqrt(g_lsm9ds0_imu.ax*g_lsm9ds0_imu.ax + g_lsm9ds0_imu.az*g_lsm9ds0_imu.az));
		pitch = m_atan2(g_lsm9ds0_imu.ax, m_sqrt(g_lsm9ds0_imu.ay*g_lsm9ds0_imu.ay + g_lsm9ds0_imu.az*g_lsm9ds0_imu.az));
		yaw+= (g_lsm9ds0_imu.gz - yaw_ofs)*(dt/1000.0)*0.0003; // *(90.0/272063.0);

		printf_("%i %i %i\n", (i32)(roll*180.0/PI_), (i32)(pitch*180.0/PI_), (i32)(yaw*180.0/PI_) );

		led_off(LED_0);

		timer_delay_ms(dt);
	}
}

void camera_test()
{
	camera_init();

	while (1)
	{
		led_on(LED_0);

		u32 timer_start = timer_get_time();
		camera_read();
		u32 timer_stop = timer_get_time();

		u32 i;
		for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
				printf_("%i", g_camera.pixels[i]);
		printf_(" > %i %i %i %u\n", g_camera.flag, g_camera.average, g_camera.line_position, timer_stop - timer_start);
		led_off(LED_0);

		timer_delay_ms(200);
	}
}
*/
