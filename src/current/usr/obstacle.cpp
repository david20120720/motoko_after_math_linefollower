#include "obstacle.h"

class CObstacle c_obstacle;

u8 robot_on_line()
{
	if (line_sensor_get()->on_line == LINE_SENSOR_FLAG_ON_LINE)
		return 1;
	return 0;
}


CObstacle::CObstacle()
{
	init();
}

CObstacle::~CObstacle()
{

}

void CObstacle::init()
{
	state = 0;
}

void CObstacle::process()
{
	/*
	go_forward(0, 100, NULL);
	go_forward(-60, 130, NULL);

	while (1)
	{
		__asm("nop");
	}
	*/

	if (get_mode_jumper() == 0)
	{
		go_forward(0, 100, NULL);
		rotate_robot(180);
	}
	else
	{
		go_forward(0, 50, NULL);
		go_forward(-60, 130, NULL);
		go_forward(0, 50, NULL);

		rotate_robot(90);
		go_forward(60, 250, NULL);

		rotate_robot(-90);
		go_forward(60, 350, NULL);

		rotate_robot(-90);
		go_forward(60, 50, NULL);
		go_forward(60, 250, robot_on_line);
		rotate_robot(90);
	}
}

i32 CObstacle::abs_(i32 x)
{
	if (x < 0)
		return -x;

	return x;
}


void CObstacle::rotate_robot(i32 angle)
{
	i32 gyro_angle = 0;

	float speed_max = 0.7;
	float speed = 0.0;
	float k = 0.8;

	angle = angle*1600;

	while (abs_(gyro_angle) < abs_(angle))
	{
		gyro_angle+= lsm9ds0_get()->gz;

		speed = k*speed + (1.0 - k)*speed_max;

		i32 speed_ = SPEED_MAX*speed;
		if (angle > 0)
			drv8834_run(speed_, -speed_);
		else
			drv8834_run(-speed_, speed_);

		timer_delay_ms(10);
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}

void CObstacle::go_forward(i32 speed, u32 time, u8 (*term_fun)())
{
	u32 time_stop = timer_get_time() + time;

	i32 gyro_angle = 0;

	float error = 0.0;
	float error_prev = 0.0;

	float kp = 0.0003;
	float kd = 0.001;

	float speed_ = 0.0;
	float ks = 0.8;

	if (speed != 0)
	{
		while (timer_get_time() < time_stop)
		{
			gyro_angle+= lsm9ds0_get()->gz;

			error_prev = error;
			error = 0.0 - gyro_angle;

			float dif = kp*error + kd*(error - error_prev);

			speed_ = ks*speed_ + (1.0 - ks)*speed;

			i32 speed_l = speed_ - dif;
			i32 speed_r = speed_ + dif;
			drv8834_run(speed_l, speed_r);

			timer_delay_ms(10);
			if (term_fun != NULL)
				if (term_fun() != 0)
					break;
		}
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}


void obstacle_init()
{
	c_obstacle.init();
}

void obstacle_main()
{
	c_obstacle.process();
}
