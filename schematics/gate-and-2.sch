EESchema Schematic File Version 4
LIBS:alu-test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 280
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
S 4300 3250 500  450 
U 5C561AAA
F0 "sheet5C364DB7" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 4300 3550 50 
F3 "B" I L 4300 3650 50 
F4 "Vcc" I L 4300 3300 50 
F5 "Q" I R 4800 3500 50 
F6 "Gnd" I L 4300 3400 50 
$EndSheet
$Sheet
S 2800 3000 500  400 
U 5C561AAC
F0 "Sheet5C3654CC" 50
F1 "gate-not.sch" 50
F2 "Q" I L 2800 3300 50 
F3 "Vcc" I L 2800 3050 50 
F4 "NQ" I R 3300 3200 50 
F5 "Gnd" I L 2800 3150 50 
$EndSheet
$Sheet
S 2800 3750 500  400 
U 5C561AB4
F0 "sheet5C366192" 50
F1 "gate-not.sch" 50
F2 "Q" I L 2800 4050 50 
F3 "Vcc" I L 2800 3800 50 
F4 "NQ" I R 3300 3950 50 
F5 "Gnd" I L 2800 3900 50 
$EndSheet
Text HLabel 2600 3800 0    50   Input ~ 0
Vcc
Text HLabel 2600 3900 0    50   Input ~ 0
Gnd
Wire Wire Line
	2600 3800 2800 3800
Wire Wire Line
	2800 3900 2600 3900
Text HLabel 2600 3050 0    50   Input ~ 0
Vcc
Text HLabel 2600 3150 0    50   Input ~ 0
Gnd
Wire Wire Line
	2600 3050 2800 3050
Wire Wire Line
	2800 3150 2600 3150
Text HLabel 4100 3300 0    50   Input ~ 0
Vcc
Text HLabel 4100 3400 0    50   Input ~ 0
Gnd
Wire Wire Line
	4100 3300 4300 3300
Wire Wire Line
	4300 3400 4100 3400
Text HLabel 2600 3300 0    50   Input ~ 0
A
Text HLabel 2600 4050 0    50   Input ~ 0
B
Wire Wire Line
	2600 4050 2800 4050
Wire Wire Line
	2600 3300 2800 3300
Wire Wire Line
	3300 3200 3800 3200
Wire Wire Line
	3800 3200 3800 3550
Wire Wire Line
	3800 3550 4300 3550
Wire Wire Line
	3300 3950 3800 3950
Wire Wire Line
	3800 3950 3800 3650
Wire Wire Line
	3800 3650 4300 3650
Text HLabel 5050 3500 2    50   Input ~ 0
Q
Wire Wire Line
	4800 3500 5050 3500
$EndSCHEMATC
