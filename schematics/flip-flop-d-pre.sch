EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2100 4900 0    50   Input ~ 0
D
Text HLabel 2100 3400 0    50   Input ~ 0
Clk
Wire Wire Line
	3850 4900 2100 4900
$Sheet
S 3900 1700 500  450 
U 5C41AA7F
F0 "flip-flop-d-pre-nor-1" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 3900 2000 50 
F3 "B" I L 3900 2100 50 
F4 "Vcc" I L 3900 1750 50 
F5 "Q" I R 4400 1950 50 
F6 "Gnd" I L 3900 1850 50 
$EndSheet
Text HLabel 3700 1750 0    50   Input ~ 0
Vcc
Text HLabel 3700 1850 0    50   Input ~ 0
Gnd
Wire Wire Line
	3700 1750 3900 1750
Wire Wire Line
	3700 1850 3900 1850
Text HLabel 3650 2600 0    50   Input ~ 0
Vcc
Text HLabel 3650 2700 0    50   Input ~ 0
Gnd
Wire Wire Line
	3650 2600 3850 2600
Wire Wire Line
	3650 2700 3850 2700
$Sheet
S 3850 3350 550  600 
U 5C41AA96
F0 "flip-flop-d-pre-nor-3" 50
F1 "gate-nor-3.sch" 50
F2 "A" I L 3850 3650 50 
F3 "B" I L 3850 3750 50 
F4 "Vcc" I L 3850 3400 50 
F5 "Q" I R 4400 3850 50 
F6 "Gnd" I L 3850 3500 50 
F7 "C" I L 3850 3850 50 
$EndSheet
Text HLabel 3650 4550 0    50   Input ~ 0
Vcc
Text HLabel 3650 4650 0    50   Input ~ 0
Gnd
Wire Wire Line
	3650 4550 3850 4550
Wire Wire Line
	3650 4650 3850 4650
Text HLabel 3650 3400 0    50   Input ~ 0
Vcc
Text HLabel 3650 3500 0    50   Input ~ 0
Gnd
Wire Wire Line
	3650 3400 3850 3400
Wire Wire Line
	3650 3500 3850 3500
Wire Wire Line
	4400 5000 4950 5000
Wire Wire Line
	4950 5000 4950 4250
Wire Wire Line
	4950 4250 3000 4250
Wire Wire Line
	3000 4250 3000 3850
Wire Wire Line
	3000 3850 3850 3850
Wire Wire Line
	3900 2000 3000 2000
Wire Wire Line
	3000 2000 3000 3850
Connection ~ 3000 3850
Wire Wire Line
	7200 3850 4950 3850
Wire Wire Line
	4950 3850 4950 4150
Wire Wire Line
	4950 4150 3250 4150
Wire Wire Line
	3250 4150 3250 4800
Wire Wire Line
	3250 4800 3850 4800
Connection ~ 4950 3850
Wire Wire Line
	4950 3850 4400 3850
Wire Wire Line
	3850 3750 2100 3750
Wire Wire Line
	3850 2950 2100 2950
Wire Wire Line
	2100 2950 2100 3750
Wire Wire Line
	3850 2850 3250 2850
Wire Wire Line
	3250 2850 3250 2300
Wire Wire Line
	3250 2300 4950 2300
Wire Wire Line
	4950 2300 4950 1950
Wire Wire Line
	4950 1950 4400 1950
Wire Wire Line
	4950 2800 4950 3050
Wire Wire Line
	4950 3250 3250 3250
Wire Wire Line
	3250 3250 3250 3650
Wire Wire Line
	3250 3650 3850 3650
Connection ~ 4950 2800
Wire Wire Line
	4950 2800 7750 2800
Wire Wire Line
	4950 2800 4950 2400
Wire Wire Line
	4950 2400 3350 2400
Wire Wire Line
	3350 2400 3350 2100
Wire Wire Line
	3350 2100 3900 2100
Text HLabel 7550 3550 0    50   Input ~ 0
Vcc
Text HLabel 7550 3650 0    50   Input ~ 0
Gnd
Wire Wire Line
	7550 3550 7750 3550
