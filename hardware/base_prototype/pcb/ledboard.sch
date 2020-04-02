EESchema Schematic File Version 4
LIBS:ledboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IOT WiFi LED Controller with motion detection"
Date "2015 September 05, Saturday"
Rev "REL-0.99A"
Comp "GPL licensed"
Comment1 "Miguel Angel Ajo Pelayo"
Comment2 "miguelangel@ajo.es"
Comment3 "+(34)636522569"
Comment4 "This is open source hardware"
$EndDescr
$Comp
L power:+12V #PWR01
U 1 1 4FB27186
P 1600 1350
F 0 "#PWR01" H 1600 1300 20  0001 C CNN
F 1 "+12V" H 1600 1450 30  0000 C CNN
F 2 "" H 1600 1350 60  0001 C CNN
F 3 "" H 1600 1350 60  0001 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR02
U 1 1 4FB270D7
P 1600 1950
F 0 "#PWR02" H 1600 1950 40  0001 C CNN
F 1 "AGND" H 1600 1880 50  0000 C CNN
F 2 "" H 1600 1950 60  0001 C CNN
F 3 "" H 1600 1950 60  0001 C CNN
	1    1600 1950
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:CONN_2 P1
U 1 1 4FB270D1
P 2000 7300
F 0 "P1" V 1950 7300 40  0000 C CNN
F 1 "CONN_2" V 2050 7300 40  0000 C CNN
F 2 "Connect:bornier2" V 2150 7300 40  0001 C CNN
F 3 "" H 2000 7300 60  0001 C CNN
	1    2000 7300
	0    1    1    0   
$EndComp
$Comp
L components:MHOLE Z2
U 1 1 516537DC
P 6000 1300
F 0 "Z2" H 5800 1350 60  0000 C CNN
F 1 "MHOLE" H 6000 1300 60  0001 C CNN
F 2 "footprints:MHOLE_3MM" H 6000 1300 60  0001 C CNN
F 3 "TODO_DATASHEET" H 6000 1300 60  0001 C CNN
F 4 "MHOLE" H 5800 1250 60  0000 C CNN "Label"
F 5 "Mounting Hole" H 6000 1300 60  0001 C CNN "Keywords"
F 6 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1300 60  0001 C CNN "First Manufacturer Code"
F 7 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1300 60  0001 C CNN "Second Manufacturer Code"
F 8 "~" H 6000 1300 60  0000 C CNN "Variant"
F 9 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1300 60  0001 C CNN "Fast Supplier Code 1"
	1    6000 1300
	1    0    0    -1  
$EndComp
NoConn ~ 6200 1300
$Comp
L components:MHOLE Z3
U 1 1 51653832
P 6000 1500
F 0 "Z3" H 5800 1550 60  0000 C CNN
F 1 "MHOLE" H 6000 1500 60  0001 C CNN
F 2 "footprints:MHOLE_3MM" H 6000 1500 60  0001 C CNN
F 3 "TODO_DATASHEET" H 6000 1500 60  0001 C CNN
F 4 "MHOLE" H 5800 1450 60  0000 C CNN "Label"
F 5 "Mounting Hole" H 6000 1500 60  0001 C CNN "Keywords"
F 6 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1500 60  0001 C CNN "First Manufacturer Code"
F 7 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1500 60  0001 C CNN "Second Manufacturer Code"
F 8 "~" H 6000 1500 60  0000 C CNN "Variant"
F 9 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1500 60  0001 C CNN "Fast Supplier Code 1"
	1    6000 1500
	1    0    0    -1  
$EndComp
NoConn ~ 6200 1500
$Comp
L components:MHOLE Z4
U 1 1 51653840
P 6000 1700
F 0 "Z4" H 5800 1750 60  0000 C CNN
F 1 "MHOLE" H 6000 1700 60  0001 C CNN
F 2 "footprints:MHOLE_3MM" H 6000 1700 60  0001 C CNN
F 3 "TODO_DATASHEET" H 6000 1700 60  0001 C CNN
F 4 "MHOLE" H 5800 1650 60  0000 C CNN "Label"
F 5 "Mounting Hole" H 6000 1700 60  0001 C CNN "Keywords"
F 6 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1700 60  0001 C CNN "First Manufacturer Code"
F 7 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1700 60  0001 C CNN "Second Manufacturer Code"
F 8 "~" H 6000 1700 60  0000 C CNN "Variant"
F 9 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1700 60  0001 C CNN "Fast Supplier Code 1"
	1    6000 1700
	1    0    0    -1  
$EndComp
NoConn ~ 6200 1700
$Comp
L components:MHOLE Z1
U 1 1 55EB93A2
P 6000 1100
F 0 "Z1" H 5800 1150 60  0000 C CNN
F 1 "MHOLE" H 6000 1100 60  0001 C CNN
F 2 "footprints:MHOLE_3MM" H 6000 1100 60  0001 C CNN
F 3 "TODO_DATASHEET" H 6000 1100 60  0001 C CNN
F 4 "MHOLE" H 5800 1050 60  0000 C CNN "Label"
F 5 "Mounting Hole" H 6000 1100 60  0001 C CNN "Keywords"
F 6 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1100 60  0001 C CNN "First Manufacturer Code"
F 7 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1100 60  0001 C CNN "Second Manufacturer Code"
F 8 "~" H 6000 1100 60  0000 C CNN "Variant"
F 9 "NOT_ASSEMBLE - NOT_ASSEMBLE" H 6000 1100 60  0001 C CNN "Fast Supplier Code 1"
	1    6000 1100
	1    0    0    -1  
$EndComp
NoConn ~ 6200 1100
$Comp
L ESP8266:ESP-12E U2
U 1 1 55EBB626
P 3450 4350
F 0 "U2" H 3450 4250 50  0000 C CNN
F 1 "ESP-12E" H 3450 4450 50  0000 C CNN
F 2 "ESP8266:ESP-12E" H 3450 4350 50  0001 C CNN
F 3 "" H 3450 4350 50  0001 C CNN
	1    3450 4350
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 55EBBB15
P 4700 3400
F 0 "#PWR03" H 4700 3360 30  0001 C CNN
F 1 "+3.3V" H 4700 3510 30  0000 C CNN
F 2 "" H 4700 3400 60  0001 C CNN
F 3 "" H 4700 3400 60  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:CONN_01X03 P4
U 1 1 55EBC588
P 7650 1450
F 0 "P4" H 7650 1650 50  0000 C CNN
F 1 "PIR SENSOR" V 7750 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7650 1450 60  0001 C CNN
F 3 "" H 7650 1450 60  0000 C CNN
	1    7650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR04
