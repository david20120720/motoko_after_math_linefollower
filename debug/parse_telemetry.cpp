#include "parse_telemetry.h"

CParseTelemetry::CParseTelemetry()
{
  u32 i;
  for (i = 0; i < TELEMETRY_BUFFER_SIZE; i++)
    buffer[i] = '\0';
  buffer_ptr = 0;


  for (i = 0; i < LINE_SENSORS_COUNT; i++)
  {
    telemetry.line_sensor[i] = 0;
    telemetry.line_sensor_ambient[i] = 0;
    telemetry.line_sensor_red[i] = 0;
    telemetry.line_sensor_green[i] = 0;
    telemetry.line_sensor_blue[i] = 0;
  }

  telemetry.obstacle = 0;
  telemetry.line_treshold = 0;
  telemetry.obstacle_treshold = 0;


  telemetry.line_position = 0;
  telemetry.line_state = 0;
  telemetry.gx = 0;
  telemetry.gy = 0;
  telemetry.gz = 0;
  telemetry.mx = 0;
  telemetry.my = 0;
  telemetry.mz = 0;
  telemetry.ax = 0;
  telemetry.ay = 0;
  telemetry.az = 0;


  telemetry.roll = 0;
  telemetry.pitch = 0;
  telemetry.yaw = 0;

  telemetry.kp = 0;
  telemetry.kd = 0;
  telemetry.ks1 = 0;
  telemetry.ks2 = 0;

  telemetry.speed_min = 0;
  telemetry.speed_max = 0;
}

CParseTelemetry::~CParseTelemetry()
{

}

u32 is_number(char c)
{
  if ( (c >= '0') && (c <= '9') )
    return 1;

  return 0;
}

i32 parse_int(char *buffer, u32 *ptr_next)
{
  u32 ptr = 0;
  i32 sgn = 1;
  i32 num = 0;


  while ((buffer[ptr] != '\0') && (is_number(buffer[ptr]) == 0) && (buffer[ptr] != '-'))
  {
    ptr++;
  }

  *ptr_next = ptr;
  if (buffer[ptr] == '\0')
    return num;

  if (buffer[ptr] == '-')
  {
    sgn = -1;
    ptr++;
  }


  while ((buffer[ptr] != '\0') && (is_number(buffer[ptr]) != 0))
  {
    num = 10*num + (buffer[ptr]-'0');
    ptr++;
  }

  *ptr_next = ptr;

  return num*sgn;
}

u32 CParseTelemetry::parse(char c)
{
  if (c == '>')
  {
    buffer_ptr = 0;

    u32 i, ptr_next = 0;

    char *buf = buffer;

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      telemetry.line_sensor[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      telemetry.line_sensor_ambient[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      telemetry.line_sensor_red[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      telemetry.line_sensor_green[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      telemetry.line_sensor_blue[i] = parse_int(buf, &ptr_next);
    }


    buf = buf + ptr_next;
    telemetry.obstacle = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.line_treshold = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.line_treshold = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.line_position = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.line_state = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    telemetry.gx = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.gy = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.gz = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    telemetry.mx = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.my = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.mz = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.ax = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.ay = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.az = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.roll = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.pitch = parse_int(buf, &ptr_next);
    buf = buf + ptr_next;
    telemetry.yaw = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    telemetry.kp = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.kd = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.ks1 = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.ks2 = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.speed_min = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    telemetry.speed_max = parse_int(buf, &ptr_next);

    return 1;
  }

  buffer[buffer_ptr] = c;



  buffer_ptr = (buffer_ptr+1)%TELEMETRY_BUFFER_SIZE;

  buffer[TELEMETRY_BUFFER_SIZE-1] = '\0';

  return 0;
}


void CParseTelemetry::print()
{
  u32 i;

  for (i = 0; i < LINE_SENSORS_COUNT; i++)
    printf("%i ", telemetry.line_sensor[i]);
  printf("\n");

  for (i = 0; i < LINE_SENSORS_COUNT; i++)
    printf("%i ", telemetry.line_sensor_ambient[i]);
  printf("\n");

  for (i = 0; i < LINE_SENSORS_COUNT; i++)
    printf("%i ", telemetry.line_sensor_red[i]);
  printf("\n");

  for (i = 0; i < LINE_SENSORS_COUNT; i++)
    printf("%i ", telemetry.line_sensor_green[i]);
  printf("\n");

  for (i = 0; i < LINE_SENSORS_COUNT; i++)
    printf("%i ", telemetry.line_sensor_blue[i]);
  printf("\n");

  printf("obstacle = %i\n", telemetry.obstacle);
  printf("line_treshold = %i\n", telemetry.line_treshold);
  printf("obstacle_treshold = %i\n", telemetry.obstacle_treshold);

  printf("line_position = %i \n ", telemetry.line_position);
  printf("line_state = %i \n ", telemetry.line_state);

  printf("imu = [%i %i %i] [%i %i %i] [%i %i %i], [%i %i %i]\n",
  telemetry.gx, telemetry.gy, telemetry.gz,
  telemetry.mx, telemetry.my, telemetry.mz,
  telemetry.ax, telemetry.ay, telemetry.az,
  telemetry.roll, telemetry.pitch, telemetry.yaw);

  printf("controller %i %i %i %i %i %i\n",
  telemetry.kp,
  telemetry.kd,
  telemetry.ks1,
  telemetry.ks2,
  telemetry.speed_min,
  telemetry.speed_max
  );


  printf("\n\n\n");
}

struct sRobotTelemetry CParseTelemetry::get()
{
  return telemetry;
}
