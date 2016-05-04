#ifndef _ROBOT_H_
#define _ROBOT_H_

#include "lib_usr.h"

struct sRobotConfigure
{
  //sensors treshholds
	i16 line_sensor_treshold;
	i16 obstacle_treshold;

  //neural network predictor
  u8 use_predictor;

  //controller parameterers
  float kp, ki, kd, kd2;
  float ks1, ks2;
  float speed_min, speed_max;

  u32 line_search_time;
  u32 line_search_speed;
};

//line sensor result
struct sLinePositionSensor
{
	u8 on_line;
	i32 line_position;
  u32 line_color, line_type;
};

//obstacle sensor result
struct sObstacleSensor
{
  u8 obstacle;
  i32 obstacle_position;
};


//angles
struct sIMUSensor
{
  i32 roll, pitch, yaw;
};


#ifdef __cplusplus

class CRobot
{
  private:
    struct sRobotConfigure robot_configure;

    struct sLinePositionSensor line_position_sensor;
    struct sObstacleSensor obstacle_position_sensor;
    struct sIMUSensor imu_sensor;

  public:
    CRobot();
    ~CRobot();

    void init(struct sRobotConfigure robot_configure_);

    struct sRobotConfigure* get_robot_configure();
    struct sLinePositionSensor* get_line_position_sensor();
    struct sObstacleSensor* get_obstacle_position_sensor();
    struct sIMUSensor* get_imu_sensor();

    void set_motors(i32 left, i32 right);
    void reset_imu();

    void process_rgb_sensors();
    void process_imu_sensor();
};

#endif


#endif
