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
LIBS:custom
LIBS:ubbb_32u4-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "5 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA32U4-A U1
U 1 1 5457F510
P 4000 4600
F 0 "U1" H 3050 6300 40  0000 C CNN
F 1 "ATMEGA32U4-A" H 4700 3100 40  0000 C CNN
F 2 "TQFP44" H 4000 4600 35  0000 C CIN
F 3 "" H 5100 5700 60  0000 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2800 3550 2700
Wire Wire Line
	3800 2700 3800 2800
Wire Wire Line
	3900 2700 3900 2800
Connection ~ 3800 2700
Wire Wire Line
	4150 2700 4150 2800
Connection ~ 3900 2700
Wire Wire Line
	4250 2700 4250 2800
Wire Wire Line
	3600 6200 3600 6400
Wire Wire Line
	3600 6300 4150 6300
Wire Wire Line
	3850 6300 3850 6200
Wire Wire Line
	3950 6300 3950 6200
Connection ~ 3850 6300
Wire Wire Line
	4050 6300 4050 6200
Connection ~ 3950 6300
Wire Wire Line
	4150 6300 4150 6200
Connection ~ 4050 6300
Wire Wire Line
	5100 3150 6000 3150
Wire Wire Line
	5100 3250 6000 3250
Wire Wire Line
	5100 3350 6000 3350
Wire Wire Line
	2750 3050 2850 3050
Wire Wire Line
	2750 2500 2750 3050
$Comp
L USB-MINI-B CON1
U 1 1 54580264
P 1400 3950
F 0 "CON1" H 1150 4400 60  0000 C CNN
F 1 "USB-MINI-B" H 1350 3450 60  0000 C CNN
F 2 "" H 1400 3950 60  0000 C CNN
F 3 "" H 1400 3950 60  0000 C CNN
	1    1400 3950
	-1   0    0    1   
$EndComp
NoConn ~ 1950 3800
Wire Wire Line
	850  3650 750  3650
Wire Wire Line
	750  3650 750  4350
Wire Wire Line
	850  4250 750  4250
Connection ~ 750  4250
Wire Wire Line
	850  4100 750  4100
Connection ~ 750  4100
Wire Wire Line
	850  3800 750  3800
Connection ~ 750  3800
$Comp
L GND #PWR01
U 1 1 54580437
P 2050 3650
F 0 "#PWR01" H 2050 3650 30  0001 C CNN
F 1 "GND" H 2050 3580 30  0001 C CNN
F 2 "" H 2050 3650 60  0000 C CNN
F 3 "" H 2050 3650 60  0000 C CNN
	1    2050 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 54580444
P 750 4350
F 0 "#PWR02" H 750 4350 30  0001 C CNN
F 1 "GND" H 750 4280 30  0001 C CNN
F 2 "" H 750 4350 60  0000 C CNN
F 3 "" H 750 4350 60  0000 C CNN
	1    750  4350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54580478
P 2550 5450
F 0 "C3" H 2550 5550 40  0000 L CNN
F 1 "1uF" H 2556 5365 40  0000 L CNN
F 2 "~" H 2588 5300 30  0000 C CNN
F 3 "~" H 2550 5450 60  0000 C CNN
	1    2550 5450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 54580485
P 2250 5450
F 0 "#PWR03" H 2250 5450 30  0001 C CNN
F 1 "GND" H 2250 5380 30  0001 C CNN
F 2 "" H 2250 5450 60  0000 C CNN
F 3 "" H 2250 5450 60  0000 C CNN
	1    2250 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 5450 2350 5450
Wire Wire Line
	2750 5450 2850 5450
$Comp
L C C4
U 1 1 545804FB
P 2750 4950
F 0 "C4" H 2750 5050 40  0000 L CNN
F 1 "1uF" H 2756 4865 40  0000 L CNN
F 2 "~" H 2788 4800 30  0000 C CNN
F 3 "~" H 2750 4950 60  0000 C CNN
	1    2750 4950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 54580501
P 2750 5250
F 0 "#PWR04" H 2750 5250 30  0001 C CNN
F 1 "GND" H 2750 5180 30  0001 C CNN
F 2 "" H 2750 5250 60  0000 C CNN
F 3 "" H 2750 5250 60  0000 C CNN
	1    2750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5150 2750 5250
