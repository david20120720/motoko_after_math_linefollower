#include "line_follower.h"
#include "q_predictor.h"

class CLineFollower c_line_follower;
class CQPredictor c_q_predictor;

CLineFollower::CLineFollower()
{
	init();
}

CLineFollower::~CLineFollower()
{

}

void CLineFollower::init()
{
	base_speed = 0.0;
	dif_speed = 0.0;

	pid_init(&line_pid, SPEED_MAX,
						robot_config_get()->kp,
						robot_config_get()->ki,
						robot_config_get()->kd,
						robot_config_get()->kd2);

}


void CLineFollower::process()
{
	float line_position = (1.0*line_sensor_get()->line_position)/LINE_MAX;

	float required_position;


	#if CONFIG_USE_PREDICTOR == 1
	required_position = 0.3*c_q_predictor.process(line_position);
	#else
	required_position = 0.0;		//line center
	#endif


	float error = required_position - line_position;


	float ks1 = robot_config_get()->ks1;
	float ks2 = robot_config_get()->ks2;
	float error_ = m_abs(error);

	#if CONFIG_USE_CAMERA == 1
	camera_read();
	if (g_camera.flag == 0)
	{
	 	error_ = 1.0;
	}
	#endif


	base_speed = m_min(base_speed + ks1*(1.0 - error_), 1.0 - ks2*error_);
	base_speed = m_saturate(base_speed, robot_config_get()->speed_min, robot_config_get()->speed_max);

	dif_speed = pid_process(&line_pid, error);

	i32 motor_right = (base_speed - dif_speed)*SPEED_MAX;
	i32 motor_left = (base_speed + dif_speed)*SPEED_MAX;

	drv8834_run(motor_left, motor_right);
}



void line_follower_init()
{
	c_line_follower.init();
	c_q_predictor.init();
}

void line_follower_main()
{
	c_line_follower.process();
}
