EESchema Schematic File Version 2
LIBS:BadUSB-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:BadUSB-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 5A71D9A1
P 9650 1700
F 0 "D1" H 9650 1800 50  0000 C CNN
F 1 "LED" H 9650 1600 50  0000 C CNN
F 2 "w_smd_leds:Led_0603" H 9650 1700 50  0001 C CNN
F 3 "" H 9650 1700 50  0001 C CNN
	1    9650 1700
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5A71DA28
P 9650 2050
F 0 "D2" H 9650 2150 50  0000 C CNN
F 1 "LED" V 9650 1950 50  0000 C CNN
F 2 "w_smd_leds:Led_0603" H 9650 2050 50  0001 C CNN
F 3 "" H 9650 2050 50  0001 C CNN
	1    9650 2050
	-1   0    0    1   
$EndComp
$Comp
L USB_A J2
U 1 1 5A71E8C8
P 9400 3300
F 0 "J2" H 9200 3750 50  0000 L CNN
F 1 "USB_A" H 9200 3650 50  0000 L CNN
F 2 "USB:USB_A_RECEPTACLE" H 9550 3250 50  0001 C CNN
F 3 "" H 9550 3250 50  0001 C CNN
	1    9400 3300
	-1   0    0    1   
$EndComp
$Comp
L STM32F070F6Px U1
U 1 1 5A7495D5
P 5550 3000
F 0 "U1" H 2950 3925 50  0000 L BNN
F 1 "STM32F070F6Px" H 8150 3925 50  0000 R BNN
F 2 "w_smd_dil:tssop-20" H 8150 3875 50  0001 R TNN
F 3 "" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR01
U 1 1 5A749833
P 5500 1700
F 0 "#PWR01" H 5500 1550 50  0001 C CNN
F 1 "+3.3V" H 5500 1840 50  0000 C CNN
F 2 "" H 5500 1700 50  0001 C CNN
F 3 "" H 5500 1700 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2000 5450 1850
Wire Wire Line
	5450 1850 5550 1850
Wire Wire Line
	5550 1850 5550 2000
Wire Wire Line
	5500 1850 5500 1700
Connection ~ 5500 1850
$Comp
L C C2
U 1 1 5A7498E8
P 4900 1400
F 0 "C2" H 4925 1500 50  0000 L CNN
F 1 "100nF" H 4925 1300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 4938 1250 50  0001 C CNN
F 3 "" H 4900 1400 50  0001 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A749A5F
P 5150 1400
F 0 "C3" H 5175 1500 50  0000 L CNN
F 1 "4.7uF" H 5175 1300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 5188 1250 50  0001 C CNN
F 3 "" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5A749A92
P 5750 1400
F 0 "C4" H 5775 1500 50  0000 L CNN
F 1 "10nF" H 5775 1300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 5788 1250 50  0001 C CNN
F 3 "" H 5750 1400 50  0001 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A749AC0
P 6000 1400
F 0 "C5" H 6025 1500 50  0000 L CNN
F 1 "1uF" H 6025 1300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6038 1250 50  0001 C CNN
F 3 "" H 6000 1400 50  0001 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR02
U 1 1 5A749B3B
P 4900 1150
F 0 "#PWR02" H 4900 1000 50  0001 C CNN
F 1 "+3.3V" H 4900 1290 50  0000 C CNN
F 2 "" H 4900 1150 50  0001 C CNN
F 3 "" H 4900 1150 50  0001 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR03
U 1 1 5A749B61
P 5150 1150
F 0 "#PWR03" H 5150 1000 50  0001 C CNN
F 1 "+3.3V" H 5150 1290 50  0000 C CNN
F 2 "" H 5150 1150 50  0001 C CNN
F 3 "" H 5150 1150 50  0001 C CNN
	1    5150 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR04
U 1 1 5A749B87
P 5750 1150
F 0 "#PWR04" H 5750 1000 50  0001 C CNN
F 1 "+3.3V" H 5750 1290 50  0000 C CNN
F 2 "" H 5750 1150 50  0001 C CNN
F 3 "" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR05
U 1 1 5A749BAD
P 6000 1150
F 0 "#PWR05" H 6000 1000 50  0001 C CNN
F 1 "+3.3V" H 6000 1290 50  0000 C CNN
F 2 "" H 6000 1150 50  0001 C CNN
F 3 "" H 6000 1150 50  0001 C CNN
	1    6000 1150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR06
