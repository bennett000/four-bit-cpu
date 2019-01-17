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
$Comp
L pspice:0 #GND0101
U 1 1 5C3FDD6E
P 4450 3850
F 0 "#GND0101" H 4450 3750 50  0001 C CNN
F 1 "0" H 4450 3937 50  0000 C CNN
F 2 "" H 4450 3850 50  0001 C CNN
F 3 "~" H 4450 3850 50  0001 C CNN
	1    4450 3850
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5C3FDE46
P 4450 3400
F 0 "V1" H 4678 3446 50  0000 L CNN
F 1 "dc 5" H 4678 3355 50  0000 L CNN
F 2 "" H 4450 3400 50  0001 C CNN
F 3 "~" H 4450 3400 50  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3700 4450 3850
$Sheet
S 5400 3050 550  450 
U 5C3FDEAD
F0 "nor-2" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 5400 3350 50 
F3 "B" I L 5400 3450 50 
F4 "Vcc" I L 5400 3100 50 
F5 "Q" I R 5950 3450 50 
F6 "Gnd" I L 5400 3200 50 
$EndSheet
Wire Wire Line
	4450 3100 5200 3100
Wire Wire Line
	5400 3200 5050 3200
Wire Wire Line
	5050 3200 5050 3700
Wire Wire Line
	5050 3700 4450 3700
Connection ~ 4450 3700
Wire Wire Line
	5400 3350 5200 3350
Wire Wire Line
	5200 3350 5200 3100
Connection ~ 5200 3100
Wire Wire Line
	5200 3100 5400 3100
Wire Wire Line
	5400 3450 5200 3450
Wire Wire Line
	5200 3450 5200 3350
Connection ~ 5200 3350
$EndSCHEMATC
