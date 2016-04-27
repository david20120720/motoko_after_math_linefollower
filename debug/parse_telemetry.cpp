#include "parse_telemetry.h"

CParseTelemetry::CParseTelemetry()
{
  u32 i;
  for (i = 0; i < TELEMETRY_BUFFER_SIZE; i++)
    buffer[i] = '\0';
  buffer_ptr = 0;
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

    u32 ptr_next = 0;

    char *buf = buffer;

    telemetry.line_position =  parse_int(buf, &ptr_next);

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


    u32 i;
    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      telemetry.line_sensor[i] = parse_int(buf, &ptr_next);
    }


    return 1;
  }

  buffer[buffer_ptr] = c;



  buffer_ptr = (buffer_ptr+1)%TELEMETRY_BUFFER_SIZE;

  buffer[TELEMETRY_BUFFER_SIZE-1] = '\0';

  return 0;
}


void CParseTelemetry::print()
{
  printf("line %i %i\n", telemetry.line_position, telemetry.line_state);
  printf("\n");
  printf("gyro : %i %i %i\n", telemetry.gx, telemetry.gy, telemetry.gz);
  printf("mag  : %i %i %i\n", telemetry.mx, telemetry.my, telemetry.mz);
  printf("acc  : %i %i %i\n", telemetry.ax, telemetry.ay, telemetry.az);
  printf("angles  : %i %i %i\n", telemetry.roll, telemetry.pitch, telemetry.yaw);
  printf("\n");

  u32 i;
  for (i = 0; i < LINE_SENSORS_COUNT; i++)
    printf("%i ", telemetry.line_sensor[i]);

  printf("\n\n\n");
}

struct sRobotTelemetry CParseTelemetry::get()
{
  return telemetry;
}