Wire Wire Line
	2850 4650 2750 4650
Wire Wire Line
	2750 4650 2750 4750
Wire Wire Line
	1950 3650 2050 3650
$Comp
L R R3
U 1 1 545805E8
P 2250 4100
F 0 "R3" V 2330 4100 40  0000 C CNN
F 1 "22" V 2257 4101 40  0000 C CNN
F 2 "~" V 2180 4100 30  0000 C CNN
F 3 "~" H 2250 4100 30  0000 C CNN
	1    2250 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 545805FA
P 2250 3950
F 0 "R2" V 2330 3950 40  0000 C CNN
F 1 "22" V 2257 3951 40  0000 C CNN
F 2 "~" V 2180 3950 30  0000 C CNN
F 3 "~" H 2250 3950 30  0000 C CNN
	1    2250 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 4400 2850 4400
Wire Wire Line
	1950 3950 2000 3950
Wire Wire Line
	1950 4250 2850 4250
Wire Wire Line
	1950 4100 2000 4100
Wire Wire Line
	2500 4100 2600 4100
Wire Wire Line
	2600 4100 2600 4500
Wire Wire Line
	2600 4500 2850 4500
Wire Wire Line
	2500 3950 2700 3950
Wire Wire Line
	2700 3950 2700 4400
$Comp
L CRYSTAL X1
U 1 1 54580785
P 2250 3100
F 0 "X1" H 2250 3250 60  0000 C CNN
F 1 "CRYSTAL" H 2250 2950 60  0000 C CNN
F 2 "~" H 2250 3100 60  0000 C CNN
F 3 "~" H 2250 3100 60  0000 C CNN
	1    2250 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 2800 2650 2800
Wire Wire Line
	2650 2800 2650 3450
Wire Wire Line
	2650 3450 2850 3450
Wire Wire Line
	2250 3400 2250 3650
Wire Wire Line
	2250 3650 2850 3650
$Comp
L C C1
U 1 1 545807FE
P 1700 2800
F 0 "C1" H 1700 2900 40  0000 L CNN
F 1 "20pF" H 1706 2715 40  0000 L CNN
F 2 "~" H 1738 2650 30  0000 C CNN
F 3 "~" H 1700 2800 60  0000 C CNN
	1    1700 2800
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 54580809
P 1700 3050
F 0 "C2" H 1700 3150 40  0000 L CNN
F 1 "20pF" H 1706 2965 40  0000 L CNN
F 2 "~" H 1738 2900 30  0000 C CNN
F 3 "~" H 1700 3050 60  0000 C CNN
	1    1700 3050
	0    1    1    0   
$EndComp
Connection ~ 2250 2800
Wire Wire Line
	1900 3050 2000 3050
Wire Wire Line
	2000 3050 2000 3400
Wire Wire Line
	2000 3400 2250 3400
Wire Wire Line
	1500 2800 1400 2800
Wire Wire Line
	1400 2800 1400 3150
Wire Wire Line
	1400 3050 1500 3050
$Comp
L GND #PWR05
U 1 1 545808C1
P 1400 3150
F 0 "#PWR05" H 1400 3150 30  0001 C CNN
F 1 "GND" H 1400 3080 30  0001 C CNN
F 2 "" H 1400 3150 60  0000 C CNN
F 3 "" H 1400 3150 60  0000 C CNN
	1    1400 3150
	1    0    0    -1  
$EndComp
Connection ~ 1400 3050
$Comp
L R R1
U 1 1 54580907
P 1200 5050
F 0 "R1" V 1280 5050 40  0000 C CNN
F 1 "1k" V 1207 5051 40  0000 C CNN
F 2 "~" V 1130 5050 30  0000 C CNN
F 3 "~" H 1200 5050 30  0000 C CNN
	1    1200 5050
	0    -1   -1   0   
$EndComp
Connection ~ 4250 2700
$Comp
L LED D1
U 1 1 5458095F
P 1750 5050
F 0 "D1" H 1750 5150 50  0000 C CNN
F 1 "LED" H 1750 4950 50  0000 C CNN
F 2 "~" H 1750 5050 60  0000 C CNN
F 3 "~" H 1750 5050 60  0000 C CNN
	1    1750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5050 1550 5050
