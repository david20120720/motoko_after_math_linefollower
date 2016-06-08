#ifndef _MAP_H_
#define _MAP_H_

#include "../lib_usr/lib_usr.h"


struct sState
{
  u8 item;
  u16 distance;
};

#define MEMORY_I2C_ADDRESS    0xA0
#define MEMORY_CAPACITY       ((u32)2000)
#define STORED_STATES_COUNT   (MEMORY_CAPACITY/sizeof(struct sState))

class CMap
{
  private:
    u32 state_idx;

  public:
    CMap();
    ~CMap();

    void load_states();

    void add_to_map(i32 line_position);
    struct sState get_state(u32 idx);
};


#endif
