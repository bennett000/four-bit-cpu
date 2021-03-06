EESchema Schematic File Version 4
LIBS:adder-1-test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 11
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
U 1 1 5C40CC44
P 6050 3900
F 0 "#GND0101" H 6050 3800 50  0001 C CNN
F 1 "0" H 6050 3987 50  0000 C CNN
F 2 "" H 6050 3900 50  0001 C CNN
F 3 "~" H 6050 3900 50  0001 C CNN
	1    6050 3900
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5C40CC74
P 6050 3250
F 0 "V1" H 6278 3296 50  0000 L CNN
F 1 "dc 5" H 6278 3205 50  0000 L CNN
F 2 "" H 6050 3250 50  0001 C CNN
F 3 "~" H 6050 3250 50  0001 C CNN
	1    6050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3550 6050 3900
$Sheet
S 7300 2900 550  600 
U 5C40CCC0
F0 "adder-1" 50
F1 "adder-1.sch" 50
F2 "Vcc" I L 7300 2950 50 
F3 "Gnd" I L 7300 3050 50 
F4 "A" I L 7300 3200 50 
F5 "B" I L 7300 3300 50 
F6 "Cin" I L 7300 3400 50 
F7 "S" I R 7850 3400 50 
$EndSheet
Wire Wire Line
	7300 2950 6050 2950
Wire Wire Line
	6050 3550 6600 3550
Wire Wire Line
	6600 3550 6600 3050
Wire Wire Line
	6600 3050 7300 3050
Connection ~ 6050 3550
$Comp
L pspice:0 #GND0102
U 1 1 5C40CEC1
P 6250 5000
F 0 "#GND0102" H 6250 4900 50  0001 C CNN
F 1 "0" H 6250 5087 50  0000 C CNN
F 2 "" H 6250 5000 50  0001 C CNN
F 3 "~" H 6250 5000 50  0001 C CNN
	1    6250 5000
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5C40CFA1
P 6250 4450
F 0 "V2" H 6478 4496 50  0000 L CNN
F 1 "dc 5" H 6478 4405 50  0000 L CNN
F 2 "" H 6250 4450 50  0001 C CNN
F 3 "~" H 6250 4450 50  0001 C CNN
	1    6250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4750 6250 5000
$Comp
L pspice:0 #GND0103
U 1 1 5C40D375
P 6850 5500
F 0 "#GND0103" H 6850 5400 50  0001 C CNN
F 1 "0" H 6850 5587 50  0000 C CNN
F 2 "" H 6850 5500 50  0001 C CNN
F 3 "~" H 6850 5500 50  0001 C CNN
	1    6850 5500
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5C40D37B
P 6850 4950
F 0 "V3" H 7078 4996 50  0000 L CNN
F 1 "dc 5" H 7078 4905 50  0000 L CNN
F 2 "" H 6850 4950 50  0001 C CNN
F 3 "~" H 6850 4950 50  0001 C CNN
	1    6850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5250 6850 5500
$Comp
L pspice:0 #GND0104
U 1 1 5C40D430
P 7400 6050
F 0 "#GND0104" H 7400 5950 50  0001 C CNN
F 1 "0" H 7400 6137 50  0000 C CNN
F 2 "" H 7400 6050 50  0001 C CNN
F 3 "~" H 7400 6050 50  0001 C CNN
	1    7400 6050
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V4
U 1 1 5C40D436
P 7400 5500
F 0 "V4" H 7628 5546 50  0000 L CNN
F 1 "dc 5" H 7628 5455 50  0000 L CNN
F 2 "" H 7400 5500 50  0001 C CNN
F 3 "~" H 7400 5500 50  0001 C CNN
	1    7400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5800 7400 6050
Wire Wire Line
	7400 5200 7400 3900
Wire Wire Line
	7400 3900 7200 3900
Wire Wire Line
	7200 3900 7200 3400
Wire Wire Line
	7200 3400 7300 3400
Wire Wire Line
	6850 4650 6850 3300
Wire Wire Line
	6850 3300 7300 3300
Wire Wire Line
	7300 3200 6750 3200
Wire Wire Line
	6750 3200 6750 4150
Wire Wire Line
	6750 4150 6250 4150
Text HLabel 8200 3400 2    50   Input ~ 0
S
Wire Wire Line
	8200 3400 7850 3400
Text Label 7950 3400 0    50   ~ 0
Sout
Text Label 6450 4150 0    50   ~ 0
Ain
Text Label 6850 4250 0    50   ~ 0
Bin
Text Label 7400 4250 0    50   ~ 0
Cin
$EndSCHEMATC
