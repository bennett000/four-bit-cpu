EESchema Schematic File Version 4
LIBS:flip-flop-d-test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
S 5850 3600 550  500 
U 5C3AAAA1
F0 "sr-latch-d" 50
F1 "latch-sr.sch" 50
F2 "Vcc" I L 5850 3650 50 
F3 "Gnd" I L 5850 3750 50 
F4 "S" I L 5850 4000 50 
F5 "R" I L 5850 3900 50 
F6 "NQ" I R 6400 4000 50 
F7 "Q" I R 6400 3800 50 
$EndSheet
Text HLabel 5650 3650 0    50   Input ~ 0
Vcc
Text HLabel 5650 3750 0    50   Input ~ 0
Gnd
Wire Wire Line
	5650 3650 5850 3650
Wire Wire Line
	5850 3750 5650 3750
Text HLabel 1350 5550 0    50   Input ~ 0
D
Text HLabel 1350 4050 0    50   Input ~ 0
Clk
Wire Wire Line
	3100 5550 1350 5550
Text HLabel 6700 3800 2    50   Input ~ 0
Q
Text HLabel 6700 4000 2    50   Input ~ 0
NQ
Wire Wire Line
	6350 3800 6700 3800
Wire Wire Line
	6700 4000 6350 4000
$Sheet
S 3150 2350 500  450 
U 5C403189
F0 "flip-flop-d-nor-1" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 3150 2650 50 
F3 "B" I L 3150 2750 50 
F4 "Vcc" I L 3150 2400 50 
F5 "Q" I R 3650 2600 50 
F6 "Gnd" I L 3150 2500 50 
$EndSheet
Text HLabel 2950 2400 0    50   Input ~ 0
Vcc
Text HLabel 2950 2500 0    50   Input ~ 0
Gnd
Wire Wire Line
	2950 2400 3150 2400
Wire Wire Line
	2950 2500 3150 2500
$Sheet
S 3100 3200 500  450 
U 5C40339B
F0 "flip-flop-d-nor-2" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 3100 3500 50 
F3 "B" I L 3100 3600 50 
F4 "Vcc" I L 3100 3250 50 
F5 "Q" I R 3600 3450 50 
F6 "Gnd" I L 3100 3350 50 
$EndSheet
Text HLabel 2900 3250 0    50   Input ~ 0
Vcc
Text HLabel 2900 3350 0    50   Input ~ 0
Gnd
Wire Wire Line
	2900 3250 3100 3250
Wire Wire Line
	2900 3350 3100 3350
$Sheet
S 3100 4000 550  600 
U 5C403563
F0 "flip-flop-d-nor-3" 50
F1 "gate-nor-3.sch" 50
F2 "A" I L 3100 4300 50 
F3 "B" I L 3100 4400 50 
F4 "Vcc" I L 3100 4050 50 
F5 "Q" I R 3650 4500 50 
F6 "Gnd" I L 3100 4150 50 
F7 "C" I L 3100 4500 50 
$EndSheet
$Sheet
S 3100 5150 500  450 
U 5C40358F
F0 "flip-flop-d-nor-4" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 3100 5450 50 
F3 "B" I L 3100 5550 50 
F4 "Vcc" I L 3100 5200 50 
F5 "Q" I R 3600 5400 50 
F6 "Gnd" I L 3100 5300 50 
$EndSheet
Text HLabel 2900 5200 0    50   Input ~ 0
Vcc
Text HLabel 2900 5300 0    50   Input ~ 0
Gnd
Wire Wire Line
	2900 5200 3100 5200
Wire Wire Line
	2900 5300 3100 5300
Text HLabel 2900 4050 0    50   Input ~ 0
Vcc
Text HLabel 2900 4150 0    50   Input ~ 0
Gnd
Wire Wire Line
	2900 4050 3100 4050
Wire Wire Line
	2900 4150 3100 4150
Wire Wire Line
	3600 5400 4200 5400
Wire Wire Line
	4200 5400 4200 4900
Wire Wire Line
	4200 4900 2250 4900
Wire Wire Line
	2250 4900 2250 4500
Wire Wire Line
	2250 4500 3100 4500
Wire Wire Line
	3150 2650 2250 2650
Wire Wire Line
	2250 2650 2250 4500
Connection ~ 2250 4500
Wire Wire Line
	5850 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4500
Wire Wire Line
	5200 4500 4200 4500
Wire Wire Line
	4200 4500 4200 4800
Wire Wire Line
	4200 4800 2500 4800
Wire Wire Line
	2500 4800 2500 5450
Wire Wire Line
	2500 5450 3100 5450
Connection ~ 4200 4500
Wire Wire Line
	4200 4500 3650 4500
Wire Wire Line
	3100 4400 1350 4400
Wire Wire Line
	3100 3600 1350 3600
Wire Wire Line
	1350 3600 1350 4400
Wire Wire Line
	3600 3450 4200 3450
Wire Wire Line
	5200 3450 5200 3900
Wire Wire Line
	5200 3900 5850 3900
Wire Wire Line
	3100 3500 2500 3500
Wire Wire Line
	2500 3500 2500 2950
Wire Wire Line
	2500 2950 4200 2950
Wire Wire Line
	4200 2950 4200 2600
Wire Wire Line
	4200 2600 3650 2600
Wire Wire Line
	4200 3450 4200 3800
Wire Wire Line
	4200 3800 2500 3800
Wire Wire Line
	2500 3800 2500 4300
Wire Wire Line
	2500 4300 3100 4300
Connection ~ 4200 3450
Wire Wire Line
	4200 3450 5200 3450
Wire Wire Line
	4200 3450 4200 3050
Wire Wire Line
	4200 3050 2600 3050
Wire Wire Line
	2600 3050 2600 2750
Wire Wire Line
	2600 2750 3150 2750
$EndSCHEMATC
