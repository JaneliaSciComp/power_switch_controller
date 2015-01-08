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
LIBS:components
LIBS:power_switch_controller-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
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
NoConn ~ 1350 1300
NoConn ~ 1350 1500
$Comp
L +5V #PWR01
U 1 1 5474AD6E
P 850 1250
F 0 "#PWR01" H 850 1340 20  0001 C CNN
F 1 "+5V" H 850 1340 30  0000 C CNN
F 2 "" H 850 1250 60  0000 C CNN
F 3 "" H 850 1250 60  0000 C CNN
	1    850  1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5474AD82
P 700 1250
F 0 "#FLG02" H 700 1345 30  0001 C CNN
F 1 "PWR_FLAG" H 700 1430 30  0000 C CNN
F 2 "" H 700 1250 60  0000 C CNN
F 3 "" H 700 1250 60  0000 C CNN
	1    700  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1250 700  1600
Wire Wire Line
	700  1600 1350 1600
Wire Wire Line
	850  1250 850  1600
Connection ~ 850  1600
$Comp
L GND #PWR03
U 1 1 5474ADAC
P 850 1850
F 0 "#PWR03" H 850 1850 30  0001 C CNN
F 1 "GND" H 850 1780 30  0001 C CNN
F 2 "" H 850 1850 60  0000 C CNN
F 3 "" H 850 1850 60  0000 C CNN
	1    850  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1700 850  1700
Wire Wire Line
	850  1700 850  1850
Wire Wire Line
	1350 1800 850  1800
Connection ~ 850  1800
NoConn ~ 1350 2300
NoConn ~ 1350 2400
NoConn ~ 1350 2500
NoConn ~ 1350 2600
NoConn ~ 1350 2700
NoConn ~ 1350 2800
NoConn ~ 1350 3000
NoConn ~ 1350 3100
NoConn ~ 1350 3200
NoConn ~ 1350 3300
NoConn ~ 1350 3400
NoConn ~ 1350 3500
NoConn ~ 1350 3600
NoConn ~ 1350 3700
NoConn ~ 1350 3950
NoConn ~ 1350 4050
NoConn ~ 1350 4850
NoConn ~ 1350 4950
NoConn ~ 1350 5050
NoConn ~ 1350 5150
NoConn ~ 1350 5250
NoConn ~ 1350 5350
NoConn ~ 1350 5500
NoConn ~ 1350 5600
NoConn ~ 3550 1000
NoConn ~ 3550 1100
NoConn ~ 3550 1300
NoConn ~ 3550 1400
NoConn ~ 3550 1500
NoConn ~ 3550 1600
NoConn ~ 3550 2000
NoConn ~ 3550 2100
NoConn ~ 3550 2200
NoConn ~ 3550 2500
NoConn ~ 3550 2600
NoConn ~ 3550 2900
NoConn ~ 3550 3000
NoConn ~ 3550 3100
NoConn ~ 3550 3750
NoConn ~ 3550 3850
NoConn ~ 3550 4400
NoConn ~ 3550 4500
NoConn ~ 3550 4600
NoConn ~ 3550 4700
NoConn ~ 3550 4850
NoConn ~ 3550 4950
NoConn ~ 3550 5050
NoConn ~ 3550 5150
NoConn ~ 3550 5250
NoConn ~ 3550 5350
NoConn ~ 3550 5450
NoConn ~ 3550 5550
$Comp
L GND #PWR04
U 1 1 5474C6BF
P 5900 1150
F 0 "#PWR04" H 5900 1150 30  0001 C CNN
F 1 "GND" H 5900 1080 30  0001 C CNN
F 2 "" H 5900 1150 60  0000 C CNN
F 3 "" H 5900 1150 60  0000 C CNN
	1    5900 1150
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR05
U 1 1 5474C6E7
P 5900 850
F 0 "#PWR05" H 5900 910 30  0001 C CNN
F 1 "VAA" H 5900 960 30  0000 C CNN
F 2 "" H 5900 850 60  0000 C CNN
F 3 "" H 5900 850 60  0000 C CNN
	1    5900 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 5474C703
P 5750 850
F 0 "#FLG06" H 5750 945 30  0001 C CNN
F 1 "PWR_FLAG" H 5750 1030 30  0000 C CNN
F 2 "" H 5750 850 60  0000 C CNN
F 3 "" H 5750 850 60  0000 C CNN
	1    5750 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 5474C71B
P 5550 950
F 0 "#FLG07" H 5550 1045 30  0001 C CNN
F 1 "PWR_FLAG" H 5550 1130 30  0000 C CNN
F 2 "" H 5550 950 60  0000 C CNN
F 3 "" H 5550 950 60  0000 C CNN
	1    5550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 950  6000 950 
Wire Wire Line
	5750 950  5750 850 
Wire Wire Line
	5900 850  5900 950 
Connection ~ 5900 950 
Wire Wire Line
	5550 1050 6000 1050
Wire Wire Line
	5550 1050 5550 950 
Wire Wire Line
	5900 1050 5900 1150
Connection ~ 5900 1050
Wire Wire Line
	1350 1900 1000 1900
Text Label 1000 1900 0    60   ~ 0
V_IN
Wire Wire Line
	5750 6700 5850 6700
Text Label 5850 6700 0    60   ~ 0
TX3
$Comp
L GND #PWR08
U 1 1 547CAD2F
P 6150 6750
F 0 "#PWR08" H 6150 6750 30  0001 C CNN
F 1 "GND" H 6150 6680 30  0001 C CNN
F 2 "" H 6150 6750 60  0000 C CNN
F 3 "" H 6150 6750 60  0000 C CNN
	1    6150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6500 6150 6750
Wire Wire Line
	5750 6600 6150 6600
Connection ~ 6150 6600
$Comp
L +5V #PWR09
U 1 1 547CAD87
P 5850 6000
F 0 "#PWR09" H 5850 6090 20  0001 C CNN
F 1 "+5V" H 5850 6090 30  0000 C CNN
F 2 "" H 5850 6000 60  0000 C CNN
F 3 "" H 5850 6000 60  0000 C CNN
	1    5850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6100 6150 6050
Wire Wire Line
	6150 6050 5850 6050
Wire Wire Line
	5850 6000 5850 6500
Wire Wire Line
	5850 6500 5750 6500
