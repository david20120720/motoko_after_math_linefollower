#include "robot_config.h"

struct sRobotConfig g_robot_config;

void robot_config_init()
{
  g_robot_config.line_sensor_treshold = LINE_SENSOR_TRESHOLD;
  g_robot_config.obstacle_treshold = OBSTACLE_TRESHOLD;
  g_robot_config.use_predictor = CONFIG_USE_PREDICTOR;

  g_robot_config.kp = CONFIG_KP;
  g_robot_config.ki = CONFIG_KI;
  g_robot_config.kd = CONFIG_KD;
  g_robot_config.kd2 = CONFIG_KD2;

  g_robot_config.ks1 = CONFIG_KS_1;
  g_robot_config.ks2 = CONFIG_KS_2;
  g_robot_config.speed_min = CONFIG_SPEED_MIN;
  g_robot_config.speed_max = CONFIG_SPEED_MAX;

  g_robot_config.line_search_time = CONFIG_LINE_SEARCH_TIME;
  g_robot_config.line_search_speed = CONFIG_LINE_SEARCH_SPEED;

} 

struct sRobotConfig *robot_config_get()
{
  return &g_robot_config;
}
