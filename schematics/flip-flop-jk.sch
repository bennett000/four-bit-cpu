EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 46
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
S 4500 3400 500  600 
U 5C36C4AA
F0 "sr-latch-jk" 50
F1 "latch-sr.sch" 50
F2 "Vcc" I L 4500 3450 50 
F3 "Gnd" I L 4500 3550 50 
F4 "S" I L 4500 3800 50 
F5 "R" I L 4500 3900 50 
F6 "NQ" I R 5000 3800 50 
F7 "Q" I R 5000 3600 50 
$EndSheet
$Sheet
S 1950 3050 700  600 
U 5C36C553
F0 "and-3-j" 50
F1 "gate-and-3.sch" 50
F2 "Vcc" I L 1950 3100 50 
F3 "Gnd" I L 1950 3200 50 
F4 "A" I L 1950 3350 50 
F5 "B" I L 1950 3450 50 
F6 "C" I L 1950 3550 50 
F7 "Q" I R 2650 3350 50 
$EndSheet
$Sheet
S 3100 3050 500  400 
U 5C36C63B
F0 "not-and-3-j" 50
F1 "gate-not.sch" 50
F2 "Q" I L 3100 3350 50 
F3 "Vcc" I L 3100 3100 50 
F4 "NQ" I R 3600 3250 50 
F5 "Gnd" I L 3100 3200 50 
$EndSheet
Text HLabel 2900 3100 0    50   Input ~ 0
Vcc
Text HLabel 2900 3200 0    50   Input ~ 0
Gnd
Wire Wire Line
	2900 3100 3100 3100
Wire Wire Line
	3100 3200 2900 3200
Wire Wire Line
	2650 3350 3100 3350
Text HLabel 1750 3100 0    50   Input ~ 0
Vcc
Text HLabel 1750 3200 0    50   Input ~ 0
Gnd
Wire Wire Line
	1750 3100 1950 3100
Wire Wire Line
	1950 3200 1750 3200
Text HLabel 4300 3450 0    50   Input ~ 0
Vcc
Text HLabel 4300 3550 0    50   Input ~ 0
Gnd
Wire Wire Line
	4300 3450 4500 3450
Wire Wire Line
	4500 3550 4300 3550
$Sheet
S 1950 4150 700  600 
U 5C36C921
F0 "and-3-k" 50
F1 "gate-and-3.sch" 50
F2 "Vcc" I L 1950 4200 50 
F3 "Gnd" I L 1950 4300 50 
F4 "A" I L 1950 4450 50 
F5 "B" I L 1950 4550 50 
F6 "C" I L 1950 4650 50 
F7 "Q" I R 2650 4450 50 
$EndSheet
$Sheet
S 3100 4150 500  400 
U 5C36C927
F0 "not-and-3-k" 50
F1 "gate-not.sch" 50
F2 "Q" I L 3100 4450 50 
F3 "Vcc" I L 3100 4200 50 
F4 "NQ" I R 3600 4350 50 
F5 "Gnd" I L 3100 4300 50 
$EndSheet
Text HLabel 2900 4200 0    50   Input ~ 0
Vcc
Text HLabel 2900 4300 0    50   Input ~ 0
Gnd
Wire Wire Line
	2900 4200 3100 4200
Wire Wire Line
	3100 4300 2900 4300
Wire Wire Line
	2650 4450 3100 4450
Text HLabel 1750 4200 0    50   Input ~ 0
Vcc
Text HLabel 1750 4300 0    50   Input ~ 0
Gnd
Wire Wire Line
	1750 4200 1950 4200
Wire Wire Line
	1950 4300 1750 4300
Wire Wire Line
	4500 3800 3850 3800
Wire Wire Line
	3850 3800 3850 3250
Wire Wire Line
	3850 3250 3600 3250
Wire Wire Line
	4500 3900 4050 3900
Wire Wire Line
	4050 3900 4050 4350
Wire Wire Line
	4050 4350 3600 4350
Text HLabel 5900 3600 2    50   Input ~ 0
Q
Text HLabel 5900 3800 2    50   Input ~ 0
NQ
Wire Wire Line
	5900 3600 5650 3600
Wire Wire Line
	5900 3800 5800 3800
Wire Wire Line
	5800 3800 5800 3950
Wire Wire Line
	5800 3950 6450 3950
Wire Wire Line
	6450 3950 6450 2550
Wire Wire Line
	6450 2550 1300 2550
Wire Wire Line
	1300 2550 1300 3350
Wire Wire Line
	1300 3350 1950 3350
Connection ~ 5800 3800
Wire Wire Line
	5800 3800 5000 3800
Wire Wire Line
	5650 3600 5650 5450
Wire Wire Line
	5650 5450 1300 5450
Wire Wire Line
	1300 5450 1300 4650
Wire Wire Line
	1300 4650 1950 4650
Connection ~ 5650 3600
Wire Wire Line
	5650 3600 5000 3600
Text HLabel 1000 4550 0    50   Input ~ 0
K
Wire Wire Line
	1950 4550 1000 4550
Text HLabel 950  3450 0    50   Input ~ 0
J
Wire Wire Line
	950  3450 1950 3450
Text HLabel 950  4000 0    50   Input ~ 0
CLK
Wire Wire Line
	1300 4000 1300 3550
Wire Wire Line
	1300 3550 1950 3550
Wire Wire Line
	950  4000 1300 4000
Wire Wire Line
	1950 4450 1300 4450
Wire Wire Line
	1300 4450 1300 4000
Connection ~ 1300 4000
$EndSCHEMATC
