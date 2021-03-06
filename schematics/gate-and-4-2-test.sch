EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E51D7
P 2100 2550
AR Path="/5C4E50DF/5C4E51D7" Ref="V?"  Part="1" 
AR Path="/5C4E51D7" Ref="V3"  Part="1" 
F 0 "V3" H 2328 2596 50  0000 L CNN
F 1 "dc 5" H 2328 2505 50  0000 L CNN
F 2 "" H 2100 2550 50  0001 C CNN
F 3 "~" H 2100 2550 50  0001 C CNN
	1    2100 2550
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E51DE
P 2100 3150
AR Path="/5C4E50DF/5C4E51DE" Ref="#GND?"  Part="1" 
AR Path="/5C4E51DE" Ref="#GND03"  Part="1" 
F 0 "#GND03" H 2100 3050 50  0001 C CNN
F 1 "0" H 2100 3237 50  0000 C CNN
F 2 "" H 2100 3150 50  0001 C CNN
F 3 "~" H 2100 3150 50  0001 C CNN
	1    2100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3150 2100 2850
Wire Wire Line
	5900 2350 2750 2350
Wire Wire Line
	2750 2350 2750 2850
Wire Wire Line
	2750 2850 2100 2850
$Sheet
S 5900 2200 550  1150
U 5C4E531C
F0 "and-4-2" 50
F1 "gate-and-4-2.sch" 50
F2 "Vcc" I L 5900 2250 50 
F3 "Gnd" I L 5900 2350 50 
F4 "A1" I L 5900 2500 50 
F5 "B1" I L 5900 2950 50 
F6 "Q1" I R 6450 2950 50 
F7 "A2" I L 5900 2600 50 
F8 "B2" I L 5900 3050 50 
F9 "Q2" I R 6450 3050 50 
F10 "A3" I L 5900 2700 50 
F11 "B3" I L 5900 3150 50 
F12 "Q3" I R 6450 3150 50 
F13 "A4" I L 5900 2800 50 
F14 "B4" I L 5900 3250 50 
F15 "Q4" I R 6450 3250 50 
$EndSheet
Wire Wire Line
	2100 2250 5900 2250
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E603D
P 1250 4350
AR Path="/5C4E50DF/5C4E603D" Ref="V?"  Part="1" 
AR Path="/5C4E603D" Ref="V1"  Part="1" 
F 0 "V1" H 1478 4396 50  0000 L CNN
F 1 "dc 5" H 1478 4305 50  0000 L CNN
F 2 "" H 1250 4350 50  0001 C CNN
F 3 "~" H 1250 4350 50  0001 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E6044
P 1250 4950
AR Path="/5C4E50DF/5C4E6044" Ref="#GND?"  Part="1" 
AR Path="/5C4E6044" Ref="#GND01"  Part="1" 
F 0 "#GND01" H 1250 4850 50  0001 C CNN
F 1 "0" H 1250 5037 50  0000 C CNN
F 2 "" H 1250 4950 50  0001 C CNN
F 3 "~" H 1250 4950 50  0001 C CNN
	1    1250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4950 1250 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E67EF
P 2050 4350
AR Path="/5C4E50DF/5C4E67EF" Ref="V?"  Part="1" 
AR Path="/5C4E67EF" Ref="V2"  Part="1" 
F 0 "V2" H 2278 4396 50  0000 L CNN
F 1 "dc 5" H 2278 4305 50  0000 L CNN
F 2 "" H 2050 4350 50  0001 C CNN
F 3 "~" H 2050 4350 50  0001 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E67F6
P 2050 4950
AR Path="/5C4E50DF/5C4E67F6" Ref="#GND?"  Part="1" 
AR Path="/5C4E67F6" Ref="#GND02"  Part="1" 
F 0 "#GND02" H 2050 4850 50  0001 C CNN
F 1 "0" H 2050 5037 50  0000 C CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "~" H 2050 4950 50  0001 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4950 2050 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E68D1
P 2850 4350
AR Path="/5C4E50DF/5C4E68D1" Ref="V?"  Part="1" 
AR Path="/5C4E68D1" Ref="V4"  Part="1" 
F 0 "V4" H 3078 4396 50  0000 L CNN
F 1 "dc 5" H 3078 4305 50  0000 L CNN
F 2 "" H 2850 4350 50  0001 C CNN
F 3 "~" H 2850 4350 50  0001 C CNN
	1    2850 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E68D8
P 2850 4950
AR Path="/5C4E50DF/5C4E68D8" Ref="#GND?"  Part="1" 
AR Path="/5C4E68D8" Ref="#GND04"  Part="1" 
F 0 "#GND04" H 2850 4850 50  0001 C CNN
F 1 "0" H 2850 5037 50  0000 C CNN
F 2 "" H 2850 4950 50  0001 C CNN
F 3 "~" H 2850 4950 50  0001 C CNN
	1    2850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4950 2850 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E6983
P 3700 4350
AR Path="/5C4E50DF/5C4E6983" Ref="V?"  Part="1" 
AR Path="/5C4E6983" Ref="V5"  Part="1" 
F 0 "V5" H 3928 4396 50  0000 L CNN
F 1 "dc 5" H 3928 4305 50  0000 L CNN
F 2 "" H 3700 4350 50  0001 C CNN
F 3 "~" H 3700 4350 50  0001 C CNN
	1    3700 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E698A
P 3700 4950
AR Path="/5C4E50DF/5C4E698A" Ref="#GND?"  Part="1" 
AR Path="/5C4E698A" Ref="#GND05"  Part="1" 
F 0 "#GND05" H 3700 4850 50  0001 C CNN
F 1 "0" H 3700 5037 50  0000 C CNN
F 2 "" H 3700 4950 50  0001 C CNN
F 3 "~" H 3700 4950 50  0001 C CNN
	1    3700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4950 3700 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E6A6E