U 1 1 55EBC741
P 7250 1350
F 0 "#PWR04" H 7250 1300 20  0001 C CNN
F 1 "+12V" H 7250 1450 30  0000 C CNN
F 2 "" H 7250 1350 60  0001 C CNN
F 3 "" H 7250 1350 60  0001 C CNN
	1    7250 1350
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR05
U 1 1 55EBC89A
P 7250 1650
F 0 "#PWR05" H 7250 1650 40  0001 C CNN
F 1 "AGND" H 7250 1580 50  0000 C CNN
F 2 "" H 7250 1650 60  0001 C CNN
F 3 "" H 7250 1650 60  0001 C CNN
	1    7250 1650
	1    0    0    -1  
$EndComp
Text Label 6850 1450 0    60   ~ 0
_PIR_MOTION
$Comp
L Device:R R14
U 1 1 55EBCFF3
P 5750 3900
F 0 "R14" V 5850 3900 50  0000 C CNN
F 1 "10K" V 5750 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5850 3900 60  0001 C CNN
F 3 "" H 5750 3900 60  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 55EBD530
P 5750 3350
F 0 "#PWR06" H 5750 3310 30  0001 C CNN
F 1 "+3.3V" H 5750 3460 30  0000 C CNN
F 2 "" H 5750 3350 60  0001 C CNN
F 3 "" H 5750 3350 60  0001 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 55EBD936
P 1700 4050
F 0 "R5" V 1750 4200 50  0000 C CNN
F 1 "10K" V 1700 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1800 4050 60  0001 C CNN
F 3 "" H 1700 4050 60  0001 C CNN
	1    1700 4050
	0    -1   -1   0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR07
U 1 1 55EBDA03
P 1200 4050
F 0 "#PWR07" H 1200 4050 40  0001 C CNN
F 1 "AGND" H 1200 3980 50  0000 C CNN
F 2 "" H 1200 4050 60  0001 C CNN
F 3 "" H 1200 4050 60  0001 C CNN
	1    1200 4050
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR08
U 1 1 55EBDAA8
P 1050 3950
F 0 "#PWR08" H 1050 3950 40  0001 C CNN
F 1 "AGND" H 1050 3880 50  0000 C CNN
F 2 "" H 1050 3950 60  0001 C CNN
F 3 "" H 1050 3950 60  0001 C CNN
	1    1050 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 55EBDBD6
P 1400 4150
F 0 "R4" V 1450 4300 50  0000 C CNN
F 1 "10K" V 1400 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1500 4150 60  0001 C CNN
F 3 "" H 1400 4150 60  0001 C CNN
	1    1400 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 55EBDD98
P 1050 4150
F 0 "#PWR09" H 1050 4110 30  0001 C CNN
F 1 "+3.3V" H 1050 4260 30  0000 C CNN
F 2 "" H 1050 4150 60  0001 C CNN
F 3 "" H 1050 4150 60  0001 C CNN
	1    1050 4150
	0    -1   1    0   
$EndComp
Text Label 1100 4250 0    60   ~ 0
FLASH
Text Label 1200 4650 0    60   ~ 0
TXD
Text Label 1200 4550 0    60   ~ 0
RXD
$Comp
L Device:R R8
U 1 1 55EBE041
P 2050 4650
F 0 "R8" V 2100 4800 50  0000 C CNN
F 1 "100" V 2050 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2150 4650 60  0001 C CNN
F 3 "" H 2050 4650 60  0001 C CNN
	1    2050 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 55EBE15B
P 1700 4550
F 0 "R7" V 1750 4700 50  0000 C CNN
F 1 "100" V 1700 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1800 4550 60  0001 C CNN
F 3 "" H 1700 4550 60  0001 C CNN
	1    1700 4550
	0    -1   -1   0   
$EndComp
Text Label 4450 4650 0    60   ~ 0
nRESET
$Comp
L Device:R R10
U 1 1 55EBE85D
P 4650 4850
F 0 "R10" V 4550 4850 50  0000 C CNN
F 1 "100" V 4650 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4750 4850 60  0001 C CNN
F 3 "" H 4650 4850 60  0001 C CNN
	1    4650 4850
	0    -1   -1   0   
$EndComp
Text Label 4450 4350 0    60   ~ 0
WAKEUP_RST
$Comp
L Device:C_Small C6
U 1 1 55EBF214
P 4800 3550
F 0 "C6" H 4810 3620 50  0000 L CNN
F 1 "4.7uF" H 4500 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4800 3550 60  0001 C CNN
F 3 "" H 4800 3550 60  0000 C CNN
	1    4800 3550
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR010
U 1 1 55EBF55D
P 4950 3550
F 0 "#PWR010" H 4950 3550 40  0001 C CNN
F 1 "AGND" H 4950 3480 50  0000 C CNN
F 2 "" H 4950 3550 60  0001 C CNN
F 3 "" H 4950 3550 60  0001 C CNN
	1    4950 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 55EBFC14
P 1700 4250
F 0 "R6" V 1750 4400 50  0000 C CNN
F 1 "10K" V 1700 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1800 4250 60  0001 C CNN
F 3 "" H 1700 4250 60  0001 C CNN
	1    1700 4250
	0    -1   -1   0   
$EndComp
Text Label 1600 5300 0    60   ~ 0
RXD
Text Label 1600 5400 0    60   ~ 0
TXD
Text Label 1600 5500 0    60   ~ 0
FLASH
Text Label 1600 5600 0    60   ~ 0
VIN
Text Label 1600 5700 0    60   ~ 0
GND
Text Label 4450 4450 0    60   ~ 0
CHIP_ENABLE
Text Label 4450 4550 0    60   ~ 0
VIN_DIV
$Comp
L power:+3.3V #PWR011
U 1 1 55EC13EE
P 5250 5100
F 0 "#PWR011" H 5250 5060 30  0001 C CNN
F 1 "+3.3V" H 5250 5210 30  0000 C CNN
F 2 "" H 5250 5100 60  0001 C CNN
F 3 "" H 5250 5100 60  0001 C CNN
	1    5250 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 55EC148E
P 4650 5100
F 0 "R11" V 4550 5100 50  0000 C CNN
F 1 "10K" V 4650 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4750 5100 60  0001 C CNN
F 3 "" H 4650 5100 60  0001 C CNN
	1    4650 5100
	0    -1   -1   0   