Wire Wire Line
	1950 5050 2050 5050
$Comp
L GND #PWR06
U 1 1 545809FC
P 2050 5050
F 0 "#PWR06" H 2050 5050 30  0001 C CNN
F 1 "GND" H 2050 4980 30  0001 C CNN
F 2 "" H 2050 5050 60  0000 C CNN
F 3 "" H 2050 5050 60  0000 C CNN
	1    2050 5050
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 54580A04
P 4350 2700
F 0 "#PWR07" H 4350 2790 20  0001 C CNN
F 1 "+5V" H 4350 2790 30  0000 C CNN
F 2 "" H 4350 2700 60  0000 C CNN
F 3 "" H 4350 2700 60  0000 C CNN
	1    4350 2700
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR08
U 1 1 54580A11
P 850 5050
F 0 "#PWR08" H 850 5140 20  0001 C CNN
F 1 "+5V" H 850 5140 30  0000 C CNN
F 2 "" H 850 5050 60  0000 C CNN
F 3 "" H 850 5050 60  0000 C CNN
	1    850  5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  5050 950  5050
$Comp
L GND #PWR09
U 1 1 54580A5B
P 3600 6400
F 0 "#PWR09" H 3600 6400 30  0001 C CNN
F 1 "GND" H 3600 6330 30  0001 C CNN
F 2 "" H 3600 6400 60  0000 C CNN
F 3 "" H 3600 6400 60  0000 C CNN
	1    3600 6400
	1    0    0    -1  
$EndComp
Connection ~ 3600 6300
$Comp
L SW_PUSH_SMALL SW1
U 1 1 54580AA8
P 2650 2400
F 0 "SW1" H 2800 2510 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 2650 2321 30  0000 C CNN
F 2 "~" H 2650 2400 60  0000 C CNN
F 3 "~" H 2650 2400 60  0000 C CNN
	1    2650 2400
	1    0    0    -1  
$EndComp
Connection ~ 2750 2600
$Comp
L R R4
U 1 1 54580AFB
P 2400 2600
F 0 "R4" V 2480 2600 40  0000 C CNN
F 1 "1k" V 2407 2601 40  0000 C CNN
F 2 "~" V 2330 2600 30  0000 C CNN
F 3 "~" H 2400 2600 30  0000 C CNN
	1    2400 2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR010
U 1 1 54580C3A
P 2050 2600
F 0 "#PWR010" H 2050 2690 20  0001 C CNN
F 1 "+5V" H 2050 2690 30  0000 C CNN
F 2 "" H 2050 2600 60  0000 C CNN
F 3 "" H 2050 2600 60  0000 C CNN
	1    2050 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2600 2150 2600
Wire Wire Line
	2550 2300 2050 2300
$Comp
L GND #PWR011
U 1 1 54580CD0
P 2050 2300
F 0 "#PWR011" H 2050 2300 30  0001 C CNN
F 1 "GND" H 2050 2230 30  0001 C CNN
F 2 "" H 2050 2300 60  0000 C CNN
F 3 "" H 2050 2300 60  0000 C CNN
	1    2050 2300
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 54580CE7
P 6550 6300
F 0 "R5" V 6630 6300 40  0000 C CNN
F 1 "1k" V 6557 6301 40  0000 C CNN
F 2 "~" V 6480 6300 30  0000 C CNN
F 3 "~" H 6550 6300 30  0000 C CNN
	1    6550 6300
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 54580CED
P 7100 6300
F 0 "D2" H 7100 6400 50  0000 C CNN
F 1 "LED" H 7100 6200 50  0000 C CNN
F 2 "~" H 7100 6300 60  0000 C CNN
F 3 "~" H 7100 6300 60  0000 C CNN
	1    7100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 6300 6900 6300
Wire Wire Line
	7300 6300 7400 6300