P 4600 4350
AR Path="/5C4E50DF/5C4E6A6E" Ref="V?"  Part="1" 
AR Path="/5C4E6A6E" Ref="V6"  Part="1" 
F 0 "V6" H 4828 4396 50  0000 L CNN
F 1 "dc 5" H 4828 4305 50  0000 L CNN
F 2 "" H 4600 4350 50  0001 C CNN
F 3 "~" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E6A75
P 4600 4950
AR Path="/5C4E50DF/5C4E6A75" Ref="#GND?"  Part="1" 
AR Path="/5C4E6A75" Ref="#GND06"  Part="1" 
F 0 "#GND06" H 4600 4850 50  0001 C CNN
F 1 "0" H 4600 5037 50  0000 C CNN
F 2 "" H 4600 4950 50  0001 C CNN
F 3 "~" H 4600 4950 50  0001 C CNN
	1    4600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4950 4600 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E6B54
P 5450 4350
AR Path="/5C4E50DF/5C4E6B54" Ref="V?"  Part="1" 
AR Path="/5C4E6B54" Ref="V7"  Part="1" 
F 0 "V7" H 5678 4396 50  0000 L CNN
F 1 "dc 5" H 5678 4305 50  0000 L CNN
F 2 "" H 5450 4350 50  0001 C CNN
F 3 "~" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E6B5B
P 5450 4950
AR Path="/5C4E50DF/5C4E6B5B" Ref="#GND?"  Part="1" 
AR Path="/5C4E6B5B" Ref="#GND07"  Part="1" 
F 0 "#GND07" H 5450 4850 50  0001 C CNN
F 1 "0" H 5450 5037 50  0000 C CNN
F 2 "" H 5450 4950 50  0001 C CNN
F 3 "~" H 5450 4950 50  0001 C CNN
	1    5450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4950 5450 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E6C48
P 6250 4350
AR Path="/5C4E50DF/5C4E6C48" Ref="V?"  Part="1" 
AR Path="/5C4E6C48" Ref="V8"  Part="1" 
F 0 "V8" H 6478 4396 50  0000 L CNN
F 1 "dc 5" H 6478 4305 50  0000 L CNN
F 2 "" H 6250 4350 50  0001 C CNN
F 3 "~" H 6250 4350 50  0001 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E6C4F
P 6250 4950
AR Path="/5C4E50DF/5C4E6C4F" Ref="#GND?"  Part="1" 
AR Path="/5C4E6C4F" Ref="#GND08"  Part="1" 
F 0 "#GND08" H 6250 4850 50  0001 C CNN
F 1 "0" H 6250 5037 50  0000 C CNN
F 2 "" H 6250 4950 50  0001 C CNN
F 3 "~" H 6250 4950 50  0001 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4950 6250 4650
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E6D8D
P 7100 4350
AR Path="/5C4E50DF/5C4E6D8D" Ref="V?"  Part="1" 
AR Path="/5C4E6D8D" Ref="V9"  Part="1" 
F 0 "V9" H 7328 4396 50  0000 L CNN
F 1 "dc 5" H 7328 4305 50  0000 L CNN
F 2 "" H 7100 4350 50  0001 C CNN
F 3 "~" H 7100 4350 50  0001 C CNN
	1    7100 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5C4E6D94
P 7100 4950
AR Path="/5C4E50DF/5C4E6D94" Ref="#GND?"  Part="1" 
AR Path="/5C4E6D94" Ref="#GND09"  Part="1" 
F 0 "#GND09" H 7100 4850 50  0001 C CNN
F 1 "0" H 7100 5037 50  0000 C CNN
F 2 "" H 7100 4950 50  0001 C CNN
F 3 "~" H 7100 4950 50  0001 C CNN
	1    7100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4950 7100 4650
Wire Wire Line
	5900 2500 2850 2500
Wire Wire Line
	2850 2500 2850 3350
Wire Wire Line
	2850 3350 1250 3350
Wire Wire Line
	1250 3350 1250 4050
Wire Wire Line
	2050 4050 2050 3450
Wire Wire Line
	2050 3450 2950 3450
Wire Wire Line
	2950 3450 2950 2600
Wire Wire Line
	2950 2600 5900 2600
Wire Wire Line
	5900 2700 3050 2700
Wire Wire Line
	3050 2700 3050 3550
Wire Wire Line
	3050 3550 2850 3550
Wire Wire Line
	2850 3550 2850 4050
Wire Wire Line
	3700 4050 3700 2800
Wire Wire Line
	3700 2800 5900 2800
Wire Wire Line
	4600 4050 4600 2950
Wire Wire Line
	4600 2950 5900 2950
Wire Wire Line
	5450 4050 5450 3050
Wire Wire Line
	5450 3050 5900 3050
Wire Wire Line
	5900 3150 5550 3150
Wire Wire Line
	5550 3150 5550 4050
Wire Wire Line
	5550 4050 6250 4050
Wire Wire Line
	7100 4050 7100 3950
Wire Wire Line
	7100 3950 5650 3950
Wire Wire Line
	5650 3950 5650 3250
Wire Wire Line
	5650 3250 5900 3250
Text Label 1250 3800 0    50   ~ 0
A1
Text Label 2050 3800 0    50   ~ 0
A2
Text Label 2850 3800 0    50   ~ 0
A3
Text Label 3700 3800 0    50   ~ 0
A4
Text Label 4600 3800 0    50   ~ 0
B1
Text Label 5450 4100 0    50   ~ 0
B2
Text Label 5750 4050 0    50   ~ 0
B3
Text Label 6550 3950 0    50   ~ 0
B4
$EndSCHEMATC