U 1 1 5A749BCC
P 4900 1650
F 0 "#PWR06" H 4900 1400 50  0001 C CNN
F 1 "GND" H 4900 1500 50  0000 C CNN
F 2 "" H 4900 1650 50  0001 C CNN
F 3 "" H 4900 1650 50  0001 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR07
U 1 1 5A749BF9
P 5150 1650
F 0 "#PWR07" H 5150 1400 50  0001 C CNN
F 1 "GND" H 5150 1500 50  0000 C CNN
F 2 "" H 5150 1650 50  0001 C CNN
F 3 "" H 5150 1650 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR08
U 1 1 5A749C1F
P 5750 1650
F 0 "#PWR08" H 5750 1400 50  0001 C CNN
F 1 "GND" H 5750 1500 50  0000 C CNN
F 2 "" H 5750 1650 50  0001 C CNN
F 3 "" H 5750 1650 50  0001 C CNN
	1    5750 1650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR09
U 1 1 5A749C45
P 6000 1650
F 0 "#PWR09" H 6000 1400 50  0001 C CNN
F 1 "GND" H 6000 1500 50  0000 C CNN
F 2 "" H 6000 1650 50  0001 C CNN
F 3 "" H 6000 1650 50  0001 C CNN
	1    6000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1150 4900 1250
Wire Wire Line
	5150 1150 5150 1250
Wire Wire Line
	5750 1150 5750 1250
Wire Wire Line
	6000 1150 6000 1250
Wire Wire Line
	6000 1550 6000 1650
Wire Wire Line
	5750 1550 5750 1650
Wire Wire Line
	5150 1550 5150 1650
Wire Wire Line
	4900 1550 4900 1650
$Comp
L GND-RESCUE-BadUSB #PWR010
U 1 1 5A749DB5
P 5550 3950
F 0 "#PWR010" H 5550 3700 50  0001 C CNN
F 1 "GND" H 5550 3800 50  0000 C CNN
F 2 "" H 5550 3950 50  0001 C CNN
F 3 "" H 5550 3950 50  0001 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3900 5550 3950
$Comp
L C C1
U 1 1 5A74A845
P 2150 2650
F 0 "C1" H 2175 2750 50  0000 L CNN
F 1 "100nF" H 2175 2550 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2188 2500 50  0001 C CNN
F 3 "" H 2150 2650 50  0001 C CNN
	1    2150 2650
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR012
U 1 1 5A74A9B1
P 2150 2900
F 0 "#PWR012" H 2150 2650 50  0001 C CNN
F 1 "GND" H 2150 2750 50  0000 C CNN
F 2 "" H 2150 2900 50  0001 C CNN
F 3 "" H 2150 2900 50  0001 C CNN
	1    2150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3200 8250 3200
Wire Wire Line
	8250 3300 9100 3300
$Comp
L GND-RESCUE-BadUSB #PWR013
U 1 1 5A74BD50
P 9400 2800
F 0 "#PWR013" H 9400 2550 50  0001 C CNN
F 1 "GND" H 9400 2650 50  0000 C CNN
F 2 "" H 9400 2800 50  0001 C CNN
F 3 "" H 9400 2800 50  0001 C CNN
	1    9400 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2800 9400 2900
$Comp
L MCP1700-3302E_SOT23 U3
U 1 1 5A74BF41
P 7950 1000
F 0 "U3" H 7800 1125 50  0000 C CNN
F 1 "MCP1700-3302E_SOT23" H 7950 1125 50  0000 L CNN
F 2 "w_smd_trans:sot23" H 7950 1225 50  0001 C CNN
F 3 "" H 7950 1000 50  0001 C CNN
	1    7950 1000
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A74C0FF
P 7450 1250
F 0 "C6" H 7475 1350 50  0000 L CNN
F 1 "1uF" H 7475 1150 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 7488 1100 50  0001 C CNN
F 3 "" H 7450 1250 50  0001 C CNN
	1    7450 1250
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5A74C207
P 8450 1250
F 0 "C7" H 8475 1350 50  0000 L CNN
F 1 "1uF" H 8475 1150 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 8488 1100 50  0001 C CNN
F 3 "" H 8450 1250 50  0001 C CNN
	1    8450 1250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR014
U 1 1 5A74C32B
P 7950 1500
F 0 "#PWR014" H 7950 1250 50  0001 C CNN
F 1 "GND" H 7950 1350 50  0000 C CNN
F 2 "" H 7950 1500 50  0001 C CNN
F 3 "" H 7950 1500 50  0001 C CNN
	1    7950 1500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR015
U 1 1 5A74C377
P 8450 800
F 0 "#PWR015" H 8450 650 50  0001 C CNN
F 1 "+3.3V" H 8450 940 50  0000 C CNN
F 2 "" H 8450 800 50  0001 C CNN
F 3 "" H 8450 800 50  0001 C CNN
	1    8450 800 
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR016
U 1 1 5A74C4A0
P 9000 3500
F 0 "#PWR016" H 9000 3350 50  0001 C CNN
F 1 "VBUS" H 9000 3650 50  0000 C CNN
F 2 "" H 9000 3500 50  0001 C CNN
F 3 "" H 9000 3500 50  0001 C CNN
	1    9000 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 3500 9000 3500
