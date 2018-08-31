/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "duckraw.h"

volatile duckSruct_t __attribute__ ((section(".duckraw"))) duckraw= {.size = 0x0000, .raw =  {0xFF}};

int main(void)
{
  HAL_Init();
  init();

  unsigned char key, mod;

  HAL_Delay(1000);
  for(int i=0; i<duckraw.size; i+=2)
    {
      key = duckraw.raw[i];
      mod = duckraw.raw[i+1];
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
