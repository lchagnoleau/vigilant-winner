/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "duckraw.h"

int main(void)
{
  HAL_Init();
  init();

  unsigned char key, mod;

  HAL_Delay(100);
  for(int i=0; i<DUCK_LEN; i+=2)
    {
      key = duckraw[i];
      mod = duckraw[i+1];
      if(key == 0)
      {
          HAL_Delay(mod);
      }
      else USB_send_char(key, mod);
    }

  while(1)
  {
    HAL_Delay(100);
    HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
    HAL_GPIO_TogglePin(LED2_GPIO_Port, LED2_Pin);
  }
}
