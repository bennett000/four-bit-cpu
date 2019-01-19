EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 16
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
S 2250 2700 500  450 
U 5C3630ED
F0 "latch-sr-nor-1" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 2250 3000 50 
F3 "B" I L 2250 3100 50 
F4 "Vcc" I L 2250 2750 50 
F5 "Q" I R 2750 2950 50 
F6 "Gnd" I L 2250 2850 50 
$EndSheet
$Sheet
S 2250 3700 500  450 
U 5C3630FD
F0 "latch-sr-nor-2" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 2250 4000 50 
F3 "B" I L 2250 4100 50 
F4 "Vcc" I L 2250 3750 50 
F5 "Q" I R 2750 3950 50 
F6 "Gnd" I L 2250 3850 50 
$EndSheet
Text HLabel 2050 2750 0    50   Input ~ 0
Vcc
Text HLabel 2050 2850 0    50   Input ~ 0
Gnd
Wire Wire Line
	2050 2750 2250 2750
Wire Wire Line
	2050 2850 2250 2850
Text HLabel 2050 3750 0    50   Input ~ 0
Vcc
Text HLabel 2050 3850 0    50   Input ~ 0
Gnd
Wire Wire Line
	2050 3750 2250 3750
Wire Wire Line
	2050 3850 2250 3850
Text HLabel 1550 4100 0    50   Input ~ 0
S
Text HLabel 1550 3000 0    50   Input ~ 0
R
Wire Wire Line
	1550 3000 2250 3000
Wire Wire Line
	1550 4100 2250 4100
Wire Wire Line
	2750 3950 3350 3950
Wire Wire Line
	3350 3950 3350 3550
Wire Wire Line
	3350 3550 1600 3550
Wire Wire Line
	1600 3550 1600 3100
Wire Wire Line
	1600 3100 2250 3100
Text HLabel 3700 3950 2    50   Input ~ 0
NQ
Wire Wire Line
	3700 3950 3350 3950
Connection ~ 3350 3950
Wire Wire Line
	2750 2950 3350 2950
Wire Wire Line
	3350 2950 3350 3350
Wire Wire Line
	3350 3350 1700 3350
Wire Wire Line
	1700 3350 1700 4000
Wire Wire Line
	1700 4000 2250 4000
Text HLabel 3700 2950 2    50   Input ~ 0
Q
Wire Wire Line
	3700 2950 3350 2950
Connection ~ 3350 2950
$EndSCHEMATC
