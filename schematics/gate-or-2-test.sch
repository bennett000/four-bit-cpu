EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L pspice:0 #GND0101
U 1 1 5C3FE758
P 4900 3700
F 0 "#GND0101" H 4900 3600 50  0001 C CNN
F 1 "0" H 4900 3787 50  0000 C CNN
F 2 "" H 4900 3700 50  0001 C CNN
F 3 "~" H 4900 3700 50  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5C3FE788
P 4900 3100
F 0 "V1" H 5128 3146 50  0000 L CNN
F 1 "dc 5" H 5128 3055 50  0000 L CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "~" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3400 4900 3700
$Sheet
S 5900 2750 550  500 
U 5C3FE803
F0 "or-2" 50
F1 "gate-or-2.sch" 50
F2 "Vcc" I L 5900 2800 50 
F3 "Gnd" I L 5900 2900 50 
F4 "A" I L 5900 3050 50 
F5 "B" I L 5900 3150 50 
F6 "Q" I R 6450 3150 50 
$EndSheet
Wire Wire Line
	5900 2800 5600 2800
Wire Wire Line
	5900 2900 5400 2900
Wire Wire Line
	5400 2900 5400 3400
Wire Wire Line
	5400 3400 4900 3400
Connection ~ 4900 3400
Wire Wire Line
	5900 3050 5600 3050
Wire Wire Line
	5600 3050 5600 2800
Connection ~ 5600 2800
Wire Wire Line
	5600 2800 4900 2800
Wire Wire Line
	5900 3150 5600 3150
Wire Wire Line
	5600 3150 5600 3050
Connection ~ 5600 3050
$EndSCHEMATC
