#ifndef _OBSTACLE_H_
#define _OBSTACLE_H_

#include "../lib_usr/lib_usr.h"
#include "robot_config.h"

#ifdef __cplusplus
extern "C" {
#endif


void obstacle_init();
void obstacle_main();
void obstacle_test();

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus

class CObstacle
{
	private:
		u32 state;

	public:
		CObstacle();
		~CObstacle();

		void init();
		void process();

		void test();

	private:
		i32 abs_(i32 x);

		void rotate_robot(i32 angle);
		void go_forward(i32 speed, u32 time, u8 (*term_fun)());
};

#endif


#endif
