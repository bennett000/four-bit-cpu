EESchema Schematic File Version 4
LIBS:replicate-1-4-test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 14
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
S 3050 2550 550  400 
U 5C4E3BEC
F0 "buffer-not-1" 50
F1 "gate-not.sch" 50
F2 "Q" I L 3050 2850 50 
F3 "Vcc" I L 3050 2600 50 
F4 "NQ" I R 3600 2850 50 
F5 "Gnd" I L 3050 2700 50 
$EndSheet
$Sheet
S 4550 2550 550  400 
U 5C4E3BF3
F0 "buffer-not-2" 50
F1 "gate-not.sch" 50
F2 "Q" I L 4550 2850 50 
F3 "Vcc" I L 4550 2600 50 
F4 "NQ" I R 5100 2850 50 
F5 "Gnd" I L 4550 2700 50 
$EndSheet
Text HLabel 2850 2600 0    50   Input ~ 0
Vcc
Text HLabel 2850 2700 0    50   Input ~ 0
Gnd
Text HLabel 2850 2850 0    50   Input ~ 0
Q
Text HLabel 5450 2850 2    50   Input ~ 0
QQ
Wire Wire Line
	5450 2850 5100 2850
Wire Wire Line
	4550 2850 3600 2850
Wire Wire Line
	3050 2850 2850 2850
Wire Wire Line
	2850 2700 3050 2700
Wire Wire Line
	3050 2600 2850 2600
Text HLabel 4350 2600 0    50   Input ~ 0
Vcc
Text HLabel 4350 2700 0    50   Input ~ 0
Gnd
Wire Wire Line
	4350 2700 4550 2700
Wire Wire Line
	4550 2600 4350 2600
$EndSCHEMATC