$Comp
L GND #PWR012
U 1 1 54580CF5
P 7400 6300
F 0 "#PWR012" H 7400 6300 30  0001 C CNN
F 1 "GND" H 7400 6230 30  0001 C CNN
F 2 "" H 7400 6300 60  0000 C CNN
F 3 "" H 7400 6300 60  0000 C CNN
	1    7400 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 6300 6300 6300
Text Label 6200 6300 0    60   ~ 0
B4
Text Label 5200 3450 0    60   ~ 0
B4
Entry Wire Line
	6000 3050 6100 3150
Entry Wire Line
	6000 3150 6100 3250
Entry Wire Line
	6000 3250 6100 3350
Entry Wire Line
	6000 3350 6100 3450
Entry Wire Line
	6000 3450 6100 3550
Entry Wire Line
	6000 3550 6100 3650
Entry Wire Line
	6000 3650 6100 3750
Entry Wire Line
	6000 3750 6100 3850
Entry Wire Line
	6000 3950 6100 4050
Entry Wire Line
	6000 4050 6100 4150
Entry Wire Line
	6000 4250 6100 4350
Entry Wire Line
	6000 4350 6100 4450
Entry Wire Line
	6000 4450 6100 4550
Entry Wire Line
	6000 4550 6100 4650
Entry Wire Line
	6000 4650 6100 4750
Entry Wire Line
	6000 4750 6100 4850
Entry Wire Line
	6000 4850 6100 4950
Entry Wire Line
	6000 4950 6100 5050
Entry Wire Line
	6000 5150 6100 5250
Entry Wire Line
	6000 5250 6100 5350
Entry Wire Line
	6000 5450 6100 5550
Entry Wire Line
	6000 5550 6100 5650
Entry Wire Line
	6000 5650 6100 5750
Entry Wire Line
	6000 5750 6100 5850
Entry Wire Line
	6000 5850 6100 5950
Entry Wire Line
	6000 5950 6100 6050
Wire Wire Line
	5100 3050 6000 3050
Wire Wire Line
	6000 3450 5100 3450
Wire Wire Line
	5100 3550 6000 3550
Wire Wire Line
	6000 3650 5100 3650
Wire Wire Line
	5100 3750 6000 3750
Wire Wire Line
	6000 3950 5100 3950
Wire Wire Line
	5100 4050 6000 4050
Wire Wire Line
	6000 4250 5100 4250
Wire Wire Line
	5100 4350 6000 4350
Wire Wire Line
	6000 4450 5100 4450
Wire Wire Line
	5100 4550 6000 4550
Wire Wire Line
	6000 4650 5100 4650
Wire Wire Line
	5100 4750 6000 4750
Wire Wire Line
	6000 4850 5100 4850
Wire Wire Line
	5100 4950 6000 4950
Wire Wire Line
	6000 5150 5100 5150
Wire Wire Line
	5100 5250 6000 5250
Wire Wire Line
	6000 5450 5100 5450
Wire Wire Line
	5100 5550 6000 5550
Wire Wire Line
	6000 5650 5100 5650
Wire Wire Line
	5100 5750 6000 5750
Wire Wire Line
	6000 5850 5100 5850
Wire Wire Line
	5100 5950 6000 5950
Text Label 5200 3350 0    60   ~ 0
B3
Text Label 5200 3250 0    60   ~ 0
B2
Text Label 5200 3150 0    60   ~ 0
B1
Text Label 5200 3550 0    60   ~ 0
B5
Text Label 5200 3650 0    60   ~ 0
B6
Text Label 5200 3750 0    60   ~ 0
B7
Text Label 5200 3050 0    60   ~ 0
B0
Text Label 5200 3950 0    60   ~ 0
C6
Text Label 5200 4050 0    60   ~ 0
C7
Text Label 5200 4250 0    60   ~ 0
D0
Text Label 5200 4350 0    60   ~ 0
D1
Text Label 5200 4450 0    60   ~ 0
D2
Text Label 5200 4550 0    60   ~ 0
D3
Text Label 5200 4650 0    60   ~ 0
D4
Text Label 5200 4750 0    60   ~ 0
D5
Text Label 5200 4850 0    60   ~ 0
D6
Text Label 5200 4950 0    60   ~ 0
D7
Text Label 5200 5150 0    60   ~ 0
E2
Text Label 5200 5250 0    60   ~ 0
E6
Text Label 5200 5450 0    60   ~ 0
F0
Text Label 5200 5550 0    60   ~ 0
F1
Text Label 5200 5650 0    60   ~ 0
F4
Text Label 5200 5750 0    60   ~ 0
F5
Text Label 5200 5850 0    60   ~ 0
F6
Text Label 5200 5950 0    60   ~ 0
F7
Wire Bus Line
	6100 3150 6100 6400
