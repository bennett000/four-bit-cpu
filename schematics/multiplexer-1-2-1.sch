EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 64 280
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
S 6000 3150 600  500 
U 5C3FFCCB
F0 "mux-2-1-or-1" 50
F1 "gate-or-2.sch" 50
F2 "Vcc" I L 6000 3200 50 
F3 "Gnd" I L 6000 3300 50 
F4 "A" I L 6000 3450 50 
F5 "B" I L 6000 3550 50 
F6 "Q" I R 6600 3550 50 
$EndSheet
$Sheet
S 4350 2750 600  500 
U 5C3FFD06
F0 "mux-2-1-and-1" 50
F1 "gate-and-2.sch" 50
F2 "Vcc" I L 4350 2800 50 
F3 "Gnd" I L 4350 2900 50 
F4 "A" I L 4350 3050 50 
F5 "B" I L 4350 3150 50 
F6 "Q" I R 4950 3150 50 
$EndSheet
$Sheet
S 4350 3700 600  500 
U 5C3FFE07
F0 "mux-2-1-and-2" 50
F1 "gate-and-2.sch" 50
F2 "Vcc" I L 4350 3750 50 
F3 "Gnd" I L 4350 3850 50 
F4 "A" I L 4350 4000 50 
F5 "B" I L 4350 4100 50 
F6 "Q" I R 4950 4100 50 
$EndSheet
$Sheet
S 3050 3300 550  400 
U 5C3FFE0F
F0 "mux-2-1-not-1" 50
F1 "gate-not.sch" 50
F2 "Q" I L 3050 3600 50 
F3 "Vcc" I L 3050 3350 50 
F4 "NQ" I R 3600 3600 50 
F5 "Gnd" I L 3050 3450 50 
$EndSheet
Text HLabel 2300 3050 0    50   Input ~ 0
A
Text HLabel 2300 3600 0    50   Input ~ 0
Sel
Text HLabel 2300 4100 0    50   Input ~ 0
B
Text HLabel 7100 3550 2    50   Input ~ 0
Z
Text HLabel 4150 2800 0    50   Input ~ 0
Vcc
Text HLabel 4150 2900 0    50   Input ~ 0
Gnd
Wire Wire Line
	4150 2800 4350 2800
Wire Wire Line
	4150 2900 4350 2900
Text HLabel 4150 3750 0    50   Input ~ 0
Vcc
Text HLabel 4150 3850 0    50   Input ~ 0
Gnd
Wire Wire Line
	4150 3750 4350 3750
Wire Wire Line
	4150 3850 4350 3850
Text HLabel 2850 3350 0    50   Input ~ 0
Vcc
Text HLabel 2850 3450 0    50   Input ~ 0
Gnd
Wire Wire Line
	2850 3350 3050 3350
Wire Wire Line
	2850 3450 3050 3450
Text HLabel 5800 3200 0    50   Input ~ 0
Vcc
Text HLabel 5800 3300 0    50   Input ~ 0
Gnd
Wire Wire Line
	5800 3200 6000 3200
Wire Wire Line
	5800 3300 6000 3300
Wire Wire Line
	2300 4100 4350 4100
Wire Wire Line
	2300 3050 4350 3050
Wire Wire Line
	2300 3600 2500 3600
Wire Wire Line
	4350 4000 2500 4000
Wire Wire Line
	2500 4000 2500 3600
Connection ~ 2500 3600
Wire Wire Line
	2500 3600 3050 3600
Wire Wire Line
	3600 3600 3900 3600
Wire Wire Line
	3900 3600 3900 3150
Wire Wire Line
	3900 3150 4350 3150
Wire Wire Line
	4950 4100 5350 4100
Wire Wire Line
	5350 4100 5350 3550
Wire Wire Line
	5350 3550 6000 3550
Wire Wire Line
	4950 3150 5350 3150
Wire Wire Line
	5350 3150 5350 3450
Wire Wire Line
	5350 3450 6000 3450
Wire Wire Line
	6600 3550 7100 3550
$EndSCHEMATC
