EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4550 3350 550  400 
U 5C3FD71F
F0 "not" 50
F1 "gate-not.sch" 50
F2 "Q" I L 4550 3650 50 
F3 "Vcc" I L 4550 3400 50 
F4 "NQ" I R 5100 3650 50 
F5 "Gnd" I L 4550 3500 50 
$EndSheet
$Comp
L pspice:0 #GND01
U 1 1 5C3FD8CE
P 3650 4300
F 0 "#GND01" H 3650 4200 50  0001 C CNN
F 1 "0" H 3650 4387 50  0000 C CNN
F 2 "" H 3650 4300 50  0001 C CNN
F 3 "~" H 3650 4300 50  0001 C CNN
	1    3650 4300
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5C3FD97C
P 3650 3700
F 0 "V1" H 3878 3746 50  0000 L CNN
F 1 "dc 5" H 3878 3655 50  0000 L CNN
F 2 "" H 3650 3700 50  0001 C CNN
F 3 "~" H 3650 3700 50  0001 C CNN
	1    3650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3400 4400 3400
Wire Wire Line
	3650 4000 3650 4300
Wire Wire Line
	3650 4000 4300 4000
Wire Wire Line
	4300 4000 4300 3500
Wire Wire Line
	4300 3500 4550 3500
Connection ~ 3650 4000
Wire Wire Line
	4550 3650 4400 3650
Wire Wire Line
	4400 3650 4400 3400
Connection ~ 4400 3400
Wire Wire Line
	4400 3400 4550 3400
$EndSCHEMATC