$EndComp
$Comp
L ledboard-rescue:LED D4
U 1 1 55EB6951
P 5300 3550
F 0 "D4" H 5300 3650 50  0000 C CNN
F 1 "LED" H 5300 3450 50  0000 C CNN
F 2 "LEDs:LED-0603" H 5300 3550 60  0001 C CNN
F 3 "" H 5300 3550 60  0000 C CNN
	1    5300 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 55EB69BF
P 5300 3350
F 0 "#PWR012" H 5300 3310 30  0001 C CNN
F 1 "+3.3V" H 5300 3460 30  0000 C CNN
F 2 "" H 5300 3350 60  0001 C CNN
F 3 "" H 5300 3350 60  0001 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 55EB6A06
P 5300 3900
F 0 "R12" V 5400 3900 50  0000 C CNN
F 1 "470" V 5300 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5400 3900 60  0001 C CNN
F 3 "" H 5300 3900 60  0001 C CNN
	1    5300 3900
	1    0    0    -1  
$EndComp
Text Label 4450 4050 0    60   ~ 0
nLED
$Comp
L Device:R R13
U 1 1 55EB6F42
P 5550 3900
F 0 "R13" V 5650 3900 50  0000 C CNN
F 1 "10K" V 5550 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5650 3900 60  0001 C CNN
F 3 "" H 5550 3900 60  0001 C CNN
	1    5550 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 55EB70E6
P 5550 3350
F 0 "#PWR013" H 5550 3310 30  0001 C CNN
F 1 "+3.3V" H 5550 3460 30  0000 C CNN
F 2 "" H 5550 3350 60  0001 C CNN
F 3 "" H 5550 3350 60  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Text Label 4450 4150 0    60   ~ 0
nPUSHBUTTON
Text Label 4450 4250 0    60   ~ 0
PWM_DIMMER1
Text Label 2300 4550 0    60   ~ 0
_RXD
Text Label 2300 4650 0    60   ~ 0
_TXD
Text Label 2200 4250 0    60   ~ 0
_FLASH
Text Label 1950 4350 0    60   ~ 0
PIR_MOTION
$Comp
L ledboard-rescue:BARREL_JACK CON1
U 1 1 55EB9C44
P 1300 2350
F 0 "CON1" H 1300 2600 60  0000 C CNN
F 1 "BARREL_JACK" H 1300 2150 60  0000 C CNN
F 2 "Connect:JACK_ALIM" H 1300 2350 60  0001 C CNN
F 3 "" H 1300 2350 60  0000 C CNN
	1    1300 2350
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR014
U 1 1 55EB9EB5
P 1700 2500
F 0 "#PWR014" H 1700 2500 40  0001 C CNN
F 1 "AGND" H 1700 2430 50  0000 C CNN
F 2 "" H 1700 2500 60  0001 C CNN
F 3 "" H 1700 2500 60  0001 C CNN
	1    1700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR015
U 1 1 55EB9F02
P 1700 2250
F 0 "#PWR015" H 1700 2200 20  0001 C CNN
F 1 "+12V" H 1700 2350 30  0000 C CNN
F 2 "" H 1700 2250 60  0001 C CNN
F 3 "" H 1700 2250 60  0001 C CNN
	1    1700 2250
	1    0    0    -1  
$EndComp
Text Notes 800  900  0    60   ~ 0
5V to 14V input
$Comp
L ledboard-rescue:CONN_01X05 P3
U 1 1 55EBAD02
P 1250 5500
F 0 "P3" H 1250 5800 50  0000 C CNN
F 1 "CONN_01X05" V 1350 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 700 5900 60  0001 C CNN
F 3 "" H 1250 5500 60  0000 C CNN
	1    1250 5500
	-1   0    0    1   
$EndComp
Text Notes 5850 2100 0    60   ~ 0
MOUNTING\nHOLES
Text Notes 7200 2050 0    60   ~ 0
PIR SENSOR
Text Notes 5100 5900 0    60   ~ 0
WIFI/MICROPROCESSOR
$Comp
L ledboard-rescue:SW_PUSH SW1
U 1 1 55EBBD43
P 2000 6600
F 0 "SW1" H 2150 6710 50  0000 C CNN
F 1 "SW_PUSH" H 2000 6520 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 2050 6850 60  0000 C CNN
F 3 "" H 2000 6600 60  0000 C CNN
	1    2000 6600
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR016
U 1 1 55EBC023
P 1150 7300
F 0 "#PWR016" H 1150 7300 40  0001 C CNN
F 1 "AGND" H 1150 7230 50  0000 C CNN
F 2 "" H 1150 7300 60  0001 C CNN
F 3 "" H 1150 7300 60  0001 C CNN
	1    1150 7300
	1    0    0    -1  
$EndComp
Text Label 2950 6600 0    60   ~ 0
nPUSHBUTTON
$Comp
L Device:R R9
U 1 1 55EBC6F1
P 2650 6600
F 0 "R9" V 2750 6600 50  0000 C CNN
F 1 "100" V 2650 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2750 6600 60  0001 C CNN
F 3 "" H 2650 6600 60  0001 C CNN
	1    2650 6600
	0    -1   -1   0   
$EndComp
Text Notes 3200 7550 0    60   ~ 0
PUSH BUTTON
$Comp
L ledboard-rescue:CONN_2 P2
U 1 1 55EBD0FF
P 1150 1650
F 0 "P2" V 1100 1650 40  0000 C CNN
F 1 "CONN_2" V 1200 1650 40  0000 C CNN
F 2 "Connect:bornier2" V 1300 1650 40  0001 C CNN
F 3 "" H 1150 1650 60  0001 C CNN
	1    1150 1650
	-1   0    0    1   
$EndComp
$Comp
L ledboard-rescue:CONN_01X03 P5
U 1 1 55EBE0FD
P 9200 1450
F 0 "P5" H 9200 1650 50  0000 C CNN
F 1 "CONN_01X03" V 9300 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03" H 9200 1450 60  0001 C CNN
F 3 "" H 9200 1450 60  0000 C CNN
	1    9200 1450
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR017
U 1 1 55EBEA4E
P 9000 1650
F 0 "#PWR017" H 9000 1650 40  0001 C CNN
F 1 "AGND" H 9000 1580 50  0000 C CNN
F 2 "" H 9000 1650 60  0001 C CNN
F 3 "" H 9000 1650 60  0001 C CNN
	1    9000 1650
	1    0    0    -1  
$EndComp
Text Label 8200 1450 0    60   ~ 0
_WS2812B_DO
$Comp
L power:+12V #PWR018
U 1 1 55EBEFD2
P 9000 1150
F 0 "#PWR018" H 9000 1100 20  0001 C CNN
F 1 "+12V" H 9000 1250 30  0000 C CNN
F 2 "" H 9000 1150 60  0001 C CNN
F 3 "" H 9000 1150 60  0001 C CNN
	1    9000 1150
	1    0    0    -1  
