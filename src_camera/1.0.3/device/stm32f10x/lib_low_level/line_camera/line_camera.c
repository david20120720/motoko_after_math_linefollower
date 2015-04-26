#include "line_camera.h"

#include "../timer/stm32f10x_tim.h"

#define LINE_CAMERA_GPIO	GPIOA
#define LINE_CAMERA_AO	 	(1<<1)
#define LINE_CAMERA_A_CH    (1)

#define LINE_CAMERA_CLK 	(1<<2)
#define LINE_CAMERA_SI	 	(1<<3)


const i32 line[] =
{
    -1, -1, -1, -1, -1, -1, -1, -1, //8
    -1, -1, -1, -1, -1, -1, -1, -1, //16
    -1, -1, -1, -1, -1, -1, -1, -1, //24
    -1, -1, -1, -1, -1, -1, -1, -1, //32
    -1, -1, -1, -1, -1, -1, -1, -1, //40
    -1, -1, -1, -1, -1, -1, -1, -1, //48
    -1, -1, -1, -1, -1, -1, -1, -1, //56

    1, 1, 1, 1, 1, 1, 1, 1, //64

    -1, -1, -1, -1, -1, -1, -1, -1, //72
    -1, -1, -1, -1, -1, -1, -1, -1, //80
    -1, -1, -1, -1, -1, -1, -1, -1, //88
    -1, -1, -1, -1, -1, -1, -1, -1, //96
    -1, -1, -1, -1, -1, -1, -1, -1, //104
    -1, -1, -1, -1, -1, -1, -1, -1, //112
    -1, -1, -1, -1, -1, -1, -1, -1, //120
    -1, -1, -1, -1, -1, -1, -1, -1, //128
};

void line_camera_init()
{
	u32 i;
	for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
    {
        g_line_camera.pixels_raw[i] = 0;
		g_line_camera.pixels[i] = 0;
    }

    g_line_camera.average = 0;

    g_line_camera.flag = 0;
	g_line_camera.state = 0;

    g_line_camera.line_position = 0;
    g_line_camera.line_state = 0;


	GPIO_InitTypeDef  GPIO_InitStructure;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    
    GPIO_InitStructure.GPIO_Pin = LINE_CAMERA_CLK | LINE_CAMERA_SI;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(LINE_CAMERA_GPIO, &GPIO_InitStructure);

    GPIO_InitStructure.GPIO_Pin = LINE_CAMERA_AO;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(LINE_CAMERA_GPIO, &GPIO_InitStructure);


    LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_CLK;    /*CLK = 0*/
    LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_SI;   /*SI = 0*/

    adc_set_channel(LINE_CAMERA_A_CH);


  	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);

    TIM_TimeBaseInitTypeDef timerInitStructure;
    timerInitStructure.TIM_Prescaler = 10;
    timerInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    timerInitStructure.TIM_Period = 72;
    timerInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    timerInitStructure.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM3, &timerInitStructure);
    TIM_Cmd(TIM3, ENABLE);

    TIM_ITConfig(TIM3, TIM_IT_Update, ENABLE); // Enable interrupt on update event

 	NVIC_InitTypeDef nvicStructure;
    nvicStructure.NVIC_IRQChannel = TIM3_IRQn;
    nvicStructure.NVIC_IRQChannelPreemptionPriority = 0;
    nvicStructure.NVIC_IRQChannelSubPriority = 1;
    nvicStructure.NVIC_IRQChannelCmd = ENABLE;

    NVIC_Init(&nvicStructure);

}
 
void TIM3_IRQHandler()
{ 
    switch (g_line_camera.state)
    {
	   case 0 : 
                LINE_CAMERA_GPIO->BRR = LINE_CAMERA_CLK;    /*CLK = 0*/
                LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_SI;   /*SI = 1*/
                g_line_camera.state = 1;

                u32 i; 

                i32 average = 0;
                for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
                    average+= g_line_camera.pixels_raw[i];
                average/= LINE_CAMERA_PIXELS_COUNT;

                for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
                    g_line_camera.pixels[i] = g_line_camera.pixels_raw[i] - average;
                
                g_line_camera.average = average;
                g_line_camera.flag = 1;
                break;

        case 1:
                LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_CLK;   /*CLK = 1*/
                g_line_camera.state = 2;
                break;

        case 2:
                LINE_CAMERA_GPIO->BRR = LINE_CAMERA_SI;   /*SI = 0*/
                g_line_camera.state = 4;
                break;


        default:
                if (g_line_camera.state&1)
                {
                    g_line_camera.pixels_raw[(g_line_camera.state - 4)/2] = adc_read();
                    LINE_CAMERA_GPIO->BRR = LINE_CAMERA_CLK;    /*CLK = 0*/
                    g_line_camera.state++;

                    if (g_line_camera.state >= 260)
                        g_line_camera.state = 0;
                }
                else
                {
                    LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_CLK;   /*CLK = 1*/
                    g_line_camera.state++;
                }

                break;
    }


	TIM_ClearITPendingBit(TIM3, TIM_IT_Update);
}




void line_position_calc()
{
    u32 j;

    g_line_camera.pixels_dif[0] = 0;
    for (j = 1; j < LINE_CAMERA_PIXELS_COUNT; j++)
        g_line_camera.pixels_dif[j] = g_line_camera.pixels[j]-g_line_camera.pixels[j-1];
 
    u32 restricted_pixels = 4;

    i32 min_value = g_line_camera.pixels_dif[restricted_pixels];
    i32 j_min = restricted_pixels;
    for (j = restricted_pixels; j < (LINE_CAMERA_PIXELS_COUNT-restricted_pixels); j++)
    {
        if (g_line_camera.pixels_dif[j] < min_value)
        {
            min_value = g_line_camera.pixels_dif[j];
            j_min = j;
        }
    }

    g_line_camera.line_state = CAMERA_STATE_NULL;
    if (min_value < LINE_CAMERA_TRESHOLD)
    {
        g_line_camera.line_position = j_min + LINE_CAMERA_CENTER;
        g_line_camera.line_state = CAMERA_STATE_CORRECT;
    }
}