Connection ~ 5850 6050
$Comp
L GND #PWR010
U 1 1 547CC155
P 700 7400
F 0 "#PWR010" H 700 7400 30  0001 C CNN
F 1 "GND" H 700 7330 30  0001 C CNN
F 2 "" H 700 7400 60  0000 C CNN
F 3 "" H 700 7400 60  0000 C CNN
	1    700  7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  7150 700  7400
$Comp
L VAA #PWR011
U 1 1 547CC477
P 6700 700
F 0 "#PWR011" H 6700 760 30  0001 C CNN
F 1 "VAA" H 6700 810 30  0000 C CNN
F 2 "" H 6700 700 60  0000 C CNN
F 3 "" H 6700 700 60  0000 C CNN
	1    6700 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 547CC4E0
P 7300 1450
F 0 "#PWR012" H 7300 1450 30  0001 C CNN
F 1 "GND" H 7300 1380 30  0001 C CNN
F 2 "" H 7300 1450 60  0000 C CNN
F 3 "" H 7300 1450 60  0000 C CNN
	1    7300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1200 7300 1450
Wire Wire Line
	6650 1300 6650 1350
Wire Wire Line
	6650 1350 7950 1350
Connection ~ 7300 1350
Wire Wire Line
	7950 1350 7950 1300
Wire Wire Line
	6650 900  6650 850 
Wire Wire Line
	6650 850  6900 850 
Wire Wire Line
	7700 850  8200 850 
Wire Wire Line
	7950 900  7950 850 
Connection ~ 7950 850 
Text Label 8200 850  0    60   ~ 0
V_IN
Wire Wire Line
	6700 700  6700 850 
Connection ~ 6700 850 
$Comp
L GND #PWR013
U 1 1 547CCEC8
P 2100 7350
F 0 "#PWR013" H 2100 7350 30  0001 C CNN
F 1 "GND" H 2100 7280 30  0001 C CNN
F 2 "" H 2100 7350 60  0000 C CNN
F 3 "" H 2100 7350 60  0000 C CNN
	1    2100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7200 2100 7200
Wire Wire Line
	2100 7200 2100 7350
Wire Wire Line
	1700 7100 1800 7100
Wire Wire Line
	1700 7000 1800 7000
$Comp
L +5V #PWR014
U 1 1 547CCFDF
P 2750 6500
F 0 "#PWR014" H 2750 6590 20  0001 C CNN
F 1 "+5V" H 2750 6590 30  0000 C CNN
F 2 "" H 2750 6500 60  0000 C CNN
F 3 "" H 2750 6500 60  0000 C CNN
	1    2750 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6700 2750 6700
Wire Wire Line
	2750 6700 2750 6500
Wire Wire Line
	2650 6800 2650 6700
Connection ~ 2650 6700
Wire Wire Line
	2400 6800 2400 6700
Connection ~ 2400 6700
Wire Wire Line
	1700 6800 2300 6800
Wire Wire Line
	2300 6800 2300 7350
Wire Wire Line
	2300 7350 2900 7350
Wire Wire Line
	1700 6900 2250 6900
Wire Wire Line
	2250 6900 2250 7450
Wire Wire Line
	2250 7450 2900 7450
Text Label 1800 7000 0    60   ~ 0
ENC_BTN
Text Label 2900 7350 0    60   ~ 0
ENC_A
Text Label 2900 7450 0    60   ~ 0
ENC_B
Wire Wire Line
	2400 7300 2400 7350
Connection ~ 2400 7350
Wire Wire Line
	2650 7300 2650 7450
Connection ~ 2650 7450
Wire Wire Line
	1800 7100 1800 7200
Connection ~ 1800 7200
Wire Wire Line
	3450 6950 3050 6950
Text Label 3050 6950 0    60   ~ 0
ENC_BTN
Wire Wire Line
	4250 6950 4450 6950
Text Label 4450 6950 0    60   ~ 0
D_ENC_BTN
$Comp
L GND #PWR015
U 1 1 547CEB52
P 3850 7650
F 0 "#PWR015" H 3850 7650 30  0001 C CNN
F 1 "GND" H 3850 7580 30  0001 C CNN
F 2 "" H 3850 7650 60  0000 C CNN
F 3 "" H 3850 7650 60  0000 C CNN
	1    3850 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7500 3850 7650
$Comp
L GND #PWR016
U 1 1 547CEC89
P 4700 6700
F 0 "#PWR016" H 4700 6700 30  0001 C CNN
F 1 "GND" H 4700 6630 30  0001 C CNN
F 2 "" H 4700 6700 60  0000 C CNN
F 3 "" H 4700 6700 60  0000 C CNN
	1    4700 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6550 4700 6700
$Comp
L +5V #PWR017
U 1 1 547CED48
P 4700 5950
F 0 "#PWR017" H 4700 6040 20  0001 C CNN
F 1 "+5V" H 4700 6040 30  0000 C CNN
F 2 "" H 4700 5950 60  0000 C CNN
F 3 "" H 4700 5950 60  0000 C CNN
	1    4700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5950 4700 6150
Wire Wire Line
	4700 6050 4450 6050
Wire Wire Line
	4450 6050 4450 6700
Wire Wire Line
	4450 6700 4250 6700
Connection ~ 4700 6050
$Comp
L VAA #PWR018
U 1 1 547DE3D4
P 5100 700
F 0 "#PWR018" H 5100 760 30  0001 C CNN
F 1 "VAA" H 5100 810 30  0000 C CNN
F 2 "" H 5100 700 60  0000 C CNN
F 3 "" H 5100 700 60  0000 C CNN
	1    5100 700 
	1    0    0    -1  
$EndComp
Text Label 1000 1700 0    60   ~ 0
GND
$Comp
L PWR_JACK_2.5x5.5 P1
U 1 1 5488FCDE
P 6200 1000
F 0 "P1" H 6200 1150 50  0000 C CNN
F 1 "PWR_JACK_2.5x5.5" V 6300 1000 50  0000 C CNN
F 2 "power_switch_controller:DCJACK_2PIN_HIGHCURRENT" H 6100 1050 60  0001 C CNN
F 3 "" H 6200 1000 60  0000 C CNN
F 4 "digikey" H 6300 1250 60  0001 C CNN "Vendor"
F 5 "CP-063BH-ND" H 6400 1350 60  0001 C CNN "PartNumber"
F 6 "CONN PWR JACK DC 2.5X5.5 8A T/H" H 6500 1450 60  0001 C CNN "Description"
	1    6200 1000
	1    0    0    -1  
