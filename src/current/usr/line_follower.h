#ifndef _LINE_FOLLOWER_H_
#define _LINE_FOLLOWER_H_

#include "../lib_usr/lib_usr.h"
#include "robot_config.h"

#ifdef __cplusplus
extern "C" {
#endif

void line_follower_init();
void line_follower_main();

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus

class CLineFollower
{
	private:
		float base_speed, dif_speed;
		struct sPID line_pid;

	public:
		CLineFollower();
		~CLineFollower();

		void init();
		void process();
};

#endif


#endif
