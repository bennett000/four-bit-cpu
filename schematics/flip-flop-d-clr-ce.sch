EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 50
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
S 3700 2100 550  600 
U 5C42D9A9
F0 "flip-flop-d-clr-ce-flip-flop-d-clr" 50
F1 "flip-flop-d-clr.sch" 50
F2 "D" I L 3700 2450 50 
F3 "Clk" I L 3700 2550 50 
F4 "Vcc" I L 3700 2150 50 
F5 "Gnd" I L 3700 2250 50 
F6 "NQ" I R 4250 2150 50 
F7 "Q" I R 4250 2650 50 
F8 "Clr" I L 3700 2650 50 
$EndSheet
Text HLabel 3500 2150 0    50   Input ~ 0
Vcc
Text HLabel 3500 2250 0    50   Input ~ 0
Gnd
Text HLabel 3500 2450 0    50   Input ~ 0
D
Text HLabel 1650 2100 0    50   Input ~ 0
Clk
Text HLabel 3500 2650 0    50   Input ~ 0
Clr
Text HLabel 1650 2200 0    50   Input ~ 0
CE
Text HLabel 4550 2650 2    50   Input ~ 0
Q
Text HLabel 4500 2150 2    50   Input ~ 0
NQ
Wire Wire Line
	4500 2150 4250 2150
Wire Wire Line
	4250 2650 4550 2650
Wire Wire Line
	3500 2150 3700 2150
Wire Wire Line
	3500 2250 3700 2250
Wire Wire Line
	3500 2450 3700 2450
Wire Wire Line
	3500 2650 3700 2650
$Sheet
S 1850 1800 550  450 
U 5C42DAB7
F0 "flip-flop-d-clr-ce-and-1" 50
F1 "gate-and-2.sch" 50
F2 "Vcc" I L 1850 1850 50 
F3 "Gnd" I L 1850 1950 50 
F4 "A" I L 1850 2100 50 
F5 "B" I L 1850 2200 50 
F6 "Q" I R 2400 2200 50 
$EndSheet
Text HLabel 1650 1850 0    50   Input ~ 0
Vcc
Text HLabel 1650 1950 0    50   Input ~ 0
Gnd
Wire Wire Line
	1650 1850 1850 1850
Wire Wire Line
	1650 1950 1850 1950
Wire Wire Line
	1650 2100 1850 2100
Wire Wire Line
	1650 2200 1850 2200
Wire Wire Line
	2400 2200 2800 2200
Wire Wire Line
	2800 2200 2800 2550
Wire Wire Line
	2800 2550 3700 2550
Text Label 2900 2550 0    50   ~ 0
CEandClk
$EndSCHEMATC