$EndComp
Text Notes 8150 2100 0    60   ~ 0
ADDRESSABLE LED STRIP\n5V INPUT ONLY
Text Label 7750 2750 0    60   ~ 0
PWM_DIMMER1
$Comp
L ledboard-rescue:IRF540N Q1
U 1 1 55EC6532
P 9450 2700
F 0 "Q1" H 9300 2850 50  0000 L CNN
F 1 "IRF540N" H 9050 2750 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 9150 2500 50  0001 L CIN
F 3 "" H 9450 2700 50  0000 L CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 55EC6761
P 8900 2750
F 0 "R16" V 9000 2750 50  0000 C CNN
F 1 "NC 160" V 8800 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9000 2750 60  0001 C CNN
F 3 "" H 8900 2750 60  0001 C CNN
	1    8900 2750
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR019
U 1 1 55EC6CFE
P 9550 3000
F 0 "#PWR019" H 9550 3000 40  0001 C CNN
F 1 "AGND" H 9550 2930 50  0000 C CNN
F 2 "" H 9550 3000 60  0001 C CNN
F 3 "" H 9550 3000 60  0001 C CNN
	1    9550 3000
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:CONN_2 P6
U 1 1 55EC7051
P 10250 3000
F 0 "P6" V 10200 3000 40  0000 C CNN
F 1 "CONN_2" V 10300 3000 40  0000 C CNN
F 2 "Connect:bornier2" V 10400 3000 40  0001 C CNN
F 3 "" H 10250 3000 60  0001 C CNN
	1    10250 3000
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR020
U 1 1 55EC7299
P 10350 2650
F 0 "#PWR020" H 10350 2600 20  0001 C CNN
F 1 "+12V" H 10350 2800 30  0000 C CNN
F 2 "" H 10350 2650 60  0001 C CNN
F 3 "" H 10350 2650 60  0001 C CNN
	1    10350 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 55EC7930
P 10250 2650
F 0 "C13" V 10250 2450 50  0000 L CNN
F 1 "100nF" V 10150 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10250 2650 60  0001 C CNN
F 3 "" H 10250 2650 60  0000 C CNN
	1    10250 2650
	0    -1   -1   0   
$EndComp
Text Label 1850 4450 0    60   ~ 0
PWM_DIMMER2
Text Label 1900 4050 0    60   ~ 0
PWM_DIMMER3
$Comp
L Device:R R15
U 1 1 55EC3F01
P 6850 1900
F 0 "R15" V 6950 1900 50  0000 C CNN
F 1 "100" V 6850 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6950 1900 60  0001 C CNN
F 3 "" H 6850 1900 60  0001 C CNN
	1    6850 1900
	0    -1   -1   0   
$EndComp
Text Label 7100 1900 0    60   ~ 0
PIR_MOTION
$Comp
L ledboard-rescue:AGND #PWR021
U 1 1 55EC658D
P 6550 3300
F 0 "#PWR021" H 6550 3300 40  0001 C CNN
F 1 "AGND" H 6550 3230 50  0000 C CNN
F 2 "" H 6550 3300 60  0001 C CNN
F 3 "" H 6550 3300 60  0001 C CNN
	1    6550 3300
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR022
U 1 1 55EC7002
P 6750 2750
F 0 "#PWR022" H 6750 2700 20  0001 C CNN
F 1 "+12V" H 6750 2900 30  0000 C CNN
F 2 "" H 6750 2750 60  0001 C CNN
F 3 "" H 6750 2750 60  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR023
U 1 1 55EC7138
P 6750 3100
F 0 "#PWR023" H 6750 3100 40  0001 C CNN
F 1 "AGND" H 6750 3030 50  0000 C CNN
F 2 "" H 6750 3100 60  0001 C CNN
F 3 "" H 6750 3100 60  0001 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR024
U 1 1 55EC7203
P 7050 3100
F 0 "#PWR024" H 7050 3100 40  0001 C CNN
F 1 "AGND" H 7050 3030 50  0000 C CNN
F 2 "" H 7050 3100 60  0001 C CNN
F 3 "" H 7050 3100 60  0001 C CNN
	1    7050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 55EC74AE
P 7050 2900
F 0 "C10" H 7060 2970 50  0000 L CNN
F 1 "4.7uF" H 6750 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7050 2900 60  0001 C CNN
F 3 "" H 7050 2900 60  0000 C CNN
	1    7050 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 55EC756E
P 6750 2900
F 0 "C7" H 6900 3000 50  0000 L CNN
F 1 "100nF" H 6850 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6750 2900 60  0001 C CNN
F 3 "" H 6750 2900 60  0000 C CNN
	1    6750 2900
	-1   0    0    1   
$EndComp
$Comp
L ledboard-rescue:FAN3100TSX U3
U 1 1 55EC8D8C
P 7800 3550
F 0 "U3" H 7650 3600 60  0000 C CNN
F 1 "FAN3100TSX" H 8050 3600 60  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-5" H 7800 3550 60  0001 C CNN
F 3 "" H 7800 3550 60  0000 C CNN
	1    7800 3550
	1    0    0    -1  
$EndComp
Text Label 8450 3200 0    60   ~ 0
_PWM_DIMMER1
Text Label 6700 3400 0    60   ~ 0
PWM_DIMMER1
$Comp
L ledboard-rescue:AGND #PWR025
U 1 1 55EC99D7
P 8450 3400
F 0 "#PWR025" H 8450 3400 40  0001 C CNN
F 1 "AGND" H 8450 3330 50  0000 C CNN
F 2 "" H 8450 3400 60  0001 C CNN
F 3 "" H 8450 3400 60  0001 C CNN
	1    8450 3400
	0    -1   -1   0   
