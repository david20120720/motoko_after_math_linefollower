#include "robot.h"


CRobot::CRobot()
{

}


CRobot::~CRobot()
{

}

void CRobot::init(struct sRobotConfigure robot_configure_)
{
  robot_configure = robot_configure_;
}


struct sRobotConfigure* CRobot::get_robot_configure()
{
  return &robot_configure;
}

struct sLinePositionSensor* CRobot::get_line_position_sensor()
{
  return &line_position_sensor;
}

struct sObstacleSensor* CRobot::get_obstacle_position_sensor()
{
  return &obstacle_position_sensor;
}

struct sIMUSensor* CRobot::get_imu_sensor()
{
  return &imu_sensor;
}

void CRobot::set_motors(i32 left, i32 right)
{

}

void CRobot::reset_imu()
{
  imu_sensor.roll = 0;
  imu_sensor.pitch = 0;
  imu_sensor.yaw = 0;
}



void CRobot::process_rgb_sensors()
{

}

void CRobot::process_imu_sensor()
{

}
