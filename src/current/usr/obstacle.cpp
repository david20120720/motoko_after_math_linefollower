#include "obstacle.h"


u8 robot_on_line();
class CRobot *g_robot;


CObstacle::CObstacle()
{
	init(NULL);
}

CObstacle::~CObstacle()
{

}

void CObstacle::init(class CRobot *robot_)
{
	if (robot_ == NULL)
		return;

	state = 0;
	this->robot = robot_;
	g_robot = robot_;

}

void CObstacle::process()
{

	/*
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
		//go_forward(60, 250, robot_on_line);
		go_forward(60, 250, NULL);
		rotate_robot(90);
	}
	*/

	go_forward(0, 50, NULL);
	go_forward_encoder(-50, 30, NULL);

	rotate_robot(90);
	go_forward_encoder(80, 270, NULL);

	rotate_robot(-90);
	go_forward_encoder(80, 350, NULL);

	rotate_robot(-90);
	go_forward_encoder(80, 300, robot_on_line);

	rotate_robot(90);
}

i32 CObstacle::abs_(i32 x)
{
	if (x < 0)
		return -x;

	return x;
}


void CObstacle::rotate_robot(i32 angle)
{
	angle = (angle*900)/90;
	//angle = (angle*1100)/90;

	float speed_max = 0.4;
	float ks = speed_max/10.0;


	this->robot->reset_imu();

	float speed_dif = 0.0;
	while (abs_(robot->get_imu_sensor()->yaw) < abs_(angle))
	{
		speed_dif+= ks;
		if (speed_dif > speed_max)
			speed_dif = speed_max;


		i32 speed_ = SPEED_MAX*speed_dif;
		if (angle > 0)
			robot->set_motors(speed_, -speed_);
		else
			robot->set_motors(-speed_, speed_);

		timer_delay_ms(10);
	}

	robot->set_motors(0, 0);
	timer_delay_ms(200);
}

void CObstacle::go_forward(i32 speed, u32 time, u8 (*term_fun)())
{
	u32 time_stop = timer_get_time() + time;

	i32 gyro_angle = 0;

	float error = 0.0;
	float error_prev = 0.0;

	float kp = 0.03;
	float kd = 0.1;

	float speed_ = 0.0;
	float ks = 0.8;

	float sgn = 1.0;
	if (speed < 0.0)
	{
		speed = -speed;
		sgn = -1.0;
	}

	this->robot->reset_imu();


	if (speed != 0)
	{
		while (timer_get_time() < time_stop)
		{
			gyro_angle = robot->get_imu_sensor()->yaw;

			error_prev = error;
			error = 0.0 - gyro_angle;

			float dif = kp*error + kd*(error - error_prev);

			speed_ = ks*speed_ + (1.0 - ks)*speed;

			if (speed_ < speed)
				speed_+= ks;

			i32 speed_l = sgn*speed_ - dif;
			i32 speed_r = sgn*speed_ + dif;
			robot->set_motors(speed_l, speed_r);

			if (term_fun != NULL)
				if (term_fun() != 0)
					break;

			timer_delay_ms(10);
		}
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}





void CObstacle::go_forward_encoder(i32 speed, u32 distance, u8 (*term_fun)())
{
	i32 gyro_angle = 0;

	float error = 0.0;
	float error_prev = 0.0;

	float kp = 0.03;
	float kd = 0.1;

	float speed_ = 0.0;
	float ks = 1.4;

	float sgn = 1.0;
	if (speed < 0)
	{
		speed = -speed;
		sgn = -1.0;
	}

	this->robot->reset_imu();


	u32 distance_end = encoder_get_distance() + distance;

	if (speed != 0)
	{
		while (encoder_get_distance() < distance_end)
		{
			gyro_angle = robot->get_imu_sensor()->yaw;

			error_prev = error;
			error = 0.0 - gyro_angle;

			float dif = kp*error + kd*(error - error_prev);

			if (speed_ < speed)
				speed_+= ks;

			i32 speed_l = sgn*speed_ - dif;
			i32 speed_r = sgn*speed_ + dif;
			robot->set_motors(speed_l, speed_r);

			if (term_fun != NULL)
				if (term_fun() != 0)
					break;

			timer_delay_ms(10);
		}
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}



void CObstacle::test()
{
	/*
	go_forward_encoder(50, 300, NULL);
	rotate_robot(90);

	go_forward_encoder(50, 300, NULL);
	rotate_robot(90);

	go_forward_encoder(50, 300, NULL);
	rotate_robot(90);

	go_forward_encoder(50, 300, NULL);
	rotate_robot(90);
*/


	go_forward(0, 50, NULL);
	go_forward_encoder(-50, 30, NULL);

	rotate_robot(90);
	go_forward_encoder(80, 270, NULL);

	rotate_robot(-90);
	go_forward_encoder(80, 350, NULL);

	rotate_robot(-90);
	go_forward_encoder(80, 300, robot_on_line);

	rotate_robot(90);

}


u8 robot_on_line()
{
	if (g_robot->get_line_position_sensor()->on_line == ROBOT_LINE_SENSOR_FLAG_ON_LINE)
		return 1;
	return 0;
}
