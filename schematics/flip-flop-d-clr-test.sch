EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
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
L pspice:0 #GND?
U 1 1 5C419998
P 2450 3900
AR Path="/5C4196B1/5C419998" Ref="#GND?"  Part="1" 
AR Path="/5C419998" Ref="#GND01"  Part="1" 
F 0 "#GND01" H 2450 3800 50  0001 C CNN
F 1 "0" H 2450 3987 50  0000 C CNN
F 2 "" H 2450 3900 50  0001 C CNN
F 3 "~" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C41999E
P 2450 3050
AR Path="/5C4196B1/5C41999E" Ref="V?"  Part="1" 
AR Path="/5C41999E" Ref="V1"  Part="1" 
F 0 "V1" H 2678 3096 50  0000 L CNN
F 1 "dc 5" H 2678 3005 50  0000 L CNN
F 2 "" H 2450 3050 50  0001 C CNN
F 3 "~" H 2450 3050 50  0001 C CNN
	1    2450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3350 2450 3900
Wire Wire Line
	3500 2750 2450 2750
Wire Wire Line
	3500 2850 3100 2850
Wire Wire Line
	3100 2850 3100 3350
Wire Wire Line
	3100 3350 2450 3350
$Comp
L pspice:0 #GND?
U 1 1 5C4199B2
P 2900 4450
AR Path="/5C4196B1/5C4199B2" Ref="#GND?"  Part="1" 
AR Path="/5C4199B2" Ref="#GND02"  Part="1" 
F 0 "#GND02" H 2900 4350 50  0001 C CNN
F 1 "0" H 2900 4537 50  0000 C CNN
F 2 "" H 2900 4450 50  0001 C CNN
F 3 "~" H 2900 4450 50  0001 C CNN
	1    2900 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4199B8
P 2900 4000
AR Path="/5C4196B1/5C4199B8" Ref="V?"  Part="1" 
AR Path="/5C4199B8" Ref="V2"  Part="1" 
F 0 "V2" H 3128 4046 50  0000 L CNN
F 1 "dc 5" H 3128 3955 50  0000 L CNN
F 2 "" H 2900 4000 50  0001 C CNN
F 3 "~" H 2900 4000 50  0001 C CNN
	1    2900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4300 2900 4450
$Comp
L pspice:0 #GND?
U 1 1 5C4199C0
P 3650 5650
AR Path="/5C4196B1/5C4199C0" Ref="#GND?"  Part="1" 
AR Path="/5C4199C0" Ref="#GND03"  Part="1" 
F 0 "#GND03" H 3650 5550 50  0001 C CNN
F 1 "0" H 3650 5737 50  0000 C CNN
F 2 "" H 3650 5650 50  0001 C CNN
F 3 "~" H 3650 5650 50  0001 C CNN
	1    3650 5650
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4199C6
P 3650 5200
AR Path="/5C4196B1/5C4199C6" Ref="V?"  Part="1" 
AR Path="/5C4199C6" Ref="V3"  Part="1" 
F 0 "V3" H 3878 5246 50  0000 L CNN
F 1 "PULSE(0 5 2NS 2NS 2NS 50NS 100NS)" H 3878 5155 50  0000 L CNN
F 2 "" H 3650 5200 50  0001 C CNN
F 3 "~" H 3650 5200 50  0001 C CNN
	1    3650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5500 3650 5650
Wire Wire Line
	3500 3050 3150 3050
Wire Wire Line
	3150 3050 3150 3400
Wire Wire Line
	3150 3400 2900 3400
Wire Wire Line
	2900 3400 2900 3700
Wire Wire Line
	3500 3150 3350 3150
Wire Wire Line
	3350 3150 3350 3700
Wire Wire Line
	3350 3700 3650 3700
$Sheet
S 3500 2700 550  600 
U 5C41AA0E
F0 "flip-flop-d-clr" 50
F1 "flip-flop-d-clr.sch" 50
F2 "D" I L 3500 3050 50 
F3 "Clk" I L 3500 3150 50 
F4 "Vcc" I L 3500 2750 50 
F5 "Gnd" I L 3500 2850 50 
F6 "NQ" I R 4050 2750 50 
F7 "Q" I R 4050 3250 50 
F8 "Clr" I L 3500 3250 50 
$EndSheet
$Comp
L pspice:0 #GND?
U 1 1 5C42B20F
P 4500 4450
AR Path="/5C4196B1/5C42B20F" Ref="#GND?"  Part="1" 
AR Path="/5C42B20F" Ref="#GND04"  Part="1" 
F 0 "#GND04" H 4500 4350 50  0001 C CNN
F 1 "0" H 4500 4537 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "~" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C42B215
P 4500 4000
AR Path="/5C4196B1/5C42B215" Ref="V?"  Part="1" 
AR Path="/5C42B215" Ref="V4"  Part="1" 
F 0 "V4" H 4728 4046 50  0000 L CNN
F 1 "dc 5" H 4728 3955 50  0000 L CNN
F 2 "" H 4500 4000 50  0001 C CNN
F 3 "~" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4300 4500 4450
Wire Wire Line
	4500 3700 4500 3550
Wire Wire Line
	4500 3550 3400 3550
Wire Wire Line
	3400 3550 3400 3250
Wire Wire Line
	3400 3250 3500 3250
Text Label 4150 3550 0    50   ~ 0
ClrIn
Text Label 3350 3700 0    50   ~ 0
ClkIn
Text Label 2900 3650 0    50   ~ 0
Din
Wire Wire Line
	3650 4900 3650 3700
$EndSCHEMATC