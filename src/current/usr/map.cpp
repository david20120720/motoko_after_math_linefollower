#include "map.h"

#define CURVE_TYPES_COUNT   10

i32 curve_type[CURVE_TYPES_COUNT] =
{
  (ROBOT_LINE_MAX*100)/100,
  (ROBOT_LINE_MAX*95)/100,
  (ROBOT_LINE_MAX*90)/100,
  (ROBOT_LINE_MAX*85)/100,
  (ROBOT_LINE_MAX*80)/100,
  -(ROBOT_LINE_MAX*80)/100
  -(ROBOT_LINE_MAX*85)/100,
  -(ROBOT_LINE_MAX*90)/100,
  -(ROBOT_LINE_MAX*95)/100,
  -(ROBOT_LINE_MAX*100)/100
};


struct sState g_map[STORED_STATES_COUNT];

void save_state(struct sState state, u32 idx)
{
  i2cStart();

  i2cWrite( (MEMORY_I2C_ADDRESS| ((idx>>8)<<1) )&0xfe );
  i2cWrite(idx&0xff);

  i2cWrite(state.item);
  i2cWrite( (state.distance>>24)&0xff );
  i2cWrite( (state.distance>>16)&0xff );
  i2cWrite( (state.distance>>8)&0xff );
  i2cWrite( (state.distance>>0)&0xff );

  i2cStop();
}

struct sState load_state(u32 idx)
{
  struct sState res;


  i2cStart();

  i2cWrite( (MEMORY_I2C_ADDRESS| ((idx>>8)<<1) )&0xfe );  /*slave address, write command*/
  i2cWrite( idx&0xff);  /*send reg address*/

  i2cStart();
  i2cWrite((MEMORY_I2C_ADDRESS| ((idx>>8)<<1))|0x01); /*slave address, read command*/
  res.item = i2cRead(1);                  /*read data*/
  res.distance = ((u32)i2cRead(1))<<24;   /*read data*/
  res.distance|= ((u32)i2cRead(1))<<16;   /*read data*/
  res.distance|= ((u32)i2cRead(1))<<8;   /*read data*/
  res.distance|= ((u32)i2cRead(0))<<0;   /*read data*/
  i2cStop();

  return res;
}



i32 function(u32 map_position, u32 encoder_position, i32 d_max)
{
  i32 dif = map_position - encoder_position;
  i32 res = 0;

  if (dif < 0)
    dif = -dif;

  if (dif > d_max)
    res = 0;
  else
    res = 1000 - (dif*1000)/d_max;

  return res;
}


CMap::CMap()
{
  encoder_reset();

  state_idx = 0;
}


CMap::~CMap()
{

}


void CMap::load_states()
{
  u32 i;
  for (i = 0; i < STORED_STATES_COUNT; i++)
    g_map[i] = load_state(i);
}




void CMap::add_to_map(i32 line_position)
{
  u32 i;

  i32 min_dist = ROBOT_LINE_MAX*10;
  u32 min_idx = 0;

  for (i = 0; i < CURVE_TYPES_COUNT; i++)
  {
    i32 dist = line_position - curve_type[i];
    if (dist < 0)
      dist = -dist;

    if (dist < min_dist)
    {
      min_dist = dist;
      min_idx = i;
    }
  }

  i32 treshold = (ROBOT_LINE_MAX*10)/100;
  if ((min_dist < treshold) && (state_idx < STORED_STATES_COUNT))
  {
    struct sState state;

    //save curve type
    state.item = min_idx;

    //average both encoders ticks and convert to mm
    state.distance = encoder_get_distance();

    //store into memory
    save_state(state, state_idx);

    state_idx+= 1;

    encoder_reset();
  }
}

struct sState CMap::get_state(u32 idx)
{
  return g_map[idx];
}
