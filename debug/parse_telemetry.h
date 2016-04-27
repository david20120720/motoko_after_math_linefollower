#ifndef _PARSE_TELEMETRY_H_
#define _PARSE_TELEMETRY_H_

#include "common.h"

#define TELEMETRY_BUFFER_SIZE   ((u32)1024)
#define LINE_SENSORS_COUNT  (u32)8

struct sRobotTelemetry
{
    i32 line_position, line_state;
    i32 gx, gy, gz, mx, my, mz, ax, ay, az;
    i32 roll, pitch, yaw;

    i32 line_sensor[LINE_SENSORS_COUNT];
};



class CParseTelemetry
{
  private:
      char buffer[TELEMETRY_BUFFER_SIZE];
      u32 buffer_ptr;

      struct sRobotTelemetry telemetry;

  public:
    CParseTelemetry();
    ~CParseTelemetry();
    u32 parse(char c);

    void print();

    struct sRobotTelemetry get();
};

#endif