$EndComp
Text Label 7750 3950 0    60   ~ 0
PWM_DIMMER2
$Comp
L ledboard-rescue:IRF540N Q2
U 1 1 55ECD53C
P 9450 3900
F 0 "Q2" H 9300 4050 50  0000 L CNN
F 1 "IRF540N" H 9050 3950 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 9150 3700 50  0001 L CIN
F 3 "" H 9450 3900 50  0000 L CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 55ECD542
P 8900 3950
F 0 "R17" V 9000 3950 50  0000 C CNN
F 1 "NC 160" V 8800 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9000 3950 60  0001 C CNN
F 3 "" H 8900 3950 60  0001 C CNN
	1    8900 3950
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR026
U 1 1 55ECD548
P 9550 4200
F 0 "#PWR026" H 9550 4200 40  0001 C CNN
F 1 "AGND" H 9550 4130 50  0000 C CNN
F 2 "" H 9550 4200 60  0001 C CNN
F 3 "" H 9550 4200 60  0001 C CNN
	1    9550 4200
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:CONN_2 P7
U 1 1 55ECD54E
P 10250 4200
F 0 "P7" V 10200 4200 40  0000 C CNN
F 1 "CONN_2" V 10300 4200 40  0000 C CNN
F 2 "Connect:bornier2" V 10400 4200 40  0001 C CNN
F 3 "" H 10250 4200 60  0001 C CNN
	1    10250 4200
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 55ECD554
P 10350 3850
F 0 "#PWR027" H 10350 3800 20  0001 C CNN
F 1 "+12V" H 10350 4000 30  0000 C CNN
F 2 "" H 10350 3850 60  0001 C CNN
F 3 "" H 10350 3850 60  0001 C CNN
	1    10350 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 55ECD55A
P 10250 3850
F 0 "C14" V 10250 3650 50  0000 L CNN
F 1 "100nF" V 10150 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10250 3850 60  0001 C CNN
F 3 "" H 10250 3850 60  0000 C CNN
	1    10250 3850
	0    -1   -1   0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR028
U 1 1 55ECD560
P 6550 4500
F 0 "#PWR028" H 6550 4500 40  0001 C CNN
F 1 "AGND" H 6550 4430 50  0000 C CNN
F 2 "" H 6550 4500 60  0001 C CNN
F 3 "" H 6550 4500 60  0001 C CNN
	1    6550 4500
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR029
U 1 1 55ECD566
P 6750 3950
F 0 "#PWR029" H 6750 3900 20  0001 C CNN
F 1 "+12V" H 6750 4100 30  0000 C CNN
F 2 "" H 6750 3950 60  0001 C CNN
F 3 "" H 6750 3950 60  0001 C CNN
	1    6750 3950
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR030
U 1 1 55ECD56C
P 6750 4300
F 0 "#PWR030" H 6750 4300 40  0001 C CNN
F 1 "AGND" H 6750 4230 50  0000 C CNN
F 2 "" H 6750 4300 60  0001 C CNN
F 3 "" H 6750 4300 60  0001 C CNN
	1    6750 4300
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR031
U 1 1 55ECD572
P 7050 4300
F 0 "#PWR031" H 7050 4300 40  0001 C CNN
F 1 "AGND" H 7050 4230 50  0000 C CNN
F 2 "" H 7050 4300 60  0001 C CNN
F 3 "" H 7050 4300 60  0001 C CNN
	1    7050 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 55ECD578
P 7050 4100
F 0 "C11" H 7060 4170 50  0000 L CNN
F 1 "4.7uF" H 6750 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7050 4100 60  0001 C CNN
F 3 "" H 7050 4100 60  0000 C CNN
	1    7050 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 55ECD57E
P 6750 4100
F 0 "C8" H 6900 4200 50  0000 L CNN
F 1 "100nF" H 6850 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6750 4100 60  0001 C CNN
F 3 "" H 6750 4100 60  0000 C CNN
	1    6750 4100
	-1   0    0    1   
$EndComp
$Comp
L ledboard-rescue:FAN3100TSX U4
U 1 1 55ECD584
P 7800 4750
F 0 "U4" H 7650 4800 60  0000 C CNN
F 1 "FAN3100TSX" H 8050 4800 60  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-5" H 7800 4750 60  0001 C CNN
F 3 "" H 7800 4750 60  0000 C CNN
	1    7800 4750
	1    0    0    -1  
$EndComp
Text Label 8450 4400 0    60   ~ 0
_PWM_DIMMER2
Text Label 6700 4600 0    60   ~ 0
PWM_DIMMER2
$Comp
L ledboard-rescue:AGND #PWR032
U 1 1 55ECD58C
P 8450 4600
F 0 "#PWR032" H 8450 4600 40  0001 C CNN
F 1 "AGND" H 8450 4530 50  0000 C CNN
F 2 "" H 8450 4600 60  0001 C CNN
F 3 "" H 8450 4600 60  0001 C CNN
	1    8450 4600
	0    -1   -1   0   
$EndComp
Text Label 7750 5200 0    60   ~ 0
PWM_DIMMER3
$Comp
L ledboard-rescue:IRF540N Q3
U 1 1 55ECD90B
P 9450 5150
F 0 "Q3" H 9300 5300 50  0000 L CNN
F 1 "IRF540N" H 9050 5200 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 9150 4950 50  0001 L CIN
F 3 "" H 9450 5150 50  0000 L CNN
	1    9450 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 55ECD911
P 8900 5200
F 0 "R18" V 9000 5200 50  0000 C CNN
F 1 "NC 160" V 8800 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9000 5200 60  0001 C CNN
F 3 "" H 8900 5200 60  0001 C CNN
	1    8900 5200
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR033
U 1 1 55ECD917
P 9550 5450
F 0 "#PWR033" H 9550 5450 40  0001 C CNN
F 1 "AGND" H 9550 5380 50  0000 C CNN
F 2 "" H 9550 5450 60  0001 C CNN
F 3 "" H 9550 5450 60  0001 C CNN
	1    9550 5450
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:CONN_2 P8
U 1 1 55ECD91D
P 10250 5450
F 0 "P8" V 10200 5450 40  0000 C CNN
F 1 "CONN_2" V 10300 5450 40  0000 C CNN
F 2 "Connect:bornier2" V 10400 5450 40  0001 C CNN
F 3 "" H 10250 5450 60  0001 C CNN
	1    10250 5450
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR034
U 1 1 55ECD923
P 10350 5100
F 0 "#PWR034" H 10350 5050 20  0001 C CNN
F 1 "+12V" H 10350 5250 30  0000 C CNN
F 2 "" H 10350 5100 60  0001 C CNN
F 3 "" H 10350 5100 60  0001 C CNN
	1    10350 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 55ECD929
P 10250 5100
F 0 "C15" V 10250 4900 50  0000 L CNN
F 1 "100nF" V 10150 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10250 5100 60  0001 C CNN
F 3 "" H 10250 5100 60  0000 C CNN
	1    10250 5100
	0    -1   -1   0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR035
