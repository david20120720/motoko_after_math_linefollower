#include "gpio.h"
 
  
void gpio_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);

 
    /* Configure the GPIO_LED pin */                   
    GPIO_InitStructure.GPIO_Pin = LED_1;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    /* Configure the GPIO_IR pin */                   
    GPIO_InitStructure.GPIO_Pin = LED_IR;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    led_off(LED_1);
    led_off(LED_IR);
}

void led_on(u32 led)
{
    if (led == LED_1)
        GPIO_SetBits(GPIOB, LED_1);

    if (led == LED_IR)
        GPIO_SetBits(GPIOA, LED_IR);
}

void led_off(u32 led)
{
    if (led == LED_1)
        GPIO_ResetBits(GPIOB, LED_1);

    if (led == LED_IR)
        GPIO_ResetBits(GPIOA, LED_IR);
}