$Comp
L VBUS #PWR017
U 1 1 5A74C6AB
P 7450 800
F 0 "#PWR017" H 7450 650 50  0001 C CNN
F 1 "VBUS" H 7450 950 50  0000 C CNN
F 2 "" H 7450 800 50  0001 C CNN
F 3 "" H 7450 800 50  0001 C CNN
	1    7450 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 800  7450 1100
Wire Wire Line
	7650 1000 7450 1000
Connection ~ 7450 1000
Wire Wire Line
	7950 1300 7950 1500
Wire Wire Line
	8450 800  8450 1100
Wire Wire Line
	8250 1000 8450 1000
Connection ~ 8450 1000
$Comp
L GND-RESCUE-BadUSB #PWR018
U 1 1 5A74C930
P 7450 1500
F 0 "#PWR018" H 7450 1250 50  0001 C CNN
F 1 "GND" H 7450 1350 50  0000 C CNN
F 2 "" H 7450 1500 50  0001 C CNN
F 3 "" H 7450 1500 50  0001 C CNN
	1    7450 1500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR019
U 1 1 5A74C962
P 8450 1500
F 0 "#PWR019" H 8450 1250 50  0001 C CNN
F 1 "GND" H 8450 1350 50  0000 C CNN
F 2 "" H 8450 1500 50  0001 C CNN
F 3 "" H 8450 1500 50  0001 C CNN
	1    8450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1400 8450 1500
Wire Wire Line
	7450 1400 7450 1500
Wire Wire Line
	2850 2400 2150 2400
Wire Wire Line
	2150 2400 2150 2500
Wire Wire Line
	2150 2800 2150 2900
Text Label 2150 2400 0    60   ~ 0
NRST
Text Notes 8350 4050 0    60   ~ 0
On STM32F070C6/F6 devices, pin pair PA11/12 can be \nremapped instead of pin pair PA9/10 using SYSCFG_CFGR1 \nregister.
Wire Wire Line
	8250 3500 8650 3500
Wire Wire Line
	8250 3400 8650 3400
Text Label 8400 3400 0    60   ~ 0
SWDIO
Text Label 8400 3500 0    60   ~ 0
SWCLK
$Comp
L Conn_02x03_Counter_Clockwise J1
U 1 1 5A74D7DD
P 9150 4600
F 0 "J1" H 9200 4800 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 9200 4400 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_2mm_3x2" H 9150 4600 50  0001 C CNN
F 3 "" H 9150 4600 50  0001 C CNN
	1    9150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR020
U 1 1 5A74DB40
P 8850 4400
F 0 "#PWR020" H 8850 4150 50  0001 C CNN
F 1 "GND" H 8850 4250 50  0000 C CNN
F 2 "" H 8850 4400 50  0001 C CNN
F 3 "" H 8850 4400 50  0001 C CNN
	1    8850 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 4500 8850 4500
Wire Wire Line
	8850 4500 8850 4400
Wire Wire Line
	8950 4600 8650 4600
$Comp
L GND-RESCUE-BadUSB #PWR021
U 1 1 5A74DCAC
P 8850 4850
F 0 "#PWR021" H 8850 4600 50  0001 C CNN
F 1 "GND" H 8850 4700 50  0000 C CNN
F 2 "" H 8850 4850 50  0001 C CNN
F 3 "" H 8850 4850 50  0001 C CNN
	1    8850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4700 8850 4700
Wire Wire Line
	8850 4700 8850 4850
Wire Wire Line
	9450 4700 9800 4700
Text Label 9500 4700 0    60   ~ 0
SWDIO
Text Label 8650 4600 0    60   ~ 0
SWCLK
Wire Wire Line
	9450 4600 9800 4600
Text Label 9500 4600 0    60   ~ 0
NRST
$Comp
L VBUS #PWR022
U 1 1 5A74E17C
P 9550 4400
F 0 "#PWR022" H 9550 4250 50  0001 C CNN
F 1 "VBUS" H 9550 4550 50  0000 C CNN
F 2 "" H 9550 4400 50  0001 C CNN
F 3 "" H 9550 4400 50  0001 C CNN
	1    9550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4500 9550 4500
Wire Wire Line
	9550 4500 9550 4400