Entry Wire Line
	6100 6400 6200 6500
Entry Wire Line
	6100 6200 6200 6300
$Comp
L SW_PUSH_SMALL SW2
U 1 1 5458175B
P 6600 6600
F 0 "SW2" H 6750 6710 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 6600 6521 30  0000 C CNN
F 2 "~" H 6600 6600 60  0000 C CNN
F 3 "~" H 6600 6600 60  0000 C CNN
	1    6600 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6500 6700 6500
Text Label 6200 6500 0    60   ~ 0
E2
$Comp
L R R6
U 1 1 5458183C
P 6950 6500
F 0 "R6" V 7030 6500 40  0000 C CNN
F 1 "1k" V 6957 6501 40  0000 C CNN
F 2 "~" V 6880 6500 30  0000 C CNN
F 3 "~" H 6950 6500 30  0000 C CNN
	1    6950 6500
	0    -1   -1   0   
$EndComp
Connection ~ 6500 6500
Wire Wire Line
	6700 6700 6700 6800
$Comp
L GND #PWR013
U 1 1 54581914
P 6700 6800
F 0 "#PWR013" H 6700 6800 30  0001 C CNN
F 1 "GND" H 6700 6730 30  0001 C CNN
F 2 "" H 6700 6800 60  0000 C CNN
F 3 "" H 6700 6800 60  0000 C CNN
	1    6700 6800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 5458191A
P 7300 6500
F 0 "#PWR014" H 7300 6590 20  0001 C CNN
F 1 "+5V" H 7300 6590 30  0000 C CNN
F 2 "" H 7300 6500 60  0000 C CNN
F 3 "" H 7300 6500 60  0000 C CNN
	1    7300 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 6500 7200 6500
Entry Wire Line
	6100 3150 6200 3250
Entry Wire Line
	6100 3250 6200 3350
Entry Wire Line
	6100 3350 6200 3450
Entry Wire Line
	6100 3450 6200 3550
Entry Wire Line
	6100 3550 6200 3650
Entry Wire Line
	6100 3650 6200 3750
Entry Wire Line
	6100 3750 6200 3850
Entry Wire Line
	6100 3850 6200 3950
Entry Wire Line
	6100 3950 6200 4050
Entry Wire Line
	6100 4050 6200 4150
Entry Wire Line
	6100 4150 6200 4250
Entry Wire Line
	6100 4250 6200 4350
Entry Wire Line
	6100 4350 6200 4450
Entry Wire Line
	6100 4450 6200 4550
Entry Wire Line
	6100 4550 6200 4650
Entry Wire Line
	6100 4650 6200 4750
Entry Wire Line
	6100 4750 6200 4850
Entry Wire Line
	6100 4850 6200 4950
Entry Wire Line
	6100 4950 6200 5050
Entry Wire Line
	6100 5050 6200 5150
Entry Wire Line
	6100 5250 6200 5350
Entry Wire Line
	6100 5350 6200 5450
Entry Wire Line
	6100 5550 6200 5650
Entry Wire Line
	6100 5650 6200 5750
Entry Wire Line
	6100 5750 6200 5850
Entry Wire Line
	6100 5850 6200 5950
Entry Wire Line
	6100 5950 6200 6050
Entry Wire Line
	6100 6050 6200 6150
Wire Wire Line
	6200 3250 7300 3250
Wire Wire Line
	7300 3350 6200 3350
Wire Wire Line
	6200 3450 7300 3450
Wire Wire Line
	7300 3650 6200 3650
Wire Wire Line
	6200 3750 7300 3750
Wire Wire Line
	6200 3850 7300 3850
Wire Wire Line
	7300 3950 6200 3950
Wire Wire Line
	6200 4050 7300 4050
