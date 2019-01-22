EESchema Schematic File Version 4
LIBS:alu-test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 280
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
S 3000 3650 550  450 
U 5C4DE622
F0 "xor-2-nor-1" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 3000 3950 50 
F3 "B" I L 3000 4050 50 
F4 "Vcc" I L 3000 3700 50 
F5 "Q" I R 3550 4050 50 
F6 "Gnd" I L 3000 3800 50 
$EndSheet
$Sheet
S 3000 2800 550  450 
U 5C4DE6C4
F0 "xor-2-and-1" 50
F1 "gate-and-2.sch" 50
F2 "A" I L 3000 3100 50 
F3 "B" I L 3000 3200 50 
F4 "Vcc" I L 3000 2850 50 
F5 "Q" I R 3550 3200 50 
F6 "Gnd" I L 3000 2950 50 
$EndSheet
$Sheet
S 4750 3200 550  450 
U 5C4DE709
F0 "xor-2-nor-2" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 4750 3500 50 
F3 "B" I L 4750 3600 50 
F4 "Vcc" I L 4750 3250 50 
F5 "Q" I R 5300 3600 50 
F6 "Gnd" I L 4750 3350 50 
$EndSheet
Text HLabel 2750 2850 0    50   Input ~ 0
Vcc
Text HLabel 2750 2950 0    50   Input ~ 0
Gnd
Wire Wire Line
	2750 2850 3000 2850
Wire Wire Line
	2750 2950 3000 2950
Text HLabel 2750 3700 0    50   Input ~ 0
Vcc
Text HLabel 2750 3800 0    50   Input ~ 0
Gnd
Wire Wire Line
	2750 3700 3000 3700
Wire Wire Line
	2750 3800 3000 3800
Text HLabel 4500 3250 0    50   Input ~ 0
Vcc
Text HLabel 4500 3350 0    50   Input ~ 0
Gnd
Wire Wire Line
	4500 3250 4750 3250
Wire Wire Line
	4500 3350 4750 3350
Wire Wire Line
	3550 3200 4000 3200
Wire Wire Line
	4000 3200 4000 3500
Wire Wire Line
	4000 3500 4750 3500
Text HLabel 2750 3100 0    50   Input ~ 0
A
Text HLabel 2750 3200 0    50   Input ~ 0
B
Wire Wire Line
	2750 3100 3000 3100
Wire Wire Line
	2750 3200 3000 3200
Text HLabel 2750 3950 0    50   Input ~ 0
A
Text HLabel 2750 4050 0    50   Input ~ 0
B
Wire Wire Line
	2750 3950 3000 3950
Wire Wire Line
	2750 4050 3000 4050
Wire Wire Line
	3550 4050 4000 4050
Wire Wire Line
	4000 4050 4000 3600
Wire Wire Line
	4000 3600 4750 3600
Text HLabel 5850 3600 2    50   Input ~ 0
Q
Wire Wire Line
	5850 3600 5300 3600
$EndSCHEMATC
