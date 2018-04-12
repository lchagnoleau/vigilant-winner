/*
 * usb.h
 *
 *  Created on: 12 avr. 2018
 *      Author: lchagnoleau
 */

#ifndef USB_H_
#define USB_H_

#include "hid_usage_keyboard.h"

void USB_init(void);
void USB_send_char(unsigned char c, unsigned char mod);

#endif /* USB_H_ */