U 1 1 55ECD92F
P 6550 5750
F 0 "#PWR035" H 6550 5750 40  0001 C CNN
F 1 "AGND" H 6550 5680 50  0000 C CNN
F 2 "" H 6550 5750 60  0001 C CNN
F 3 "" H 6550 5750 60  0001 C CNN
	1    6550 5750
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR036
U 1 1 55ECD935
P 6750 5200
F 0 "#PWR036" H 6750 5150 20  0001 C CNN
F 1 "+12V" H 6750 5350 30  0000 C CNN
F 2 "" H 6750 5200 60  0001 C CNN
F 3 "" H 6750 5200 60  0001 C CNN
	1    6750 5200
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR037
U 1 1 55ECD93B
P 6750 5550
F 0 "#PWR037" H 6750 5550 40  0001 C CNN
F 1 "AGND" H 6750 5480 50  0000 C CNN
F 2 "" H 6750 5550 60  0001 C CNN
F 3 "" H 6750 5550 60  0001 C CNN
	1    6750 5550
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR038
U 1 1 55ECD941
P 7050 5550
F 0 "#PWR038" H 7050 5550 40  0001 C CNN
F 1 "AGND" H 7050 5480 50  0000 C CNN
F 2 "" H 7050 5550 60  0001 C CNN
F 3 "" H 7050 5550 60  0001 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 55ECD947
P 7050 5350
F 0 "C12" H 7060 5420 50  0000 L CNN
F 1 "4.7uF" H 6750 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7050 5350 60  0001 C CNN
F 3 "" H 7050 5350 60  0000 C CNN
	1    7050 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 55ECD94D
P 6750 5350
F 0 "C9" H 6900 5450 50  0000 L CNN
F 1 "100nF" H 6850 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6750 5350 60  0001 C CNN
F 3 "" H 6750 5350 60  0000 C CNN
	1    6750 5350
	-1   0    0    1   
$EndComp
$Comp
L ledboard-rescue:FAN3100TSX U5
U 1 1 55ECD953
P 7800 6000
F 0 "U5" H 7650 6050 60  0000 C CNN
F 1 "FAN3100TSX" H 8050 6050 60  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-5" H 7800 6000 60  0001 C CNN
F 3 "" H 7800 6000 60  0000 C CNN
	1    7800 6000
	1    0    0    -1  
$EndComp
Text Label 8450 5650 0    60   ~ 0
_PWM_DIMMER3
Text Label 6700 5850 0    60   ~ 0
PWM_DIMMER3
$Comp
L ledboard-rescue:AGND #PWR039
U 1 1 55ECD95B
P 8450 5850
F 0 "#PWR039" H 8450 5850 40  0001 C CNN
F 1 "AGND" H 8450 5780 50  0000 C CNN
F 2 "" H 8450 5850 60  0001 C CNN
F 3 "" H 8450 5850 60  0001 C CNN
	1    8450 5850
	0    -1   -1   0   
$EndComp
$Comp
L ledboard-rescue:CAPAPOL C16
U 1 1 55ED0C73
P 8800 1150
F 0 "C16" V 8850 1250 50  0000 L CNN
F 1 "150uF 25V" V 8950 900 50  0000 L CNN
F 2 "footprints:SMD Capacitor Case F" H 8800 1150 60  0001 C CNN
F 3 "" H 8800 1150 60  0001 C CNN
	1    8800 1150
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:AGND #PWR040
U 1 1 55ED1558
P 8600 1150
F 0 "#PWR040" H 8600 1150 40  0001 C CNN
F 1 "AGND" H 8600 1080 50  0000 C CNN
F 2 "" H 8600 1150 60  0001 C CNN
F 3 "" H 8600 1150 60  0001 C CNN
	1    8600 1150
	0    1    1    0   
$EndComp
$Comp
L ledboard-rescue:LM1117-3.3 U1
U 1 1 55ED450E
P 2800 1650
F 0 "U1" H 3150 1850 60  0000 C CNN
F 1 "LM1117-3.3" H 2800 2400 60  0000 C CNN
F 2 "SOT-223" H 3300 2400 60  0001 C CNN
F 3 "" H 2800 1650 60  0000 C CNN
	1    2800 1650
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR041
U 1 1 55ED4770
P 2850 1600
F 0 "#PWR041" H 2850 1600 40  0001 C CNN
F 1 "AGND" H 2850 1530 50  0000 C CNN
F 2 "" H 2850 1600 60  0001 C CNN
F 3 "" H 2850 1600 60  0001 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR042
U 1 1 55ED49D0
P 3750 1350
F 0 "#PWR042" H 3750 1310 30  0001 C CNN
F 1 "+3.3V" H 3750 1460 30  0000 C CNN
F 2 "" H 3750 1350 60  0001 C CNN
F 3 "" H 3750 1350 60  0001 C CNN
	1    3750 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 55ED5217
P 2100 1500
F 0 "C2" H 2110 1570 50  0000 L CNN
F 1 "4.7uF" H 1800 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2100 1500 60  0001 C CNN
F 3 "" H 2100 1500 60  0000 C CNN
	1    2100 1500
	-1   0    0    1   
$EndComp
$Comp
L ledboard-rescue:CAPAPOL C1
U 1 1 55ED52EA
P 3750 1600
F 0 "C1" V 3800 1700 50  0000 L CNN
F 1 "150uF 5V" V 3900 1350 50  0000 L CNN
F 2 "footprints:SMD Capacitor Case F" H 3750 1600 60  0001 C CNN
F 3 "" H 3750 1600 60  0001 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR043
U 1 1 55ED54BE
P 2100 1600
F 0 "#PWR043" H 2100 1600 40  0001 C CNN
F 1 "AGND" H 2100 1530 50  0000 C CNN
F 2 "" H 2100 1600 60  0001 C CNN
F 3 "" H 2100 1600 60  0001 C CNN
	1    2100 1600
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR044
U 1 1 55ED5806
P 3750 1800
F 0 "#PWR044" H 3750 1800 40  0001 C CNN
F 1 "AGND" H 3750 1730 50  0000 C CNN
F 2 "" H 3750 1800 60  0001 C CNN
F 3 "" H 3750 1800 60  0001 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
Text Notes 4000 2650 0    60   ~ 0
Linear or DC/DC converter
$Comp
L ledboard-rescue:LM7805CT U6
U 1 1 55ED69F9
P 2850 2050
F 0 "U6" H 2650 2250 40  0000 C CNN
F 1 "NC R-78E3.3-0.5" H 2850 2250 40  0000 L CNN
F 2 "TO-220" H 2850 2150 30  0000 C CIN
F 3 "" H 2850 2050 60  0000 C CNN
	1    2850 2050
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR045
U 1 1 55ED70CF
P 2850 2300
F 0 "#PWR045" H 2850 2300 40  0001 C CNN
F 1 "AGND" H 2850 2230 50  0000 C CNN
F 2 "" H 2850 2300 60  0001 C CNN
F 3 "" H 2850 2300 60  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 55ED8FD5
P 8400 1850
F 0 "R2" V 8500 1850 50  0000 C CNN
F 1 "100" V 8400 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8500 1850 60  0001 C CNN
F 3 "" H 8400 1850 60  0001 C CNN
	1    8400 1850
	0    -1   -1   0   