$EndComp
$Comp
L LED_24V D1
U 1 1 54891A64
P 700 6950
F 0 "D1" H 700 7050 50  0000 C CNN
F 1 "LED_24V" H 700 6850 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 600 6950 60  0001 C CNN
F 3 "" H 700 6950 60  0000 C CNN
F 4 "digikey" H 800 7150 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 900 7250 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 1000 7350 60  0001 C CNN "Description"
	1    700  6950
	0    1    1    0   
$EndComp
$Comp
L 10uF C1
U 1 1 548925C4
P 6650 1100
F 0 "C1" H 6650 1200 40  0000 L CNN
F 1 "10uF" H 6656 1015 40  0000 L CNN
F 2 "power_switch_controller:SM1210" H 6688 950 30  0001 C CNN
F 3 "" H 6650 1100 60  0000 C CNN
F 4 "digikey" H 6750 1300 60  0001 C CNN "Vendor"
F 5 "445-4536-1-ND" H 6850 1400 60  0001 C CNN "PartNumber"
F 6 "CAP CER 10UF 50V 10% X7S 1210" H 6950 1500 60  0001 C CNN "Description"
	1    6650 1100
	1    0    0    -1  
$EndComp
$Comp
L 10uF C2
U 1 1 54892682
P 7950 1100
F 0 "C2" H 7950 1200 40  0000 L CNN
F 1 "10uF" H 7956 1015 40  0000 L CNN
F 2 "power_switch_controller:SM1210" H 7988 950 30  0001 C CNN
F 3 "" H 7950 1100 60  0000 C CNN
F 4 "digikey" H 8050 1300 60  0001 C CNN "Vendor"
F 5 "445-4536-1-ND" H 8150 1400 60  0001 C CNN "PartNumber"
F 6 "CAP CER 10UF 50V 10% X7S 1210" H 8250 1500 60  0001 C CNN "Description"
	1    7950 1100
	1    0    0    -1  
$EndComp
$Comp
L 10uF C3
U 1 1 5489288F
P 6150 6300
F 0 "C3" H 6150 6400 40  0000 L CNN
F 1 "10uF" H 6156 6215 40  0000 L CNN
F 2 "power_switch_controller:SM1210" H 6188 6150 30  0001 C CNN
F 3 "" H 6150 6300 60  0000 C CNN
F 4 "digikey" H 6250 6500 60  0001 C CNN "Vendor"
F 5 "445-4536-1-ND" H 6350 6600 60  0001 C CNN "PartNumber"
F 6 "CAP CER 10UF 50V 10% X7S 1210" H 6450 6700 60  0001 C CNN "Description"
	1    6150 6300
	1    0    0    -1  
$EndComp
$Comp
L 0.1uF C4
U 1 1 5489352B
P 4700 6350
F 0 "C4" H 4700 6450 40  0000 L CNN
F 1 "0.1uF" H 4706 6265 40  0000 L CNN
F 2 "power_switch_controller:SM1210" H 4738 6200 30  0001 C CNN
F 3 "" H 4700 6350 60  0000 C CNN
F 4 "digikey" H 4800 6550 60  0001 C CNN "Vendor"
F 5 "478-3586-1-ND" H 4900 6650 60  0001 C CNN "PartNumber"
F 6 "CAP CER 0.1UF 50V 10% X7R 1210" H 5000 6750 60  0001 C CNN "Description"
	1    4700 6350
	1    0    0    -1  
$EndComp
$Comp
L 5.11k R1
U 1 1 54893E85
P 2400 7050
F 0 "R1" V 2480 7050 40  0000 C CNN
F 1 "5.11k" V 2407 7051 40  0000 C CNN
F 2 "power_switch_controller:SM1210" V 2330 7050 30  0001 C CNN
F 3 "" H 2400 7050 30  0000 C CNN
F 4 "digikey" V 2580 7150 60  0001 C CNN "Vendor"
F 5 "P5.11KAACT-ND" V 2680 7250 60  0001 C CNN "PartNumber"
F 6 "RES SMD 5.11K OHM 1% 1/2W 1210" V 2780 7350 60  0001 C CNN "Description"
	1    2400 7050
	1    0    0    -1  
$EndComp
$Comp
L 5.11k R2
U 1 1 54893F36
P 2650 7050
F 0 "R2" V 2730 7050 40  0000 C CNN
F 1 "5.11k" V 2657 7051 40  0000 C CNN
F 2 "power_switch_controller:SM1210" V 2580 7050 30  0001 C CNN
F 3 "" H 2650 7050 30  0000 C CNN
F 4 "digikey" V 2830 7150 60  0001 C CNN "Vendor"
F 5 "P5.11KAACT-ND" V 2930 7250 60  0001 C CNN "PartNumber"
F 6 "RES SMD 5.11K OHM 1% 1/2W 1210" V 3030 7350 60  0001 C CNN "Description"
	1    2650 7050
	1    0    0    -1  
$EndComp
$Comp
L CONV_DC_DC_12V_1A REG1
U 1 1 5489CB72
P 7300 850
F 0 "REG1" H 7500 550 60  0000 C CNN
F 1 "CONV_DC_DC_12V_1A" H 7300 950 60  0000 C CNN
F 2 "power_switch_controller:DC_DC_CONV_R78C" H 7400 450 60  0001 C CNN
F 3 "" H 7300 850 60  0000 C CNN
F 4 "digikey" H 7300 650 60  0001 C CNN "Vendor"
F 5 "945-1392-5-ND" H 7300 750 60  0001 C CNN "PartNumber"
F 6 "CONV DC/DC 1A 12V OUT SIP VERT" H 7800 850 60  0001 C CNN "Description"
	1    7300 850 
	1    0    0    -1  
$EndComp
$Comp
L HEADER_01X03 P2
U 1 1 5489D3E6
P 5550 6600
F 0 "P2" H 5550 6800 50  0000 C CNN
F 1 "HEADER_01X03" V 5650 6600 50  0000 C CNN
F 2 "power_switch_controller:Header_Shrouded_3_Pin" H 5450 6700 60  0001 C CNN
F 3 "" H 5550 6600 60  0000 C CNN
F 4 "digikey" H 5650 6900 60  0001 C CNN "Vendor"
F 5 "609-3461-ND" H 5750 7000 60  0001 C CNN "PartNumber"
F 6 "01x03 .100 SR STRAIGHT" H 5850 7100 60  0001 C CNN "Description"
	1    5550 6600
	-1   0    0    1   
