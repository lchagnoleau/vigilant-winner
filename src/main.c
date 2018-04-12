/* Includes ------------------------------------------------------------------*/
#include "main.h"

#define DUCK_LEN 26
const uint8_t duckraw[DUCK_LEN] = {
    0x2c, 0x0, 0x14, 0x0, 0x14, 0x0, 0x14, 0x0, 0x14, 0x2, 0x14, 0x2, 0x14, 0x2, 0x5, 0x0, 0x5, 0x0, 0x5, 0x0, 0x5, 0x2, 0x5, 0x2, 0x5, 0x2
  };

int main(void)
{
  HAL_Init();
  init();
  while (1)
  {
    if(HAL_GPIO_ReadPin(BUTTON_GPIO_Port, BUTTON_Pin) == GPIO_PIN_RESET)
    {
      for(int i=0; i<DUCK_LEN; i+=2)
        USB_send_char(duckraw[i], duckraw[i+1]);
    }
    else
    {
      HAL_Delay(100);
      HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
      HAL_GPIO_TogglePin(LED2_GPIO_Port, LED2_Pin);
    }
  }
}