$EndComp
Text Label 8600 1850 0    60   ~ 0
WS23812B_DO
Text Label 1900 4150 0    60   ~ 0
WS23812B_DO
$Comp
L Device:R R1
U 1 1 55ED9C53
P 1400 4350
F 0 "R1" V 1450 4500 50  0000 C CNN
F 1 "10K" V 1400 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1500 4350 60  0001 C CNN
F 3 "" H 1400 4350 60  0001 C CNN
	1    1400 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR046
U 1 1 55ED9F69
P 1050 4350
F 0 "#PWR046" H 1050 4310 30  0001 C CNN
F 1 "+3.3V" H 1050 4460 30  0000 C CNN
F 2 "" H 1050 4350 60  0001 C CNN
F 3 "" H 1050 4350 60  0001 C CNN
	1    1050 4350
	0    -1   1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 55EDB597
P 1200 1100
F 0 "D?" H 1200 1200 50  0000 C CNN
F 1 "1N4148 SMD 500mA SOD-123" H 1000 1000 50  0000 C CNN
F 2 "SOD-323" H 1200 1100 60  0001 C CNN
F 3 "" H 1200 1100 60  0000 C CNN
	1    1200 1100
	-1   0    0    1   
$EndComp
Text Label 900  1100 0    60   ~ 0
VIN
$Comp
L power:+12V #PWR047
U 1 1 55EDC751
P 4450 1150
F 0 "#PWR047" H 4450 1100 20  0001 C CNN
F 1 "+12V" H 4450 1250 30  0000 C CNN
F 2 "" H 4450 1150 60  0001 C CNN
F 3 "" H 4450 1150 60  0001 C CNN
	1    4450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 55EDC8DD
P 4450 1300
F 0 "R?" V 4550 1300 50  0000 C CNN
F 1 "15K" V 4450 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4550 1300 60  0001 C CNN
F 3 "" H 4450 1300 60  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 55EDD0A4
P 4450 1700
F 0 "R?" V 4550 1700 50  0000 C CNN
F 1 "1K" V 4450 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4550 1700 60  0001 C CNN
F 3 "" H 4450 1700 60  0001 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L ledboard-rescue:AGND #PWR048
U 1 1 55EDD21B
P 4450 1850
F 0 "#PWR048" H 4450 1850 40  0001 C CNN
F 1 "AGND" H 4450 1780 50  0000 C CNN
F 2 "" H 4450 1850 60  0001 C CNN
F 3 "" H 4450 1850 60  0001 C CNN
	1    4450 1850
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  800  750  2700
Wire Notes Line
	750  800  5300 800 
Wire Notes Line
	5300 800  5300 2700
Wire Notes Line
	5300 2700 750  2700
Wire Wire Line
	1500 1400 1600 1400
Wire Wire Line
	1500 1400 1500 1550
Wire Wire Line
	1600 1350 1600 1400
Wire Wire Line
	1500 1750 1500 1900
Wire Wire Line
	6100 1300 6200 1300
Wire Wire Line
	6100 1500 6200 1500
Wire Wire Line
	6100 1700 6200 1700
Wire Notes Line
	5600 800  5600 2100
Wire Notes Line
	5600 2100 6350 2100
Wire Notes Line
	6350 2100 6350 800 
Wire Notes Line
	6350 800  5600 800 
Wire Wire Line
	6100 1100 6200 1100
Wire Wire Line
	4700 3950 4350 3950
Wire Wire Line
	4700 3400 4700 3550
Wire Wire Line
	2550 4050 1850 4050
Wire Wire Line
	6700 1450 7450 1450
Wire Wire Line
	7250 1350 7450 1350
Wire Wire Line
	7450 1550 7250 1550
Wire Wire Line
	7250 1550 7250 1650
Wire Notes Line
	6550 800  6550 2100
Wire Notes Line
	6550 2100 7850 2100
Wire Notes Line
	7850 2100 7850 800 
Wire Notes Line
	7850 800  6550 800 
Wire Wire Line
	4350 4450 5750 4450
Wire Wire Line
	2550 3950 1050 3950
Wire Wire Line
	1200 4050 1550 4050
Wire Wire Line
	1850 4550 2550 4550
Wire Wire Line
	2200 4650 2550 4650
Wire Wire Line
	1050 4650 1900 4650
Wire Wire Line
	1550 4550 1050 4550
Wire Wire Line
	4350 4650 4450 4650
Wire Wire Line
	4450 4650 4450 4850
Wire Wire Line
	4450 4850 4500 4850
Connection ~ 4450 4650
Wire Wire Line
	4950 3550 4900 3550
Wire Wire Line
	2550 4250 1850 4250
Wire Wire Line
	1550 4250 1050 4250
Wire Wire Line
	4800 4850 5350 4850
Wire Wire Line
	4350 4550 5950 4550
Wire Wire Line
	5250 5100 4800 5100
Wire Wire Line
	4450 5100 4500 5100
Connection ~ 4450 4850
Wire Wire Line
	4350 4050 5300 4050
Wire Wire Line
	4350 4150 5550 4150
Wire Wire Line
	5550 4050 5550 4150
Connection ~ 5550 4150
Wire Wire Line
	4350 4250 5950 4250
Wire Wire Line
	5550 3350 5550 3750
Wire Wire Line
	5750 3350 5750 3750
Wire Wire Line
	5750 4050 5750 4450
Connection ~ 5750 4450
Wire Wire Line
	4350 4350 5350 4350
Wire Wire Line
	5350 4350 5350 4850
Wire Wire Line
	1600 2350 1600 2450
Wire Wire Line
	1600 2450 1700 2450
Wire Wire Line
	1700 2450 1700 2500
Wire Wire Line
	1600 2250 1700 2250
Wire Wire Line
	1450 5300 2000 5300
Wire Wire Line
	1450 5400 2000 5400
Wire Wire Line
	1450 5500 2000 5500
Wire Wire Line
	1450 5600 2000 5600
Wire Wire Line
	1450 5700 2000 5700
