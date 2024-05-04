#include "stm32f4xx_hal.h"
#include "sys.h"
#include "delay.h"
#include "usart.h"
#include <stdio.h>

int main()
{
    HAL_Init();
    HAL_RCC_DeInit();
    sys_stm32_clock_init(336, 8, 2, 7);
    delay_init(168);
    usart_init(115200);

    while (1)
    {
        printf("12345\n");
        delay_ms(500);
    }

    return 0;
}