/*
 * usb.c
 *
 *  Created on: 12 avr. 2018
 *      Author: lchagnoleau
 */

#include "usb.h"
#include "stm32f0xx_hal.h"
#include "usb_device.h"

void USB_init(void)
{
  MX_USB_DEVICE_Init();
}

void USB_send_char(unsigned char c, unsigned char mod)
{
    uint8_t press_report[8] = {0x00};
    press_report[0] = mod;
    press_report[2] = c;

    USBD_HID_SendReport(&hUsbDeviceFS, press_report, 8);
    HAL_Delay(30); 
    press_report[0] = 0;
    press_report[2] = 0;

    USBD_HID_SendReport(&hUsbDeviceFS, press_report, 8);
    HAL_Delay(30); 
}
