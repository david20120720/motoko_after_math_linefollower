#include "q_predictor.h"
#include "../lib_usr/math.h"


i16 predictor_models_init[Q_PREDICTOR_MODELS_COUNT][Q_PREDICTOR_MODEL_SIZE] =
{
  {  31,  15,   0,   0,   0,   0,   0,   0,   0,   7,  15,  23,  31,  31,  31,  31},
  { 804, 812, 835, 875, 890, 914, 937, 945, 953, 945, 937, 921, 906, 890, 875, 859},
  {  23,   7,   0,   0,   0,   0,   0,   0,   0,   0,   0,  15,  15,  31,  31,  31},
  {  46,  31,  31,  15,  15,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0},
  {   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  15,  15,  46,  46,  54},
  {   0,   0,   0,   0,   0,   0,   0,   7,  15,   7,   7,  15,  15,  23,  31,  15},
  {  70,  39,  31,  31,  31,  31,  23,  23,  31,  15,  15,  15,   0,   0,   0,   0},
  {   0,   0,   0,   0,   0,   0,   0,   0,  15,  15,  15,  15,  31,   7,  31,  46},
  {  31,  23,  23,  15,  15,  15,   7,  15,  15,  23,  23,  46,  54,  62,  85,  93},
  {   0,   0,   0,   0,   0,   0,   0,   0,  15,  15,  15,  31,  23,  31,  31,  15},
  {  62,  23,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0},
  {   7,   7,   0,   0,   0,   0,   0,   0,   0,  15,  15,  15,  31,  31,  31,  31},
  { 960, 945, 898, 820, 757, 648, 539, 421, 312, 250, 195, 179, 171, 156, 156, 148},
  { 335, 273, 210, 195, 187, 210, 257, 289, 351, 421, 445, 507, 554, 617, 664, 734},
  {  15,  15,   0,   0,   0,   7,  15,  15,   0,   0,   0,   0,   0,   0,   0,   0},
  {   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  15,  31,  31,  54},
};

i16 predictor_q_init[Q_PREDICTOR_MODELS_COUNT] =
{
  500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500
};

i16 predictor_output_init[Q_PREDICTOR_MODELS_COUNT] =
{
	1000, 500, 1000, 810, 1000, 1000, 890, 1000, 910, 870, 810, 1000, 500, 500, 620, 1000
};


void q_predictor_init()
{
  u32 i, j;

  g_q_predictor.state = 0;
  g_q_predictor.prev_state = 0;

  for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
    g_q_predictor.input[i] = 0.0;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
    for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
      g_q_predictor.models[j][i] = predictor_models_init[j][i]/1000.0;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
    g_q_predictor.output[j] = predictor_output_init[j]/1000.0;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
    g_q_predictor.q[j] = predictor_q_init[j]/1000.0;
}

float q_predictor_process(float input, float output_min, float output_max)
{
  u32 i, j;

  /*add new sample into fifo front*/
  for (i = (Q_PREDICTOR_MODEL_SIZE-1); i != 0; i--)
    g_q_predictor.input[i] = g_q_predictor.input[i-1];
  g_q_predictor.input[0] = m_abs(input);

  float min_dist = 10.0*Q_PREDICTOR_MODEL_SIZE;
  u32 min_idx = 0;

  /*look for nearest model to current fifo state*/
  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    float dist = 0.0;
    for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
      dist+= m_abs(g_q_predictor.input[i] - g_q_predictor.models[j][i]);

    if (dist < min_dist)
    {
      min_dist = dist;
      min_idx = j;
    }
  }

  /*learn nearest model*/
  float learning_rate = CONFIG_Q_ETA;
  for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
  {
    g_q_predictor.models[min_idx][i] = learning_rate*g_q_predictor.models[min_idx][i] +
                                            (1.0 - learning_rate)*g_q_predictor.input[i];
  }


  /*
    system state is know now, so process Q learning
  */
  float reward = g_q_predictor.input[0];  /*use current sample as reward*/
  float alpha = CONFIG_Q_ALPHA;           /*learning low pass filter constant <0, 1>, process is stochastic*/
  float gamma = CONFIG_Q_GAMMA;           /*discount factor <0, 1> */

  g_q_predictor.prev_state = g_q_predictor.state;
  g_q_predictor.state = min_idx;

  g_q_predictor.q[g_q_predictor.state] =
    alpha*g_q_predictor.q[g_q_predictor.state] +
    (1.0 - alpha)*(gamma*g_q_predictor.q[g_q_predictor.prev_state] + reward);

  g_q_predictor.q[g_q_predictor.state] = m_saturate(g_q_predictor.q[g_q_predictor.state], 0.0, 1.0);


  /*
    all states have Q(s) calculated now,
    use Q(s) to calculate output
  */
  float delta = CONFIG_Q_DELTA;
  g_q_predictor.output[g_q_predictor.state]+= delta*(0.5 - g_q_predictor.q[g_q_predictor.state]);

  g_q_predictor.output[g_q_predictor.state] = m_saturate(g_q_predictor.output[g_q_predictor.state], output_min, output_max);

  return g_q_predictor.output[g_q_predictor.state];
}


void q_predictor_print()
{
  u32 i, j;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
    {
      i32 value = g_q_predictor.models[j][i]*1000;
      printf_("%i ", value);
    }

    printf_("\n");
  }

  printf_("\n");


  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    i32 value_q = g_q_predictor.q[j]*1000;
    printf_("%i ", value_q);
  }

  printf_("\n");

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    i32 value_output = g_q_predictor.output[j]*1000;
    printf_("%i ", value_output);
  }
  printf_("\n");

  printf_("\n");
  printf_("\n");
}