$EndComp
$Comp
L MAX6817 U1
U 1 1 5489DAE1
P 3850 7200
F 0 "U1" H 4100 6950 60  0000 C CNN
F 1 "MAX6817" H 3850 7800 60  0000 C CNN
F 2 "power_switch_controller:MAX6817" H 4000 6850 60  0001 C CNN
F 3 "" H 3850 7200 60  0000 C CNN
F 4 "digikey" H 4200 7050 60  0001 C CNN "Vendor"
F 5 "MAX6817EUT+TCT-ND" H 4300 7150 60  0001 C CNN "PartNumber"
F 6 "IC DEBOUNCER SWITCH DUAL SOT23-6" H 4400 7250 60  0001 C CNN "Description"
	1    3850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1400 1000 1400
Text Label 1000 1400 0    60   ~ 0
RST
NoConn ~ 1350 2100
NoConn ~ 1350 2200
NoConn ~ 3550 1700
NoConn ~ 3550 1900
NoConn ~ 3550 4000
NoConn ~ 3550 4100
NoConn ~ 3550 4200
NoConn ~ 3550 4300
Wire Wire Line
	1000 4300 1350 4300
Wire Wire Line
	1350 4400 1000 4400
Wire Wire Line
	1350 4500 1000 4500
Wire Wire Line
	1350 4650 1000 4650
Wire Wire Line
	1350 4750 1000 4750
Text Label 1000 4300 0    60   ~ 0
SCK
Text Label 1000 4400 0    60   ~ 0
MOSI
Text Label 1000 4500 0    60   ~ 0
MISO
Text Label 1000 4650 0    60   ~ 0
CS
Text Label 1000 4750 0    60   ~ 0
IN
$Comp
L TLE723X U2
U 1 1 548B22AA
P 8550 2050
F 0 "U2" H 8950 2550 60  0000 C CNN
F 1 "TLE723X" H 8550 2550 60  0000 C CNN
F 2 "power_switch_controller:TLE723X" H 8850 2450 60  0001 C CNN
F 3 "" H 8950 2550 60  0000 C CNN
F 4 "digikey" H 9050 2650 60  0001 C CNN "Vendor"
F 5 "TLE7230GCT-ND" H 9150 2750 60  0001 C CNN "PartNumber"
F 6 "IC SW SMART OCTAL LOWSIDE PDSO24" H 9250 2850 60  0001 C CNN "Description"
	1    8550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1900 7800 1900
Wire Wire Line
	8050 2000 7800 2000
Wire Wire Line
	8050 2100 7800 2100
Wire Wire Line
	8050 2200 7800 2200
Wire Wire Line
	8050 2300 7800 2300
Wire Wire Line
	8050 2400 7800 2400
Text Label 7800 1900 0    60   ~ 0
RST
Text Label 7800 2300 0    60   ~ 0
MOSI
Text Label 7800 2000 0    60   ~ 0
IN
Text Label 7800 2100 0    60   ~ 0
CS
Text Label 7800 2200 0    60   ~ 0
SCK
Text Label 7800 2400 0    60   ~ 0
SI1
$Comp
L 0.1uF C5
U 1 1 548B293B
P 7600 2100
F 0 "C5" H 7600 2200 40  0000 L CNN
F 1 "0.1uF" H 7606 2015 40  0000 L CNN
F 2 "power_switch_controller:SM1210" H 7638 1950 30  0001 C CNN
F 3 "" H 7600 2100 60  0000 C CNN
F 4 "digikey" H 7700 2300 60  0001 C CNN "Vendor"
F 5 "478-3586-1-ND" H 7800 2400 60  0001 C CNN "PartNumber"
F 6 "CAP CER 0.1UF 50V 10% X7R 1210" H 7900 2500 60  0001 C CNN "Description"
	1    7600 2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 548B2978
P 7600 1650
F 0 "#PWR019" H 7600 1500 60  0001 C CNN
F 1 "+5V" H 7600 1790 60  0000 C CNN
F 2 "" H 7600 1650 60  0000 C CNN
F 3 "" H 7600 1650 60  0000 C CNN
	1    7600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1650 7600 1900
Wire Wire Line
	8050 1700 7600 1700
Connection ~ 7600 1700
Wire Wire Line
	8050 1800 7600 1800
Connection ~ 7600 1800
$Comp
L GND #PWR020
U 1 1 548B2B28
P 7600 2850
F 0 "#PWR020" H 7600 2600 60  0001 C CNN
F 1 "GND" H 7600 2700 60  0000 C CNN
F 2 "" H 7600 2850 60  0000 C CNN
F 3 "" H 7600 2850 60  0000 C CNN
	1    7600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2800 8900 2750
Wire Wire Line
	7600 2800 8900 2800
Wire Wire Line
	7600 2300 7600 2850
Connection ~ 7600 2800
Wire Wire Line
	8200 2750 8200 2800
Connection ~ 8200 2800
Wire Wire Line
	8300 2750 8300 2800
Connection ~ 8300 2800
Wire Wire Line
	8400 2750 8400 2800
Connection ~ 8400 2800
Wire Wire Line
	8500 2750 8500 2800
Connection ~ 8500 2800
Wire Wire Line
	8600 2750 8600 2800
Connection ~ 8600 2800
Wire Wire Line
	8700 2750 8700 2800
Connection ~ 8700 2800
Wire Wire Line
	8800 2750 8800 2800
Connection ~ 8800 2800
Wire Wire Line
	9050 1700 9150 1700
Wire Wire Line
	9050 1800 9150 1800
Wire Wire Line
	9050 1900 9150 1900
Wire Wire Line
	9050 2000 9150 2000
Wire Wire Line
	9050 2100 9150 2100
Wire Wire Line
	9050 2200 9150 2200
Wire Wire Line
	9050 2300 9150 2300
Wire Wire Line
	9050 2400 9150 2400
