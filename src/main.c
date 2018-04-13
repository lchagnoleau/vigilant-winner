/* Includes ------------------------------------------------------------------*/
#include "main.h"

#define DUCK_LEN 110
const uint8_t duckraw [DUCK_LEN] = {
  0x17, 0x5, 0x0, 0xff, 0x0, 0xf5, 0x2c, 0x0, 0x9, 0x0, 0xc, 0x0, 0x15, 0x0, 0x8, 0x0, 0x9, 0x0, 0x12, 0x0, 0x1b, 0x0, 0x2c, 0x0, 0xb, 0x0, 0x17, 0x0, 0x17, 0x0, 0x13, 0x0, 0x37, 0x0, 0x37, 0x2, 0x37, 0x2, 0x9, 0x0, 0x14, 0x0, 0xe, 0x0, 0x8, 0x0, 0x18, 0x0, 0x13, 0x0, 0x7, 0x0, 0x14, 0x0, 0x17, 0x0, 0x8, 0x0, 0x36, 0x2, 0x11, 0x0, 0x8, 0x0, 0x17, 0x0, 0x37, 0x2, 0x1d, 0x0, 0xc, 0x0, 0x11, 0x0, 0x1e, 0x2, 0x27, 0x2, 0x18, 0x0, 0x37, 0x2, 0x28, 0x0, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xff, 0x0, 0xc3, 0x44, 0x0
};

int main(void)
{
  HAL_Init();
  init();

  unsigned char key, mod;

  HAL_Delay(1000);

  if(HAL_GPIO_ReadPin(BUTTON_GPIO_Port, BUTTON_Pin) == GPIO_PIN_SET)
  {
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
  }

  while(1)
  {
    HAL_Delay(100);
    HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
    HAL_GPIO_TogglePin(LED2_GPIO_Port, LED2_Pin);
  }
}
