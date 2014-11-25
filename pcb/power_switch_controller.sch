EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:power_switch_controller
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "power_switch_controller"
Date ""
Rev "1.0"
Comp "Janelia"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ARDUINO_MEGA_SHIELD_FULL SHIELD?
U 1 1 5474AAA1
P 2450 3550
F 0 "SHIELD?" H 2500 6300 60  0000 C CNN
F 1 "ARDUINO_MEGA_SHIELD_FULL" H 2350 850 60  0000 C CNN
F 2 "" H 2450 3550 60  0000 C CNN
F 3 "" H 2450 3550 60  0000 C CNN
	1    2450 3550
	1    0    0    -1  
$EndComp
NoConn ~ 1300 1500
Wire Wire Line
	1300 1600 900  1600
Text Label 900  1600 0    60   ~ 0
RST
NoConn ~ 1300 1700
$Comp
L +5V #PWR?
U 1 1 5474AD6E
P 800 1450
F 0 "#PWR?" H 800 1540 20  0001 C CNN
F 1 "+5V" H 800 1540 30  0000 C CNN
F 2 "" H 800 1450 60  0000 C CNN
F 3 "" H 800 1450 60  0000 C CNN
	1    800  1450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5474AD82
P 650 1450
F 0 "#FLG?" H 650 1545 30  0001 C CNN
F 1 "PWR_FLAG" H 650 1630 30  0000 C CNN
F 2 "" H 650 1450 60  0000 C CNN
F 3 "" H 650 1450 60  0000 C CNN
	1    650  1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1450 650  1800
Wire Wire Line
	650  1800 1300 1800
Wire Wire Line
	800  1450 800  1800
Connection ~ 800  1800
$Comp
L GND #PWR?
U 1 1 5474ADAC
P 800 2050
F 0 "#PWR?" H 800 2050 30  0001 C CNN
F 1 "GND" H 800 1980 30  0001 C CNN
F 2 "" H 800 2050 60  0000 C CNN
F 3 "" H 800 2050 60  0000 C CNN
	1    800  2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1900 800  1900
Wire Wire Line
	800  1900 800  2050
Wire Wire Line
	1300 2000 800  2000
Connection ~ 800  2000
Wire Wire Line
	1300 4500 900  4500
Wire Wire Line
	1300 4600 900  4600
Wire Wire Line
	1300 4700 900  4700
Text Label 900  4500 0    60   ~ 0
SCK
Text Label 900  4600 0    60   ~ 0
MOSI
Text Label 900  4700 0    60   ~ 0
MISO
Wire Wire Line
	1300 4850 900  4850
Wire Wire Line
	1300 4950 900  4950
Text Label 900  4850 0    60   ~ 0
CS
Text Label 900  4950 0    60   ~ 0
IN
NoConn ~ 1300 2100
NoConn ~ 1300 2300
NoConn ~ 1300 2400
NoConn ~ 1300 2500
NoConn ~ 1300 2600
NoConn ~ 1300 2700
NoConn ~ 1300 2800
NoConn ~ 1300 2900
NoConn ~ 1300 3000
NoConn ~ 1300 3200
NoConn ~ 1300 3300
NoConn ~ 1300 3400
NoConn ~ 1300 3500
NoConn ~ 1300 3600
NoConn ~ 1300 3700
NoConn ~ 1300 3800
NoConn ~ 1300 3900
NoConn ~ 1300 4150
NoConn ~ 1300 4250
NoConn ~ 1300 4400
NoConn ~ 1300 5050
NoConn ~ 1300 5150
NoConn ~ 1300 5250
NoConn ~ 1300 5350
NoConn ~ 1300 5450
NoConn ~ 1300 5550
NoConn ~ 1300 5700
NoConn ~ 1300 5800
NoConn ~ 1300 5900
NoConn ~ 1300 6000
NoConn ~ 3500 1000
NoConn ~ 3500 1100
NoConn ~ 3500 1200
NoConn ~ 3500 1300
NoConn ~ 3500 1400
NoConn ~ 3500 1500
NoConn ~ 3500 1600
NoConn ~ 3500 1700
NoConn ~ 3500 1800
NoConn ~ 3500 1900
NoConn ~ 3500 2100
NoConn ~ 3500 2200
NoConn ~ 3500 2300
NoConn ~ 3500 2400
NoConn ~ 3500 2500
NoConn ~ 3500 2600
NoConn ~ 3500 2700
NoConn ~ 3500 2800
NoConn ~ 3500 3000
NoConn ~ 3500 3100
NoConn ~ 3500 3200
NoConn ~ 3500 3300
NoConn ~ 3500 3400
NoConn ~ 3500 3500
NoConn ~ 3500 3600
NoConn ~ 3500 3700
NoConn ~ 3500 3950
NoConn ~ 3500 4050
NoConn ~ 3500 4200
NoConn ~ 3500 4300
NoConn ~ 3500 4400
NoConn ~ 3500 4500
NoConn ~ 3500 4600
NoConn ~ 3500 4700
NoConn ~ 3500 4800
NoConn ~ 3500 4900
NoConn ~ 3500 5050
NoConn ~ 3500 5150
NoConn ~ 3500 5250
NoConn ~ 3500 5350
NoConn ~ 3500 5450
NoConn ~ 3500 5550
NoConn ~ 3500 5650
NoConn ~ 3500 5750
$EndSCHEMATC