Text Label 9150 1700 0    60   ~ 0
OUT0
Text Label 9150 1800 0    60   ~ 0
OUT1
Text Label 9150 1900 0    60   ~ 0
OUT2
Text Label 9150 2000 0    60   ~ 0
OUT3
Text Label 9150 2100 0    60   ~ 0
OUT4
Text Label 9150 2200 0    60   ~ 0
OUT5
Text Label 9150 2300 0    60   ~ 0
OUT6
Text Label 9150 2400 0    60   ~ 0
OUT7
$Comp
L ENCODER_C14 E1
U 1 1 548B5C76
P 1550 6950
F 0 "E1" H 1550 6600 60  0000 C CNN
F 1 "ENCODER_C14" H 1550 7300 60  0000 C CNN
F 2 "power_switch_controller:Micro-MaTch_6_SMD" H 1450 6500 60  0001 C CNN
F 3 "" H 1550 6600 60  0000 C CNN
F 4 "digikey" H 1650 6700 60  0001 C CNN "Vendor"
F 5 "A99474CT-ND" H 1750 6800 60  0001 C CNN "PartNumber"
F 6 "CONN FMALE-ON-BRD 6POS VERT SMD" H 1850 6900 60  0001 C CNN "Description"
	1    1550 6950
	1    0    0    -1  
$EndComp
$Comp
L TLE723X U3
U 1 1 54AADA19
P 8550 3750
F 0 "U3" H 8950 4250 60  0000 C CNN
F 1 "TLE723X" H 8550 4250 60  0000 C CNN
F 2 "power_switch_controller:TLE723X" H 8850 4150 60  0001 C CNN
F 3 "" H 8950 4250 60  0000 C CNN
F 4 "digikey" H 9050 4350 60  0001 C CNN "Vendor"
F 5 "TLE7230GCT-ND" H 9150 4450 60  0001 C CNN "PartNumber"
F 6 "IC SW SMART OCTAL LOWSIDE PDSO24" H 9250 4550 60  0001 C CNN "Description"
	1    8550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3600 7800 3600
Wire Wire Line
	8050 3700 7800 3700
Wire Wire Line
	8050 3800 7800 3800
Wire Wire Line
	8050 3900 7800 3900
Wire Wire Line
	8050 4000 7800 4000
Wire Wire Line
	8050 4100 7800 4100
Text Label 7800 3600 0    60   ~ 0
RST
Text Label 7800 4000 0    60   ~ 0
SI1
Text Label 7800 3700 0    60   ~ 0
IN
Text Label 7800 3800 0    60   ~ 0
CS
Text Label 7800 3900 0    60   ~ 0
SCK
Text Label 7800 4100 0    60   ~ 0
MISO
$Comp
L 0.1uF C6
U 1 1 54AADA2E
P 7600 3800
F 0 "C6" H 7600 3900 40  0000 L CNN
F 1 "0.1uF" H 7606 3715 40  0000 L CNN
F 2 "power_switch_controller:SM1210" H 7638 3650 30  0001 C CNN
F 3 "" H 7600 3800 60  0000 C CNN
F 4 "digikey" H 7700 4000 60  0001 C CNN "Vendor"
F 5 "478-3586-1-ND" H 7800 4100 60  0001 C CNN "PartNumber"
F 6 "CAP CER 0.1UF 50V 10% X7R 1210" H 7900 4200 60  0001 C CNN "Description"
	1    7600 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 54AADA34
P 7600 3350
F 0 "#PWR021" H 7600 3200 60  0001 C CNN
F 1 "+5V" H 7600 3490 60  0000 C CNN
F 2 "" H 7600 3350 60  0000 C CNN
F 3 "" H 7600 3350 60  0000 C CNN
	1    7600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3350 7600 3600
Wire Wire Line
	8050 3400 7600 3400
Connection ~ 7600 3400
Wire Wire Line
	8050 3500 7600 3500
Connection ~ 7600 3500
$Comp
L GND #PWR022
U 1 1 54AADA3F
P 7600 4550
F 0 "#PWR022" H 7600 4300 60  0001 C CNN
F 1 "GND" H 7600 4400 60  0000 C CNN
F 2 "" H 7600 4550 60  0000 C CNN
F 3 "" H 7600 4550 60  0000 C CNN
	1    7600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4500 8900 4450
Wire Wire Line
	7600 4500 8900 4500
Wire Wire Line
	7600 4000 7600 4550
Connection ~ 7600 4500
Wire Wire Line
	8200 4450 8200 4500
Connection ~ 8200 4500
Wire Wire Line
	8300 4450 8300 4500
Connection ~ 8300 4500
Wire Wire Line
	8400 4450 8400 4500
Connection ~ 8400 4500
Wire Wire Line
	8500 4450 8500 4500
Connection ~ 8500 4500
Wire Wire Line
	8600 4450 8600 4500
Connection ~ 8600 4500
Wire Wire Line
	8700 4450 8700 4500
Connection ~ 8700 4500
Wire Wire Line
	8800 4450 8800 4500
Connection ~ 8800 4500
Wire Wire Line
	9050 3400 9150 3400
Wire Wire Line
	9050 3500 9150 3500
Wire Wire Line
	9050 3600 9150 3600
Wire Wire Line
	9050 3700 9150 3700
Wire Wire Line
	9050 3800 9150 3800
Wire Wire Line
	9050 3900 9150 3900
Wire Wire Line
	9050 4000 9150 4000
Wire Wire Line
	9050 4100 9150 4100
Text Label 9150 3400 0    60   ~ 0
OUT8
Text Label 9150 3500 0    60   ~ 0
OUT9
Text Label 9150 3600 0    60   ~ 0
OUT10
Text Label 9150 3700 0    60   ~ 0
OUT11
Text Label 9150 3800 0    60   ~ 0
OUT12
Text Label 9150 3900 0    60   ~ 0
OUT13
Text Label 9150 4000 0    60   ~ 0
OUT14
Text Label 9150 4100 0    60   ~ 0
OUT15
Wire Wire Line
	5100 700  5100 800 
Wire Wire Line
	5100 1800 5100 2100
Wire Wire Line
	5100 1900 5200 1900
Text Label 5200 1900 0    60   ~ 0
LED_PWR
Wire Wire Line
	700  6750 700  6650
Text Label 700  6650 0    60   ~ 0
LED_PWR
$Comp
L LED_24V D17
U 1 1 54AAFFE6
P 3950 5300
F 0 "D17" H 3950 5400 50  0000 C CNN
F 1 "LED_24V" H 3950 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 3850 5300 60  0001 C CNN
F 3 "" H 3950 5300 60  0000 C CNN
F 4 "digikey" H 4050 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 4150 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 4250 5700 60  0001 C CNN "Description"
	1    3950 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 5500 3950 5600
Wire Wire Line
	3950 5100 3950 5000
