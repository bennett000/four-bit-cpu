EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 280
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
S 7200 2900 750  350 
U 5C3FF58A
F0 "or-not-1" 50
F1 "gate-not.sch" 50
F2 "Q" I L 7200 3200 50 
F3 "Vcc" I L 7200 2950 50 
F4 "NQ" I R 7950 3200 50 
F5 "Gnd" I L 7200 3050 50 
$EndSheet
$Sheet
S 5950 2800 550  600 
U 5C3FF8C3
F0 "or-nor-1" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 5950 3200 50 
F3 "B" I L 5950 3300 50 
F4 "Vcc" I L 5950 2900 50 
F5 "Q" I R 6500 3300 50 
F6 "Gnd" I L 5950 3000 50 
$EndSheet
Text HLabel 5750 2900 0    50   Input ~ 0
Vcc
Text HLabel 5750 3000 0    50   Input ~ 0
Gnd
Text HLabel 5750 3200 0    50   Input ~ 0
A
Text HLabel 5750 3300 0    50   Input ~ 0
B
Text HLabel 8400 3200 2    50   Input ~ 0
Q
Wire Wire Line
	8400 3200 7950 3200
Wire Wire Line
	5750 2900 5950 2900
Wire Wire Line
	5750 3000 5950 3000
Wire Wire Line
	6500 3300 6850 3300
Wire Wire Line
	6850 3300 6850 3200
Wire Wire Line
	6850 3200 7200 3200
Text HLabel 7000 2950 0    50   Input ~ 0
Vcc
Text HLabel 7000 3050 0    50   Input ~ 0
Gnd
Wire Wire Line
	7000 2950 7200 2950
Wire Wire Line
	7000 3050 7200 3050
Wire Wire Line
	5750 3200 5950 3200
Wire Wire Line
	5750 3300 5950 3300
$EndSCHEMATC
