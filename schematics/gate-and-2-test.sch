EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L pspice:VSOURCE V1
U 1 1 5C3FE25F
P 3550 3400
F 0 "V1" H 3778 3446 50  0000 L CNN
F 1 "dc 5" H 3778 3355 50  0000 L CNN
F 2 "" H 3550 3400 50  0001 C CNN
F 3 "~" H 3550 3400 50  0001 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0101
U 1 1 5C3FE2DF
P 3550 4000
F 0 "#GND0101" H 3550 3900 50  0001 C CNN
F 1 "0" H 3550 4087 50  0000 C CNN
F 2 "" H 3550 4000 50  0001 C CNN
F 3 "~" H 3550 4000 50  0001 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4000 3550 3700
$Sheet
S 4650 3050 650  500 
U 5C3FE316
F0 "and-2" 50
F1 "gate-and-2.sch" 50
F2 "Vcc" I L 4650 3100 50 
F3 "Gnd" I L 4650 3200 50 
F4 "A" I L 4650 3350 50 
F5 "B" I L 4650 3450 50 
F6 "Q" I R 5300 3450 50 
$EndSheet
Wire Wire Line
	4650 3100 4400 3100
Wire Wire Line
	4650 3200 4200 3200
Wire Wire Line
	4200 3200 4200 3700
Wire Wire Line
	4200 3700 3550 3700
Connection ~ 3550 3700
Wire Wire Line
	4400 3350 4650 3350
Connection ~ 4400 3100
Wire Wire Line
	4400 3100 3550 3100
Wire Wire Line
	4650 3450 4400 3450
Wire Wire Line
	4400 3100 4400 3350
Connection ~ 4400 3350
Wire Wire Line
	4400 3350 4400 3450
$EndSCHEMATC
