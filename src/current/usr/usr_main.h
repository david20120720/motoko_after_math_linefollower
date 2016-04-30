#ifndef _USR_MAIN_H_
#define _USR_MAIN_H_


#include "../lib_usr/lib_usr.h"


#define MAIN_THREAD_STACK_SIZE	          128
#define I2C_SENSOR_THREAD_STACK_SIZE      128
#define LINE_SENSOR_THREAD_STACK_SIZE     128
#define TELEMETRY_THREAD_STACK_SIZE       128

#ifdef __cplusplus
extern "C" {
#endif

thread_stack_t main_thread_stack[MAIN_THREAD_STACK_SIZE];
thread_stack_t i2c_sensor_thread_stack[I2C_SENSOR_THREAD_STACK_SIZE];
thread_stack_t line_sensor_thread_stack[LINE_SENSOR_THREAD_STACK_SIZE];
thread_stack_t telemetry_thread_stack[TELEMETRY_THREAD_STACK_SIZE];


void main_thread();

#ifdef __cplusplus
}
#endif


#endif
