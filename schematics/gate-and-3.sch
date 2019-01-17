EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 26 46
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
S 6250 3050 600  650 
U 5C368E7F
F0 "nor-3-ga3" 50
F1 "gate-nor-3.sch" 50
F2 "A" I L 6250 3450 50 
F3 "B" I L 6250 3550 50 
F4 "Vcc" I L 6250 3100 50 
F5 "Q" I R 6850 3400 50 
F6 "Gnd" I L 6250 3200 50 
F7 "C" I L 6250 3650 50 
$EndSheet
$Sheet
S 4750 2900 500  400 
U 5C368F57
F0 "not-a-ga3" 50
F1 "gate-not.sch" 50
F2 "Q" I L 4750 3200 50 
F3 "Vcc" I L 4750 2950 50 
F4 "NQ" I R 5250 3100 50 
F5 "Gnd" I L 4750 3050 50 
$EndSheet
$Sheet
S 4750 3650 500  400 
U 5C368F5D
F0 "not-b-ga3" 50
F1 "gate-not.sch" 50
F2 "Q" I L 4750 3950 50 
F3 "Vcc" I L 4750 3700 50 
F4 "NQ" I R 5250 3850 50 
F5 "Gnd" I L 4750 3800 50 
$EndSheet
Text HLabel 4550 3700 0    50   Input ~ 0
Vcc
Text HLabel 4550 3800 0    50   Input ~ 0
Gnd
Wire Wire Line
	4550 3700 4750 3700
Wire Wire Line
	4750 3800 4550 3800
Text HLabel 4550 2950 0    50   Input ~ 0
Vcc
Text HLabel 4550 3050 0    50   Input ~ 0
Gnd
Wire Wire Line
	4550 2950 4750 2950
Wire Wire Line
	4750 3050 4550 3050
Text HLabel 4550 3200 0    50   Input ~ 0
A
Text HLabel 4550 3950 0    50   Input ~ 0
B
Wire Wire Line
	4550 3950 4750 3950
Wire Wire Line
	4550 3200 4750 3200
Wire Wire Line
	5250 3100 5750 3100
Wire Wire Line
	5750 3100 5750 3450
Wire Wire Line
	5750 3450 6250 3450
Wire Wire Line
	5250 3850 5750 3850
Wire Wire Line
	5750 3850 5750 3550
Wire Wire Line
	5750 3550 6250 3550
$Sheet
S 4750 4450 500  400 
U 5C3690E2
F0 "not-c-ga3" 50
F1 "gate-not.sch" 50
F2 "Q" I L 4750 4750 50 
F3 "Vcc" I L 4750 4500 50 
F4 "NQ" I R 5250 4650 50 
F5 "Gnd" I L 4750 4600 50 
$EndSheet
Text HLabel 4550 4500 0    50   Input ~ 0
Vcc
Text HLabel 4550 4600 0    50   Input ~ 0
Gnd
Wire Wire Line
	4550 4500 4750 4500
Wire Wire Line
	4750 4600 4550 4600
Text HLabel 4550 4750 0    50   Input ~ 0
C
Wire Wire Line
	4550 4750 4750 4750
Wire Wire Line
	5250 4650 5850 4650
Wire Wire Line
	5850 4650 5850 3650
Wire Wire Line
	5850 3650 6250 3650
Text HLabel 7150 3400 2    50   Input ~ 0
Q
Wire Wire Line
	7150 3400 6850 3400
Text HLabel 6050 3100 0    50   Input ~ 0
Vcc
Text HLabel 6050 3200 0    50   Input ~ 0
Gnd
Wire Wire Line
	6050 3100 6250 3100
Wire Wire Line
	6250 3200 6050 3200
$EndSCHEMATC
