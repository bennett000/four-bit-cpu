EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 58 225
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
S 1450 2000 700  600 
U 5C3B86A2
F0 "register-flip-flop-1" 50
F1 "flip-flop-d.sch" 50
F2 "Vcc" I L 1450 2050 50 
F3 "Gnd" I L 1450 2150 50 
F4 "D" I L 1450 2350 50 
F5 "CLK" I L 1450 2450 50 
F6 "Q" I R 2150 2150 50 
F7 "NQ" I R 2150 2400 50 
$EndSheet
$Sheet
S 3100 2000 700  600 
U 5C3B86AB
F0 "register-flip-flop-2" 50
F1 "flip-flop-d.sch" 50
F2 "Vcc" I L 3100 2050 50 
F3 "Gnd" I L 3100 2150 50 
F4 "D" I L 3100 2350 50 
F5 "CLK" I L 3100 2450 50 
F6 "Q" I R 3800 2150 50 
F7 "NQ" I R 3800 2400 50 
$EndSheet
$Sheet
S 4850 2000 700  600 
U 5C3B86B4
F0 "register-flip-flop-3" 50
F1 "flip-flop-d.sch" 50
F2 "Vcc" I L 4850 2050 50 
F3 "Gnd" I L 4850 2150 50 
F4 "D" I L 4850 2350 50 
F5 "CLK" I L 4850 2450 50 
F6 "Q" I R 5550 2150 50 
F7 "NQ" I R 5550 2400 50 
$EndSheet
$Sheet
S 6500 2000 700  600 
U 5C3B86BD
F0 "register-flip-flop-4" 50
F1 "flip-flop-d.sch" 50
F2 "Vcc" I L 6500 2050 50 
F3 "Gnd" I L 6500 2150 50 
F4 "D" I L 6500 2350 50 
F5 "CLK" I L 6500 2450 50 
F6 "Q" I R 7200 2150 50 
F7 "NQ" I R 7200 2400 50 
$EndSheet
Text HLabel 1250 2050 0    50   Input ~ 0
Vcc
Text HLabel 1250 2150 0    50   Input ~ 0
Gnd
Wire Wire Line
	1250 2050 1450 2050
Wire Wire Line
	1250 2150 1450 2150
Text HLabel 2900 2050 0    50   Input ~ 0
Vcc
Text HLabel 2900 2150 0    50   Input ~ 0
Gnd
Wire Wire Line
	2900 2050 3100 2050
Wire Wire Line
	2900 2150 3100 2150
Text HLabel 4650 2050 0    50   Input ~ 0
Vcc
Text HLabel 4650 2150 0    50   Input ~ 0
Gnd
Wire Wire Line
	4650 2050 4850 2050
Wire Wire Line
	4650 2150 4850 2150
Text HLabel 6300 2050 0    50   Input ~ 0
Vcc
Text HLabel 6300 2150 0    50   Input ~ 0
Gnd
Wire Wire Line
	6300 2050 6500 2050
Wire Wire Line
	6300 2150 6500 2150
Text HLabel 1250 2350 0    50   Input ~ 0
D1
Text HLabel 1250 2450 0    50   Input ~ 0
CLK
Wire Wire Line
	1250 2350 1450 2350
Wire Wire Line
	1250 2450 1450 2450
Text HLabel 2900 2350 0    50   Input ~ 0
D2
Text HLabel 2900 2450 0    50   Input ~ 0
CLK
Wire Wire Line
	2900 2350 3100 2350
Wire Wire Line
	2900 2450 3100 2450
Text HLabel 4650 2350 0    50   Input ~ 0
D3
Text HLabel 4650 2450 0    50   Input ~ 0
CLK
Wire Wire Line
	4650 2350 4850 2350
Wire Wire Line
	4650 2450 4850 2450
Text HLabel 6300 2350 0    50   Input ~ 0
D4
Text HLabel 6300 2450 0    50   Input ~ 0
CLK
Wire Wire Line
	6300 2350 6500 2350
Wire Wire Line
	6300 2450 6500 2450
Text HLabel 2350 2150 2    50   Input ~ 0
Q1
Wire Wire Line
	2350 2150 2150 2150
Text HLabel 4000 2150 2    50   Input ~ 0
Q2
Wire Wire Line
	4000 2150 3800 2150
Text HLabel 5750 2150 2    50   Input ~ 0
Q3
Wire Wire Line
	5750 2150 5550 2150
Text HLabel 7400 2150 2    50   Input ~ 0
Q4
Wire Wire Line
	7400 2150 7200 2150
$EndSCHEMATC