Wire Wire Line
	7300 4150 6200 4150
Wire Wire Line
	6200 4250 7300 4250
Wire Wire Line
	6200 4350 7300 4350
Wire Wire Line
	7300 4450 6200 4450
Wire Wire Line
	6200 4550 7300 4550
Wire Wire Line
	7300 4650 6200 4650
Wire Wire Line
	6200 4750 7300 4750
Wire Wire Line
	6200 4850 7300 4850
Wire Wire Line
	7300 4950 6200 4950
Wire Wire Line
	6200 5050 7300 5050
Wire Wire Line
	7300 5150 6200 5150
Wire Wire Line
	6200 5250 7300 5250
Wire Wire Line
	6200 5350 7300 5350
Wire Wire Line
	7300 5450 6200 5450
Wire Wire Line
	6200 5550 7300 5550
Wire Wire Line
	7300 5650 6200 5650
Wire Wire Line
	6200 5750 7300 5750
Wire Wire Line
	6200 5850 7300 5850
Wire Wire Line
	7300 5950 6200 5950
Wire Wire Line
	6200 6050 7300 6050
Wire Wire Line
	7300 6150 6200 6150
Wire Wire Line
	6200 3550 7300 3550
Entry Wire Line
	6100 5150 6200 5250
Entry Wire Line
	6100 5450 6200 5550
Text Label 6300 3450 0    60   ~ 0
AREF
Text Label 6300 3250 0    60   ~ 0
GND
Text Label 6300 3350 0    60   ~ 0
VCC
Text Label 6300 3650 0    60   ~ 0
F0
Text Label 6300 3750 0    60   ~ 0
F1
Text Label 6300 3850 0    60   ~ 0
F4
Text Label 6300 3950 0    60   ~ 0
F5
Text Label 6300 4050 0    60   ~ 0
F6
Text Label 6300 4150 0    60   ~ 0
F7
$Comp
L CONN_5 P4
U 1 1 54591799
P 7700 4450
F 0 "P4" V 7650 4450 50  0000 C CNN
F 1 "CONN_5" V 7750 4450 50  0000 C CNN
F 2 "" H 7700 4450 60  0000 C CNN
F 3 "" H 7700 4450 60  0000 C CNN
	1    7700 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P3
U 1 1 545917A6
P 7700 3950
F 0 "P3" V 7650 3950 50  0000 C CNN
F 1 "CONN_5" V 7750 3950 50  0000 C CNN
F 2 "" H 7700 3950 60  0000 C CNN
F 3 "" H 7700 3950 60  0000 C CNN
	1    7700 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P2
U 1 1 545917AC
P 7700 3450
F 0 "P2" V 7650 3450 50  0000 C CNN
F 1 "CONN_5" V 7750 3450 50  0000 C CNN
F 2 "" H 7700 3450 60  0000 C CNN
F 3 "" H 7700 3450 60  0000 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P7
U 1 1 545917B2
P 7700 5950
F 0 "P7" V 7650 5950 50  0000 C CNN
F 1 "CONN_5" V 7750 5950 50  0000 C CNN
F 2 "" H 7700 5950 60  0000 C CNN
F 3 "" H 7700 5950 60  0000 C CNN
	1    7700 5950
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P6
U 1 1 545917B8
P 7700 5450
F 0 "P6" V 7650 5450 50  0000 C CNN
F 1 "CONN_5" V 7750 5450 50  0000 C CNN
F 2 "" H 7700 5450 60  0000 C CNN
F 3 "" H 7700 5450 60  0000 C CNN
	1    7700 5450
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P5
U 1 1 545917BE
P 7700 4950
F 0 "P5" V 7650 4950 50  0000 C CNN
F 1 "CONN_5" V 7750 4950 50  0000 C CNN
F 2 "" H 7700 4950 60  0000 C CNN
F 3 "" H 7700 4950 60  0000 C CNN
	1    7700 4950
	1    0    0    -1  