$Comp
L SW_Push SW1
U 1 1 5A74F71E
P 2900 1350
F 0 "SW1" H 2950 1450 50  0000 L CNN
F 1 "SW_Push" H 2900 1290 50  0000 C CNN
F 2 "w_switch:smd_push" H 2900 1550 50  0001 C CNN
F 3 "" H 2900 1550 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-BadUSB #PWR023
U 1 1 5A74FD93
P 3250 1200
F 0 "#PWR023" H 3250 1050 50  0001 C CNN
F 1 "+3.3V" H 3250 1340 50  0000 C CNN
F 2 "" H 3250 1200 50  0001 C CNN
F 3 "" H 3250 1200 50  0001 C CNN
	1    3250 1200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A74FE5E
P 2550 1600
F 0 "R2" V 2630 1600 50  0000 C CNN
F 1 "4.7kR" V 2550 1600 50  0000 C CNN
F 2 "w_smd_resistors:r_0603" V 2480 1600 50  0001 C CNN
F 3 "" H 2550 1600 50  0001 C CNN
	1    2550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR024
U 1 1 5A74FFB5
P 2550 1850
F 0 "#PWR024" H 2550 1600 50  0001 C CNN
F 1 "GND" H 2550 1700 50  0000 C CNN
F 2 "" H 2550 1850 50  0001 C CNN
F 3 "" H 2550 1850 50  0001 C CNN
	1    2550 1850
	1    0    0    -1  
$EndComp
Connection ~ 2550 1350
$Comp
L R R3
U 1 1 5A75062C
P 10100 1700
F 0 "R3" V 10180 1700 50  0000 C CNN
F 1 "4.7kR" V 10100 1700 50  0000 C CNN
F 2 "w_smd_resistors:r_0603" V 10030 1700 50  0001 C CNN
F 3 "" H 10100 1700 50  0001 C CNN
	1    10100 1700
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A75069E
P 10100 2050
F 0 "R4" V 10180 2050 50  0000 C CNN
F 1 "4.7kR" V 10100 2050 50  0000 C CNN
F 2 "w_smd_resistors:r_0603" V 10030 2050 50  0001 C CNN
F 3 "" H 10100 2050 50  0001 C CNN
	1    10100 2050
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR025
U 1 1 5A7506F5
P 10350 2150
F 0 "#PWR025" H 10350 1900 50  0001 C CNN
F 1 "GND" H 10350 2000 50  0000 C CNN
F 2 "" H 10350 2150 50  0001 C CNN
F 3 "" H 10350 2150 50  0001 C CNN
	1    10350 2150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-BadUSB #PWR026
U 1 1 5A750739
P 10350 1800
F 0 "#PWR026" H 10350 1550 50  0001 C CNN
F 1 "GND" H 10350 1650 50  0000 C CNN
F 2 "" H 10350 1800 50  0001 C CNN
F 3 "" H 10350 1800 50  0001 C CNN
	1    10350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1700 9950 1700
Wire Wire Line
	9800 2050 9950 2050
Wire Wire Line
	10250 1700 10350 1700
Wire Wire Line
	10350 1700 10350 1800
Wire Wire Line
	10250 2050 10350 2050
Wire Wire Line
	10350 2050 10350 2150
Wire Wire Line
	9500 1700 9200 1700
Wire Wire Line
	9500 2050 9200 2050
Wire Wire Line
	8250 2800 8550 2800
Text Label 9200 1700 0    60   ~ 0
LED1
Text Label 9200 2050 0    60   ~ 0
LED2
Text Label 8350 2800 0    60   ~ 0
LED1
Text Label 8350 2700 0    60   ~ 0
LED2
NoConn ~ 8250 2400
NoConn ~ 8250 2600
NoConn ~ 8250 3000
NoConn ~ 8250 3100
NoConn ~ 2850 3500
Text Label 8850 3200 0    60   ~ 0
D-
Text Label 8850 3300 0    60   ~ 0
D+
Wire Wire Line
	8250 2700 8550 2700
NoConn ~ 8250 2900
NoConn ~ 2850 3200
NoConn ~ 2850 3300
Wire Wire Line
	9400 2850 9500 2850
Wire Wire Line
	9500 2850 9500 2900
Connection ~ 9400 2850
Wire Wire Line
	2150 1350 2700 1350
NoConn ~ 8250 2500
Wire Wire Line
	2500 2600 2850 2600
Text Label 2500 2600 0    60   ~ 0
BOOT0
Text Label 2150 1350 0    60   ~ 0
BOOT0
Wire Wire Line
	2550 1750 2550 1850
Wire Wire Line
	2550 1450 2550 1350
Wire Wire Line
	3100 1350 3250 1350
Wire Wire Line
	3250 1350 3250 1200
$EndSCHEMATC