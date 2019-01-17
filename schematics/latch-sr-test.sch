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
L pspice:VSOURCE V1
U 1 1 5C3FEB0F
P 4100 3300
F 0 "V1" H 4328 3346 50  0000 L CNN
F 1 "dc 5" H 4328 3255 50  0000 L CNN
F 2 "" H 4100 3300 50  0001 C CNN
F 3 "~" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0101
U 1 1 5C3FEB94
P 4100 3900
F 0 "#GND0101" H 4100 3800 50  0001 C CNN
F 1 "0" H 4100 3987 50  0000 C CNN
F 2 "" H 4100 3900 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3900 4100 3600
$Sheet
S 5100 2950 550  550 
U 5C3FEC50
F0 "latch-sr" 50
F1 "latch-sr.sch" 50
F2 "Vcc" I L 5100 3000 50 
F3 "Gnd" I L 5100 3100 50 
F4 "S" I L 5100 3300 50 
F5 "R" I L 5100 3400 50 
F6 "NQ" I R 5650 3000 50 
F7 "Q" I R 5650 3400 50 
$EndSheet
Wire Wire Line
	5100 3000 4750 3000
Wire Wire Line
	5100 3100 4600 3100
Wire Wire Line
	4600 3100 4600 3600
Wire Wire Line
	4600 3600 4100 3600
Connection ~ 4100 3600
Wire Wire Line
	5100 3300 4750 3300
Connection ~ 4750 3000
Wire Wire Line
	4750 3000 4100 3000
Wire Wire Line
	5100 3400 4750 3400
Wire Wire Line
	4750 3000 4750 3300
Connection ~ 4750 3300
Wire Wire Line
	4750 3300 4750 3400
$EndSCHEMATC
