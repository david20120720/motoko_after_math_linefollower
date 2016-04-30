#ifndef _ROBOT_CONFIG_H_
#define _ROBOT_CONFIG_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "../lib_usr/lib_usr.h"

struct sRobotConfig
{
	i32 line_sensor_treshold;
	i32 obstacle_treshold;
  u8 use_predictor;
  float kp, ki, kd, kd2;
  float ks1, ks2;
  float speed_min, speed_max;

  u32 line_search_time;
  u32 line_search_speed;
};


void robot_config_init();
struct sRobotConfig *robot_config_get();


#define LINE_SENSOR_TRESHOLD	        (i32)150
#define OBSTACLE_TRESHOLD		         (i32)700

#define CONFIG_USE_PREDICTOR         0      /*this enables line shape predictor to estimate erro value*/

#if CONFIG_USE_PREDICTOR == 0
#define   CONFIG_KP                 (float)0.326  /*proportional, 0.326*/
#define   CONFIG_KI                 (float)0.0    /*integrate*/
#define   CONFIG_KD                 (float)4.53  /*derivative., 10.53*/
#define   CONFIG_KD2                (float)0.0    /*second derivative*/
#else
#define   CONFIG_KP                 (float)0.217  /*proportional, 0.326*/
#define   CONFIG_KI                 (float)0.0    /*integrate*/
#define   CONFIG_KD                 (float)3.02  /*derivative., 10.53*/
#define   CONFIG_KD2                (float)0.0    /*second derivative*/
#endif

#define   CONFIG_KS_1               (float)0.02   /*speed rising time*/
#define   CONFIG_KS_2               (float)5.0   /*speed rising time*/
#define   CONFIG_SPEED_MIN          (float)0.5    /*minimal robot speed*/
#define   CONFIG_SPEED_MAX          (float)0.8    /*maximal robot speed*/


/*
  broken line search parameters
*/

#define CONFIG_LINE_SEARCH_TIME 	  (u32)500     /*one curve time in ms*/
#define CONFIG_LINE_SEARCH_SPEED 	  (i32)50      /*in 0..100 range*/




#ifdef __cplusplus
}
#endif

#endif
