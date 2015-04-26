#ifndef _LINE_CAMERA_H_
#define _LINE_CAMERA_H_

#include "../lib_low_level.h"


#define CAMERA_STATE_NULL	 		0x00
#define CAMERA_STATE_NO_CONNECTED 	0xFF
#define CAMERA_STATE_CORRECT 		0xA1

#define LINE_CAMERA_TRESHOLD		(i32)(-500)
#define LINE_CAMERA_CENTER			(i32)(-60)

#define LINE_CAMERA_PIXELS_COUNT	(u32)128

struct sLineCamera
{
	u32 state, flag;
	i32 average;
	i16 pixels_raw[LINE_CAMERA_PIXELS_COUNT];
	i16 pixels[LINE_CAMERA_PIXELS_COUNT];
	i16 pixels_dif[LINE_CAMERA_PIXELS_COUNT];

	i32 line_position;
	u8 line_state;
};

volatile struct sLineCamera g_line_camera;

void line_camera_init();

void line_position_calc();
#endif