Text Label 3950 5600 0    60   ~ 0
OUT15
$Comp
L LED_24V D16
U 1 1 54AB05E3
P 4300 5300
F 0 "D16" H 4300 5400 50  0000 C CNN
F 1 "LED_24V" H 4300 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 4200 5300 60  0001 C CNN
F 3 "" H 4300 5300 60  0000 C CNN
F 4 "digikey" H 4400 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 4500 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 4600 5700 60  0001 C CNN "Description"
	1    4300 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5500 4300 5600
Wire Wire Line
	4300 5100 4300 5000
Text Label 4300 5600 0    60   ~ 0
OUT14
$Comp
L LED_24V D15
U 1 1 54AB0663
P 4650 5300
F 0 "D15" H 4650 5400 50  0000 C CNN
F 1 "LED_24V" H 4650 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 4550 5300 60  0001 C CNN
F 3 "" H 4650 5300 60  0000 C CNN
F 4 "digikey" H 4750 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 4850 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 4950 5700 60  0001 C CNN "Description"
	1    4650 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 5500 4650 5600
Wire Wire Line
	4650 5000 4650 5100
Text Label 4650 5600 0    60   ~ 0
OUT13
$Comp
L LED_24V D14
U 1 1 54AB066F
P 5000 5300
F 0 "D14" H 5000 5400 50  0000 C CNN
F 1 "LED_24V" H 5000 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 4900 5300 60  0001 C CNN
F 3 "" H 5000 5300 60  0000 C CNN
F 4 "digikey" H 5100 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 5200 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 5300 5700 60  0001 C CNN "Description"
	1    5000 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 5500 5000 5600
Wire Wire Line
	5000 5000 5000 5100
Text Label 5000 5600 0    60   ~ 0
OUT12
$Comp
L LED_24V D13
U 1 1 54AB0797
P 5350 5300
F 0 "D13" H 5350 5400 50  0000 C CNN
F 1 "LED_24V" H 5350 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 5250 5300 60  0001 C CNN
F 3 "" H 5350 5300 60  0000 C CNN
F 4 "digikey" H 5450 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 5550 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 5650 5700 60  0001 C CNN "Description"
	1    5350 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 5500 5350 5600
Wire Wire Line
	5350 5000 5350 5100
Text Label 5350 5600 0    60   ~ 0
OUT11
$Comp
L LED_24V D12
U 1 1 54AB07A3
P 5700 5300
F 0 "D12" H 5700 5400 50  0000 C CNN
F 1 "LED_24V" H 5700 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 5600 5300 60  0001 C CNN
F 3 "" H 5700 5300 60  0000 C CNN
F 4 "digikey" H 5800 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 5900 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 6000 5700 60  0001 C CNN "Description"
	1    5700 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 5500 5700 5600
Wire Wire Line
	5700 5000 5700 5100
Text Label 5700 5600 0    60   ~ 0
OUT10
$Comp
L LED_24V D11
U 1 1 54AB07AF
P 6050 5300
F 0 "D11" H 6050 5400 50  0000 C CNN
F 1 "LED_24V" H 6050 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 5950 5300 60  0001 C CNN
F 3 "" H 6050 5300 60  0000 C CNN
F 4 "digikey" H 6150 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 6250 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 6350 5700 60  0001 C CNN "Description"
	1    6050 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 5500 6050 5600
Wire Wire Line
	6050 5000 6050 5100
Text Label 6050 5600 0    60   ~ 0
OUT9
$Comp
L LED_24V D10
U 1 1 54AB07BB
P 6400 5300
F 0 "D10" H 6400 5400 50  0000 C CNN
F 1 "LED_24V" H 6400 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 6300 5300 60  0001 C CNN
F 3 "" H 6400 5300 60  0000 C CNN
F 4 "digikey" H 6500 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 6600 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 6700 5700 60  0001 C CNN "Description"
	1    6400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 5500 6400 5600
Wire Wire Line
	6400 5000 6400 5100
Text Label 6400 5600 0    60   ~ 0
OUT8
$Comp
L LED_24V D9
U 1 1 54AB0B65
P 6750 5300
F 0 "D9" H 6750 5400 50  0000 C CNN
F 1 "LED_24V" H 6750 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 6650 5300 60  0001 C CNN
F 3 "" H 6750 5300 60  0000 C CNN
F 4 "digikey" H 6850 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 6950 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 7050 5700 60  0001 C CNN "Description"
	1    6750 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 5500 6750 5600
Wire Wire Line
	6750 5000 6750 5100
Text Label 6750 5600 0    60   ~ 0
OUT7
$Comp
L LED_24V D8
U 1 1 54AB0B71
P 7100 5300
F 0 "D8" H 7100 5400 50  0000 C CNN
F 1 "LED_24V" H 7100 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 7000 5300 60  0001 C CNN
F 3 "" H 7100 5300 60  0000 C CNN
F 4 "digikey" H 7200 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 7300 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 7400 5700 60  0001 C CNN "Description"
	1    7100 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5500 7100 5600
Wire Wire Line
	7100 5000 7100 5100
Text Label 7100 5600 0    60   ~ 0
OUT6
$Comp
L LED_24V D7
U 1 1 54AB0B7D
P 7450 5300
F 0 "D7" H 7450 5400 50  0000 C CNN
F 1 "LED_24V" H 7450 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 7350 5300 60  0001 C CNN
F 3 "" H 7450 5300 60  0000 C CNN
F 4 "digikey" H 7550 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 7650 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 7750 5700 60  0001 C CNN "Description"
	1    7450 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 5500 7450 5600
Wire Wire Line
	7450 5000 7450 5100
Text Label 7450 5600 0    60   ~ 0
OUT5
$Comp
L LED_24V D6
U 1 1 54AB0B89
P 7800 5300
F 0 "D6" H 7800 5400 50  0000 C CNN
F 1 "LED_24V" H 7800 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 7700 5300 60  0001 C CNN
F 3 "" H 7800 5300 60  0000 C CNN
F 4 "digikey" H 7900 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 8000 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 8100 5700 60  0001 C CNN "Description"
	1    7800 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 5500 7800 5600
Wire Wire Line
	7800 5000 7800 5100
Text Label 7800 5600 0    60   ~ 0
OUT4
$Comp
L LED_24V D5
U 1 1 54AB0B95
P 8150 5300
F 0 "D5" H 8150 5400 50  0000 C CNN
F 1 "LED_24V" H 8150 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 8050 5300 60  0001 C CNN
F 3 "" H 8150 5300 60  0000 C CNN
F 4 "digikey" H 8250 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 8350 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 8450 5700 60  0001 C CNN "Description"
	1    8150 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 5500 8150 5600