$EndComp
Text Label 6300 4250 0    60   ~ 0
E2
Text Label 6300 4350 0    60   ~ 0
C7
Text Label 6300 4450 0    60   ~ 0
C6
Text Label 6300 4550 0    60   ~ 0
B6
Text Label 6300 4650 0    60   ~ 0
B5
Text Label 6300 4750 0    60   ~ 0
B4
Text Label 6300 4850 0    60   ~ 0
D7
Text Label 6300 4950 0    60   ~ 0
D6
Text Label 6300 5150 0    60   ~ 0
D4
Text Label 6300 5050 0    60   ~ 0
D5
Text Label 6300 5250 0    60   ~ 0
D3
Text Label 6300 5350 0    60   ~ 0
D2
Text Label 6300 5450 0    60   ~ 0
D1
Text Label 6300 5550 0    60   ~ 0
D0
Text Label 6300 5650 0    60   ~ 0
RESET
Text Label 6300 5750 0    60   ~ 0
B7
Text Label 6300 5850 0    60   ~ 0
B3
Text Label 6300 5950 0    60   ~ 0
B2
Text Label 6300 6050 0    60   ~ 0
B1
Text Label 6300 6150 0    60   ~ 0
B0
Text Label 6300 3550 0    60   ~ 0
E6
Text Label 1400 3050 1    60   ~ 0
GND
Wire Wire Line
	3450 2700 4350 2700
Connection ~ 4150 2700
Text Label 3550 2700 0    60   ~ 0
VCC
Text Label 2800 5450 0    60   ~ 0
AREF
Text Label 2750 2750 2    60   ~ 0
RESET
$Comp
L +5V #PWR015
U 1 1 5459375A
P 2200 4350
F 0 "#PWR015" H 2200 4440 20  0001 C CNN
F 1 "+5V" H 2200 4440 30  0000 C CNN
F 2 "" H 2200 4350 60  0000 C CNN
F 3 "" H 2200 4350 60  0000 C CNN
	1    2200 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 4350 2200 4250
Connection ~ 2200 4250
Wire Wire Line
	2650 2600 5500 2600
$Comp
L C C5
U 1 1 5459532C
P 3250 2700
F 0 "C5" H 3250 2800 40  0000 L CNN
F 1 "1uF" H 3256 2615 40  0000 L CNN
F 2 "~" H 3288 2550 30  0000 C CNN
F 3 "~" H 3250 2700 60  0000 C CNN
	1    3250 2700
	0    1    1    0   
$EndComp
Connection ~ 3550 2700
$Comp
L GND #PWR016
U 1 1 545953BD
P 2950 2700
F 0 "#PWR016" H 2950 2700 30  0001 C CNN
F 1 "GND" H 2950 2630 30  0001 C CNN
F 2 "" H 2950 2700 60  0000 C CNN
F 3 "" H 2950 2700 60  0000 C CNN
	1    2950 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2700 3050 2700
$Comp
L ISP P1
U 1 1 545A64CA
P 5650 2150
F 0 "P1" H 5650 1900 60  0000 C CNN
F 1 "ISP" H 5650 2400 60  0000 C CNN
F 2 "~" H 5650 2150 60  0000 C CNN
F 3 "~" H 5650 2150 60  0000 C CNN
	1    5650 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2600 5500 2500
Wire Wire Line
	5600 2500 5600 3150
Connection ~ 5600 3150
Wire Wire Line
	5700 2500 5700 3350
Connection ~ 5700 3350
Wire Wire Line
	5800 2500 5800 3250
Connection ~ 5800 3250
$Comp
L GND #PWR017
U 1 1 545A6733
P 5500 1700
F 0 "#PWR017" H 5500 1700 30  0001 C CNN
F 1 "GND" H 5500 1630 30  0001 C CNN
F 2 "" H 5500 1700 60  0000 C CNN
F 3 "" H 5500 1700 60  0000 C CNN
	1    5500 1700
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR018
U 1 1 545A6740
P 5800 1700
F 0 "#PWR018" H 5800 1790 20  0001 C CNN
F 1 "+5V" H 5800 1790 30  0000 C CNN
F 2 "" H 5800 1700 60  0000 C CNN
F 3 "" H 5800 1700 60  0000 C CNN
	1    5800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1700 5800 1800
Wire Wire Line
	5500 1700 5500 1800
$EndSCHEMATC
