/*
 * usb.c
 *
 *  Created on: 12 avr. 2018
 *      Author: lchagnoleau
 */

#include "usb.h"
#include "stm32f0xx_hal.h"
#include "usb_device.h"

// HID Keyboard
struct keyboardHID_t {
    uint8_t id;
    uint8_t modifiers;
    uint8_t key;
};

void USB_init(void)
{
  MX_USB_DEVICE_Init();
}

void USB_send_char(unsigned char c, unsigned char mod)
{
//  struct keyboardHID_t keyboardHID;
//  keyboardHID.id = 1;
//  keyboardHID.modifiers = 0;
//  keyboardHID.key = 0;
//
//  keyboardHID.key = c;
//  keyboardHID.modifiers = mod;
//  USBD_HID_SendReport(&hUsbDeviceFS, &keyboardHID, sizeof(struct keyboardHID_t));
//  HAL_Delay(10);
//  keyboardHID.modifiers = 0;
//  keyboardHID.key = 0;
//  USBD_HID_SendReport(&hUsbDeviceFS, &keyboardHID, sizeof(struct keyboardHID_t));
//  HAL_Delay(10);

  uint8_t press_report[4] = {0x00};
  press_report[0] = 0x01;
  press_report[1] = mod;
  press_report[3] = c;
  USBD_HID_SendReport(&hUsbDeviceFS, press_report, 4);
  HAL_Delay(10);
  press_report[0] = 0x01;
  press_report[1] = 0;
  press_report[3] = 0;
  USBD_HID_SendReport(&hUsbDeviceFS, press_report, 4);
  HAL_Delay(10);
}