Wire Wire Line
	8150 5000 8150 5100
Text Label 8150 5600 0    60   ~ 0
OUT3
$Comp
L LED_24V D4
U 1 1 54AB0BA1
P 8500 5300
F 0 "D4" H 8500 5400 50  0000 C CNN
F 1 "LED_24V" H 8500 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 8400 5300 60  0001 C CNN
F 3 "" H 8500 5300 60  0000 C CNN
F 4 "digikey" H 8600 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 8700 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 8800 5700 60  0001 C CNN "Description"
	1    8500 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 5500 8500 5600
Wire Wire Line
	8500 5000 8500 5100
Text Label 8500 5600 0    60   ~ 0
OUT2
$Comp
L LED_24V D3
U 1 1 54AB0BAD
P 8850 5300
F 0 "D3" H 8850 5400 50  0000 C CNN
F 1 "LED_24V" H 8850 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 8750 5300 60  0001 C CNN
F 3 "" H 8850 5300 60  0000 C CNN
F 4 "digikey" H 8950 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 9050 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 9150 5700 60  0001 C CNN "Description"
	1    8850 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 5500 8850 5600
Wire Wire Line
	8850 5000 8850 5100
Text Label 8850 5600 0    60   ~ 0
OUT1
$Comp
L LED_24V D2
U 1 1 54AB0BB9
P 9200 5300
F 0 "D2" H 9200 5400 50  0000 C CNN
F 1 "LED_24V" H 9200 5200 50  0000 C CNN
F 2 "power_switch_controller:LED_555-3XXX" H 9100 5300 60  0001 C CNN
F 3 "" H 9200 5300 60  0000 C CNN
F 4 "digikey" H 9300 5500 60  0001 C CNN "Vendor"
F 5 "350-1723-ND" H 9400 5600 60  0001 C CNN "PartNumber"
F 6 "LED 2MM 24V VERTICAL RED PC MNT" H 9500 5700 60  0001 C CNN "Description"
	1    9200 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5500 9200 5600
Wire Wire Line
	9200 5000 9200 5100
Text Label 9200 5600 0    60   ~ 0
OUT0
Wire Wire Line
	3550 3300 3750 3300
Text Label 3750 3300 0    60   ~ 0
D_ENC_BTN
Wire Wire Line
	3550 2800 3750 2800
Text Label 3750 2800 0    60   ~ 0
TX3
Wire Wire Line
	3550 2400 3750 2400
Wire Wire Line
	3550 2300 3750 2300
Text Label 3750 2400 0    60   ~ 0
ENC_A
Text Label 3750 2300 0    60   ~ 0
ENC_B
Wire Wire Line
	3950 5000 9200 5000
Connection ~ 4300 5000
Connection ~ 4650 5000
Connection ~ 5000 5000
Connection ~ 5350 5000
Connection ~ 5700 5000
Connection ~ 6050 5000
Connection ~ 6400 5000
Connection ~ 6750 5000
Connection ~ 7100 5000
Connection ~ 7450 5000
Connection ~ 7800 5000
Connection ~ 8150 5000
Connection ~ 8500 5000
Connection ~ 8850 5000
Wire Wire Line
	6550 5000 6550 4900
Wire Wire Line
	6550 4900 6650 4900
Connection ~ 6550 5000
Text Label 6650 4900 0    60   ~ 0
LED_PWR
$Comp
L SPST_SERIES_M SW1
U 1 1 54AAF3F8
P 5100 1300
F 0 "SW1" H 5100 1200 70  0000 C CNN
F 1 "SPST_SERIES_M" H 5100 1450 70  0000 C CNN
F 2 "power_switch_controller:SPST_SERIES_M" H 5000 1100 60  0001 C CNN
F 3 "" H 5100 1200 60  0000 C CNN
F 4 "digikey" H 5200 1500 60  0001 C CNN "Vendor"
F 5 "360-3243-ND" H 5300 1600 60  0001 C CNN "PartNumber"
F 6 "SWITCH TOGGLE SPST 6A 125V" H 5400 1700 60  0001 C CNN "Description"
	1    5100 1300
	0    1    1    0   
$EndComp
NoConn ~ 1350 5700
NoConn ~ 1350 5800
$Comp
L HEADER_02X16 P4
U 1 1 54ACCE04
P 5050 3400
F 0 "P4" H 5050 4250 50  0000 C CNN
F 1 "HEADER_02X16" V 5050 3400 50  0000 C CNN
F 2 "power_switch_controller:HEADER_02x32" H 5050 2300 60  0001 C CNN
F 3 "" H 5050 2300 60  0000 C CNN
F 4 "digikey" H 5150 4350 60  0001 C CNN "Vendor"
F 5 "609-3368-ND" H 5250 4450 60  0001 C CNN "PartNumber"
F 6 "CONN HEADER 32POS .100 STR 30AU" H 5350 4550 60  0001 C CNN "Description"
	1    5050 3400
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR023
U 1 1 54ACE02B
P 4700 2550
F 0 "#PWR023" H 4700 2400 60  0001 C CNN
F 1 "VAA" H 4700 2700 60  0000 C CNN
F 2 "" H 4700 2550 60  0000 C CNN
F 3 "" H 4700 2550 60  0000 C CNN
	1    4700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4150 4800 4150
Wire Wire Line
	4700 2550 4700 4150
Wire Wire Line
	4800 4050 4700 4050
Connection ~ 4700 4050
Wire Wire Line
	4800 3950 4700 3950
Connection ~ 4700 3950
Wire Wire Line
	4800 3850 4700 3850
Connection ~ 4700 3850
Wire Wire Line
	4800 3750 4700 3750
Connection ~ 4700 3750
Wire Wire Line
	4800 3650 4700 3650
Connection ~ 4700 3650
Wire Wire Line
	4800 3550 4700 3550
Connection ~ 4700 3550
Wire Wire Line
	4800 3450 4700 3450
Connection ~ 4700 3450
Wire Wire Line
	4800 3350 4700 3350
Connection ~ 4700 3350
Wire Wire Line
	4800 3250 4700 3250
Connection ~ 4700 3250
Wire Wire Line
	4800 3150 4700 3150
Connection ~ 4700 3150
Wire Wire Line
	4800 3050 4700 3050
Connection ~ 4700 3050
Wire Wire Line
	4800 2950 4700 2950
