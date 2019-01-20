EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 222 280
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
S 1200 1650 550  550 
U 5C3B3FDE
F0 "adder-4-1" 50
F1 "adder-1.sch" 50
F2 "Vcc" I L 1200 1700 50 
F3 "Gnd" I L 1200 1800 50 
F4 "A" I L 1200 1950 50 
F5 "B" I L 1200 2050 50 
F6 "Cin" I L 1200 2150 50 
F7 "S" I R 1750 1800 50 
F8 "Cout" I R 1750 2000 50 
$EndSheet
$Sheet
S 2700 1650 550  550 
U 5C3B3FE8
F0 "adder-4-2" 50
F1 "adder-1.sch" 50
F2 "Vcc" I L 2700 1700 50 
F3 "Gnd" I L 2700 1800 50 
F4 "A" I L 2700 1950 50 
F5 "B" I L 2700 2050 50 
F6 "Cin" I L 2700 2150 50 
F7 "S" I R 3250 1800 50 
F8 "Cout" I R 3250 2000 50 
$EndSheet
$Sheet
S 4200 1650 550  550 
U 5C3B3FF2
F0 "adder-4-3" 50
F1 "adder-1.sch" 50
F2 "Vcc" I L 4200 1700 50 
F3 "Gnd" I L 4200 1800 50 
F4 "A" I L 4200 1950 50 
F5 "B" I L 4200 2050 50 
F6 "Cin" I L 4200 2150 50 
F7 "S" I R 4750 1800 50 
F8 "Cout" I R 4750 2000 50 
$EndSheet
$Sheet
S 5700 1650 550  550 
U 5C3B3FFC
F0 "adder-4-4" 50
F1 "adder-1.sch" 50
F2 "Vcc" I L 5700 1700 50 
F3 "Gnd" I L 5700 1800 50 
F4 "A" I L 5700 1950 50 
F5 "B" I L 5700 2050 50 
F6 "Cin" I L 5700 2150 50 
F7 "S" I R 6250 1800 50 
F8 "Cout" I R 6250 2000 50 
$EndSheet
Text HLabel 1000 1700 0    50   Input ~ 0
Vcc
Text HLabel 1000 1800 0    50   Input ~ 0
Gnd
Wire Wire Line
	1000 1700 1200 1700
Wire Wire Line
	1000 1800 1200 1800
Text HLabel 2500 1700 0    50   Input ~ 0
Vcc
Text HLabel 2500 1800 0    50   Input ~ 0
Gnd
Wire Wire Line
	2500 1700 2700 1700
Wire Wire Line
	2500 1800 2700 1800
Text HLabel 4000 1700 0    50   Input ~ 0
Vcc
Text HLabel 4000 1800 0    50   Input ~ 0
Gnd
Wire Wire Line
	4000 1700 4200 1700
Wire Wire Line
	4000 1800 4200 1800
Text HLabel 5500 1700 0    50   Input ~ 0
Vcc
Text HLabel 5500 1800 0    50   Input ~ 0
Gnd
Wire Wire Line
	5500 1700 5700 1700
Wire Wire Line
	5500 1800 5700 1800
Text HLabel 1000 2150 0    50   Input ~ 0
Cin
Text HLabel 7550 2000 2    50   Input ~ 0
Cout
Wire Wire Line
	6250 2000 7550 2000
Wire Wire Line
	1000 2150 1200 2150
Text HLabel 1000 1950 0    50   Input ~ 0
A1
Text HLabel 1000 2050 0    50   Input ~ 0
B1
Wire Wire Line
	1000 1950 1200 1950
Wire Wire Line
	1000 2050 1200 2050
Text HLabel 2500 1950 0    50   Input ~ 0
A2
Text HLabel 2500 2050 0    50   Input ~ 0
B2
Wire Wire Line
	2500 1950 2700 1950
Wire Wire Line
	2500 2050 2700 2050
Text HLabel 4000 1950 0    50   Input ~ 0
A3
Text HLabel 4000 2050 0    50   Input ~ 0
B3
Wire Wire Line
	4000 1950 4200 1950
Wire Wire Line
	4000 2050 4200 2050
Text HLabel 5500 1950 0    50   Input ~ 0
A4
Text HLabel 5500 2050 0    50   Input ~ 0
B4
Wire Wire Line
	5500 1950 5700 1950
Wire Wire Line
	5500 2050 5700 2050
Text HLabel 1950 1800 2    50   Input ~ 0
S1
Wire Wire Line
	1950 1800 1750 1800
Text HLabel 3450 1800 2    50   Input ~ 0
S2
Wire Wire Line
	3450 1800 3250 1800
Text HLabel 4950 1800 2    50   Input ~ 0
S3
Wire Wire Line
	4750 1800 4950 1800
Text HLabel 6500 1800 2    50   Input ~ 0
S4
Wire Wire Line
	6500 1800 6250 1800
Wire Wire Line
	5700 2150 5100 2150
Wire Wire Line
	5100 2150 5100 2000
Wire Wire Line
	5100 2000 4750 2000
Wire Wire Line
	4200 2150 3600 2150
Wire Wire Line
	3600 2150 3600 2000
Wire Wire Line
	3600 2000 3250 2000
Wire Wire Line
	2050 2150 2050 2000
Wire Wire Line
	2050 2000 1750 2000
Wire Wire Line
	2050 2150 2700 2150
$EndSCHEMATC
