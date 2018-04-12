/* Includes ------------------------------------------------------------------*/
#include "main.h"

int main(void)
{
  HAL_Init();
  init();
  while (1)
  {
    if(HAL_GPIO_ReadPin(BUTTON_GPIO_Port, BUTTON_Pin) == GPIO_PIN_RESET)
    {
      USB_send_char(1);
    }
    else
    {
      HAL_Delay(100);
      HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
      HAL_GPIO_TogglePin(LED2_GPIO_Port, LED2_Pin);
    }
  }
}
