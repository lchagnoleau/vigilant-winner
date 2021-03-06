/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H__
#define __MAIN_H__

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"
#include "init.h"
#include "usb.h"

/* Private define ------------------------------------------------------------*/

#define LED2_Pin GPIO_PIN_3
#define LED2_GPIO_Port GPIOA
#define LED1_Pin GPIO_PIN_4
#define LED1_GPIO_Port GPIOA

void _Error_Handler(char *, int);
#define Error_Handler() _Error_Handler(__FILE__, __LINE__)

#endif /* __MAIN_H__ */
