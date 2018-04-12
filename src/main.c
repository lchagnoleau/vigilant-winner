/* Includes ------------------------------------------------------------------*/
#include "main.h"

int main(void)
{
  HAL_Init();
  init();
  while (1)
  {
      HAL_Delay(100);
      HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
      HAL_GPIO_TogglePin(LED2_GPIO_Port, LED2_Pin);
  }
}