Connection ~ 4700 2950
Wire Wire Line
	4800 2850 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4800 2750 4700 2750
Connection ~ 4700 2750
Wire Wire Line
	4800 2650 4700 2650
Connection ~ 4700 2650
Wire Wire Line
	5300 2650 5400 2650
Wire Wire Line
	5300 2750 5400 2750
Wire Wire Line
	5300 2850 5400 2850
Wire Wire Line
	5300 2950 5400 2950
Wire Wire Line
	5300 3050 5400 3050
Wire Wire Line
	5300 3150 5400 3150
Wire Wire Line
	5300 3250 5400 3250
Wire Wire Line
	5300 3350 5400 3350
Wire Wire Line
	5300 3450 5400 3450
Wire Wire Line
	5300 3550 5400 3550
Wire Wire Line
	5300 3650 5400 3650
Wire Wire Line
	5300 3750 5400 3750
Wire Wire Line
	5300 3850 5400 3850
Wire Wire Line
	5300 3950 5400 3950
Wire Wire Line
	5300 4050 5400 4050
Wire Wire Line
	5300 4150 5400 4150
Text Label 5400 2650 0    60   ~ 0
OUT0
Text Label 5400 2750 0    60   ~ 0
OUT1
Text Label 5400 2850 0    60   ~ 0
OUT2
Text Label 5400 2950 0    60   ~ 0
OUT3
Text Label 5400 3050 0    60   ~ 0
OUT4
Text Label 5400 3150 0    60   ~ 0
OUT5
Text Label 5400 3250 0    60   ~ 0
OUT6
Text Label 5400 3350 0    60   ~ 0
OUT7
Text Label 5400 3450 0    60   ~ 0
OUT8
Text Label 5400 3550 0    60   ~ 0
OUT9
Text Label 5400 3650 0    60   ~ 0
OUT10
Text Label 5400 3750 0    60   ~ 0
OUT11
Text Label 5400 3850 0    60   ~ 0
OUT12
Text Label 5400 3950 0    60   ~ 0
OUT13
Text Label 5400 4050 0    60   ~ 0
OUT14
Text Label 5400 4150 0    60   ~ 0
OUT15
NoConn ~ 3550 3400
NoConn ~ 3550 3500
$Comp
L ARDUINO_MEGA ARDUINO1
U 1 1 54AD3990
P 2500 3350
F 0 "ARDUINO1" H 2550 6100 60  0000 C CNN
F 1 "ARDUINO_MEGA" H 2500 650 60  0000 C CNN
F 2 "power_switch_controller:ARDUINO_MEGA_SHIELD" H 2450 6000 60  0001 C CNN
F 3 "" H 2550 6100 60  0000 C CNN
F 4 "digikey" H 2650 6200 60  0001 C CNN "Vendor"
F 5 "1050-1018-ND" H 2750 6300 60  0001 C CNN "PartNumber"
F 6 "BOARD MCU MEGA2560" H 2850 6400 60  0001 C CNN "Description"
	1    2500 3350
	1    0    0    -1  
$EndComp
$Comp
L 5.11k R3
U 1 1 54AD64AC
P 5450 2100
F 0 "R3" V 5530 2100 40  0000 C CNN
F 1 "5.11k" V 5457 2101 40  0000 C CNN
F 2 "power_switch_controller:SM1210" V 5380 2100 30  0001 C CNN
F 3 "" H 5450 2100 30  0000 C CNN
F 4 "digikey" V 5630 2200 60  0001 C CNN "Vendor"
F 5 "P5.11KAACT-ND" V 5730 2300 60  0001 C CNN "PartNumber"
F 6 "RES SMD 5.11K OHM 1% 1/2W 1210" V 5830 2400 60  0001 C CNN "Description"
	1    5450 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 54AD735F
P 5800 2200
F 0 "#PWR024" H 5800 1950 60  0001 C CNN
F 1 "GND" H 5800 2050 60  0000 C CNN
F 2 "" H 5800 2200 60  0000 C CNN
F 3 "" H 5800 2200 60  0000 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2100 5200 2100
Connection ~ 5100 1900
Wire Wire Line
	5700 2100 5800 2100
Wire Wire Line
	5800 2100 5800 2200
Wire Wire Line
	3450 7200 3050 7200
Text Label 3050 7200 0    60   ~ 0
LED_PWR
Wire Wire Line
	4250 7200 4450 7200
Text Label 4450 7200 0    60   ~ 0
D_LED_PWR
Wire Wire Line
	3550 3200 3750 3200
Text Label 3750 3200 0    60   ~ 0
D_LED_PWR
$Comp
L GND #PWR025
U 1 1 54AD9AEC
P 8250 6350
F 0 "#PWR025" H 8250 6100 60  0001 C CNN
F 1 "GND" H 8250 6200 60  0000 C CNN
F 2 "" H 8250 6350 60  0000 C CNN
F 3 "" H 8250 6350 60  0000 C CNN
	1    8250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 6100 8250 6100
Wire Wire Line
	8250 6100 8250 6350
Wire Wire Line
	8150 6200 8250 6200
Connection ~ 8250 6200
Wire Wire Line
	7650 6100 7300 6100
Wire Wire Line
	7650 6200 7300 6200
Text Label 7300 6100 0    60   ~ 0
BNC_A
Text Label 7300 6200 0    60   ~ 0
BNC_B
Wire Wire Line
	3550 800  3750 800 
Wire Wire Line
	3550 900  3750 900 
Text Label 3750 800  0    60   ~ 0
BNC_A
Text Label 3750 900  0    60   ~ 0
BNC_B
NoConn ~ 3550 1200
$Comp
L BNC_DOUBLE_RA P3
U 1 1 54ADBC63
P 7900 6150
F 0 "P3" H 7900 6300 50  0000 C CNN
F 1 "BNC_DOUBLE_RA" H 7900 6000 50  0000 C CNN
F 2 "power_switch_controller:BNC_DOUBLE" H 7900 4950 60  0001 C CNN
F 3 "" H 7900 4950 60  0000 C CNN
F 4 "digikey" H 8000 6400 60  0001 C CNN "Vendor"
F 5 "ACX1655-ND" H 8100 6500 60  0001 C CNN "PartNumber"
F 6 "CONN BNC JACK R/A 75 OHM PCB" H 8200 6600 60  0001 C CNN "Description"
	1    7900 6150
	1    0    0    -1  
$EndComp
NoConn ~ 1350 4200
$EndSCHEMATC