Wire Notes Line
	750  3050 750  5950
Wire Notes Line
	750  5950 6250 5950
Wire Notes Line
	6250 5950 6250 3050
Wire Notes Line
	6250 3050 750  3050
Wire Wire Line
	1700 6600 1150 6600
Wire Wire Line
	1150 6600 1150 6950
Wire Wire Line
	1900 6950 1150 6950
Connection ~ 1150 6950
Wire Wire Line
	2100 6950 2300 6950
Wire Wire Line
	2300 6950 2300 6600
Wire Notes Line
	750  6200 750  7600
Wire Notes Line
	750  7600 3900 7600
Wire Notes Line
	3900 7600 3900 6200
Wire Notes Line
	3900 6200 750  6200
Wire Wire Line
	2300 6600 2500 6600
Wire Wire Line
	2800 6600 3600 6600
Wire Wire Line
	9000 1650 9000 1550
Wire Wire Line
	8150 1450 9000 1450
Wire Wire Line
	9000 1350 9000 1150
Wire Notes Line
	8000 800  8000 2100
Wire Notes Line
	8000 2100 9500 2100
Wire Notes Line
	9500 2100 9500 800 
Wire Notes Line
	9500 800  8000 800 
Wire Wire Line
	8750 2750 7600 2750
Wire Wire Line
	9050 2750 9100 2750
Wire Wire Line
	9550 3000 9550 2900
Wire Wire Line
	1050 4150 1250 4150
Wire Wire Line
	1550 4150 2550 4150
Wire Wire Line
	6700 1450 6700 1900
Wire Wire Line
	7000 1900 7750 1900
Wire Wire Line
	9550 2500 10150 2500
Wire Wire Line
	10150 2500 10150 2650
Wire Wire Line
	8450 3200 9100 3200
Wire Wire Line
	9100 3200 9100 2750
Connection ~ 9100 2750
Wire Wire Line
	6750 2800 6750 2750
Wire Wire Line
	7050 2800 7050 2750
Wire Wire Line
	6750 3000 6750 3100
Wire Wire Line
	7050 3000 7050 3100
Wire Wire Line
	7400 3400 6550 3400
Wire Wire Line
	7400 3300 6550 3300
Wire Wire Line
	6750 2750 7050 2750
Wire Wire Line
	7400 2750 7400 3200
Connection ~ 7050 2750
Wire Wire Line
	2550 4450 1050 4450
Wire Wire Line
	8750 3950 7600 3950
Wire Wire Line
	9050 3950 9100 3950
Wire Wire Line
	9550 4200 9550 4100
Wire Wire Line
	9550 3700 10150 3700
Wire Wire Line
	10150 3700 10150 3850
Wire Wire Line
	8450 4400 9100 4400
Wire Wire Line
	9100 4400 9100 3950
Connection ~ 9100 3950
Wire Wire Line
	6750 4000 6750 3950
Wire Wire Line
	7050 4000 7050 3950
Wire Wire Line
	6750 4200 6750 4300
Wire Wire Line
	7050 4200 7050 4300
Wire Wire Line
	7400 4600 6550 4600
Wire Wire Line
	7400 4500 6550 4500
Wire Wire Line
	6750 3950 7050 3950
Wire Wire Line
	7400 3950 7400 4400
Connection ~ 7050 3950
Wire Wire Line
	8750 5200 7600 5200
Wire Wire Line
	9050 5200 9100 5200
Wire Wire Line
	9550 5450 9550 5350
Wire Wire Line
	9550 4950 10150 4950
Wire Wire Line
	10150 4950 10150 5100
Wire Wire Line
	8450 5650 9100 5650
Wire Wire Line
	9100 5650 9100 5200
Connection ~ 9100 5200
Wire Wire Line
	6750 5250 6750 5200
Wire Wire Line
	7050 5250 7050 5200
Wire Wire Line
	6750 5450 6750 5550
Wire Wire Line
	7050 5450 7050 5550
Wire Wire Line
	7400 5850 6550 5850
Wire Wire Line
	7400 5750 6550 5750
Wire Wire Line
	6750 5200 7050 5200
Wire Wire Line
	7400 5200 7400 5650
Connection ~ 7050 5200
Connection ~ 4700 3550
Wire Wire Line
	3750 1400 3750 1350
Connection ~ 1600 1400
Wire Wire Line
	1500 1900 1600 1900
Wire Wire Line
	1600 1900 1600 1950
Connection ~ 2100 1400
Wire Wire Line
	2300 1100 2300 1400
Wire Wire Line
	3450 2000 3250 2000
Wire Wire Line
	3450 1100 3450 1200
Connection ~ 3450 1200
Wire Wire Line
	3750 1400 3450 1400
Connection ~ 3450 1400
Wire Wire Line
	2300 2000 2450 2000
Connection ~ 2300 1400
Wire Wire Line
	8150 1450 8150 1850
Wire Wire Line
	8150 1850 8250 1850
Wire Wire Line
	8550 1850 9300 1850
Wire Wire Line
	2550 4350 1550 4350
Wire Wire Line
	1250 4350 1050 4350
Wire Wire Line
	1350 1100 1750 1100
Wire Wire Line
	1750 1100 1750 1400
Connection ~ 1750 1400
Wire Wire Line
	1050 1100 800  1100
Wire Wire Line
	4450 1550 4450 1500
Wire Wire Line
	4450 1500 5050 1500
Connection ~ 4450 1500
Text Label 4650 1500 0    60   ~ 0
VIN_DIV
Wire Wire Line
	4450 4650 5950 4650
Wire Wire Line
	4450 4850 4450 5100
Wire Wire Line
	5550 4150 5950 4150
Wire Wire Line
	5750 4450 5950 4450
Wire Wire Line
	1150 6950 1150 7300
Wire Wire Line
	9100 2750 9250 2750
Wire Wire Line
	7050 2750 7400 2750
Wire Wire Line
	9100 3950 9250 3950
Wire Wire Line
	7050 3950 7400 3950
Wire Wire Line
	9100 5200 9250 5200
Wire Wire Line
	7050 5200 7400 5200
Wire Wire Line
	4700 3550 4700 3950
Wire Wire Line
	1600 1400 1750 1400
Wire Wire Line
	2100 1400 2300 1400
Wire Wire Line
	3450 1200 3450 1400
Wire Wire Line
	3450 1400 3450 2000
Wire Wire Line
	2300 1400 2300 2000
Wire Wire Line
	1750 1400 2100 1400
Wire Wire Line
	4450 1500 4450 1450
$EndSCHEMATC