Wire Wire Line
	7550 3650 7750 3650
Wire Wire Line
	8300 4000 8850 4000
Wire Wire Line
	8850 4000 8850 3350
Wire Wire Line
	8850 3350 7100 3350
Wire Wire Line
	7100 3350 7100 2900
Text HLabel 9200 4000 2    50   Input ~ 0
NQ
Wire Wire Line
	9200 4000 8850 4000
Connection ~ 8850 4000
Wire Wire Line
	8850 3150 7200 3150
Wire Wire Line
	7200 3150 7200 3800
Wire Wire Line
	7200 3800 7750 3800
Text HLabel 9200 2850 2    50   Input ~ 0
Q
Wire Wire Line
	7200 3850 7200 3900
Wire Wire Line
	7200 3900 7750 3900
Wire Wire Line
	7100 2900 7750 2900
$Sheet
S 7750 2500 550  500 
U 5C41B943
F0 "flip-flop-d-pre-nor-5" 50
F1 "gate-nor-2.sch" 50
F2 "A" I L 7750 2800 50 
F3 "B" I L 7750 2900 50 
F4 "Vcc" I L 7750 2550 50 
F5 "Q" I R 8300 2850 50 
F6 "Gnd" I L 7750 2650 50 
$EndSheet
Wire Wire Line
	8300 2850 8850 2850
Wire Wire Line
	8850 3150 8850 2850
Connection ~ 8850 2850
Wire Wire Line
	8850 2850 9200 2850
Text HLabel 7550 2550 0    50   Input ~ 0
Vcc
Text HLabel 7550 2650 0    50   Input ~ 0
Gnd
Wire Wire Line
	7550 2550 7750 2550
Wire Wire Line
	7550 2650 7750 2650
$Sheet
S 3850 4500 550  600 
U 5C5A47D2
F0 "glip-flop-d-pre-nor-4" 50
F1 "gate-nor-3.sch" 50
F2 "A" I L 3850 4800 50 
F3 "B" I L 3850 4900 50 
F4 "Vcc" I L 3850 4550 50 
F5 "Q" I R 4400 5000 50 
F6 "Gnd" I L 3850 4650 50 
F7 "C" I L 3850 5000 50 
$EndSheet
$Sheet
S 7750 3500 550  600 
U 5C5A82CE
F0 "flip-flop-d-pre-nor-6" 50
F1 "gate-nor-3.sch" 50
F2 "A" I L 7750 3800 50 
F3 "B" I L 7750 3900 50 
F4 "Vcc" I L 7750 3550 50 
F5 "Q" I R 8300 4000 50 
F6 "Gnd" I L 7750 3650 50 
F7 "C" I L 7750 4000 50 
$EndSheet
$Sheet
S 3850 2550 550  600 
U 5C5B7A7C
F0 "sheet5C5B7A74" 50
F1 "gate-nor-3.sch" 50
F2 "A" I L 3850 2850 50 
F3 "B" I L 3850 2950 50 
F4 "Vcc" I L 3850 2600 50 
F5 "Q" I R 4400 3050 50 
F6 "Gnd" I L 3850 2700 50 
F7 "C" I L 3850 3050 50 
$EndSheet
Wire Wire Line
	4400 3050 4950 3050
Connection ~ 4950 3050
Wire Wire Line
	4950 3050 4950 3250
Text HLabel 2100 5400 0    50   Input ~ 0
Pre
Wire Wire Line
	2100 5400 3150 5400
Wire Wire Line
	7200 5400 7200 4000
Wire Wire Line
	7200 4000 7750 4000
Wire Wire Line
	3850 3050 3150 3050
Wire Wire Line
	3150 3050 3150 5000
Connection ~ 3150 5400
Wire Wire Line
	3150 5400 7200 5400
Wire Wire Line
	3850 5000 3150 5000
Connection ~ 3150 5000
Wire Wire Line
	3150 5000 3150 5400
$EndSCHEMATC
