EESchema Schematic File Version 4
LIBS:gate-xor-2-test-cache
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
U 1 1 5C4DE4A8
P 2150 3600
AR Path="/5C4DE38B/5C4DE4A8" Ref="#GND?"  Part="1" 
AR Path="/5C4DE4A8" Ref="#GND01"  Part="1" 
F 0 "#GND01" H 2150 3500 50  0001 C CNN
F 1 "0" H 2150 3687 50  0000 C CNN
F 2 "" H 2150 3600 50  0001 C CNN
F 3 "~" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4DE4AE
P 2150 3150
AR Path="/5C4DE38B/5C4DE4AE" Ref="V?"  Part="1" 
AR Path="/5C4DE4AE" Ref="V1"  Part="1" 
F 0 "V1" H 2378 3196 50  0000 L CNN
F 1 "dc 5" H 2378 3105 50  0000 L CNN
F 2 "" H 2150 3150 50  0001 C CNN
F 3 "~" H 2150 3150 50  0001 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3450 2150 3600
Wire Wire Line
	3100 2950 2750 2950
Wire Wire Line
	2750 2950 2750 3450
Wire Wire Line
	2750 3450 2150 3450
$Sheet
S 3100 2800 550  500 
U 5C4DE58B
F0 "xor-2" 50
F1 "gate-xor-2.sch" 50
F2 "Vcc" I L 3100 2850 50 
F3 "Gnd" I L 3100 2950 50 
F4 "A" I L 3100 3100 50 
F5 "B" I L 3100 3200 50 
F6 "Q" I R 3650 3200 50 
$EndSheet
Wire Wire Line
	2150 2850 3100 2850
$Comp
L pspice:0 #GND?
U 1 1 5C4DF23D
P 2650 4900
AR Path="/5C4DE38B/5C4DF23D" Ref="#GND?"  Part="1" 
AR Path="/5C4DF23D" Ref="#GND02"  Part="1" 
F 0 "#GND02" H 2650 4800 50  0001 C CNN
F 1 "0" H 2650 4987 50  0000 C CNN
F 2 "" H 2650 4900 50  0001 C CNN
F 3 "~" H 2650 4900 50  0001 C CNN
	1    2650 4900
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4DF243
P 2650 4450
AR Path="/5C4DE38B/5C4DF243" Ref="V?"  Part="1" 
AR Path="/5C4DF243" Ref="V2"  Part="1" 
F 0 "V2" H 2878 4496 50  0000 L CNN
F 1 "dc 5" H 2878 4405 50  0000 L CNN
F 2 "" H 2650 4450 50  0001 C CNN
F 3 "~" H 2650 4450 50  0001 C CNN
	1    2650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4750 2650 4900
$Comp
L pspice:0 #GND?
U 1 1 5C4DF461
P 3450 4900
AR Path="/5C4DE38B/5C4DF461" Ref="#GND?"  Part="1" 
AR Path="/5C4DF461" Ref="#GND03"  Part="1" 
F 0 "#GND03" H 3450 4800 50  0001 C CNN
F 1 "0" H 3450 4987 50  0000 C CNN
F 2 "" H 3450 4900 50  0001 C CNN
F 3 "~" H 3450 4900 50  0001 C CNN
	1    3450 4900
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4DF467
P 3450 4450
AR Path="/5C4DE38B/5C4DF467" Ref="V?"  Part="1" 
AR Path="/5C4DF467" Ref="V3"  Part="1" 
F 0 "V3" H 3678 4496 50  0000 L CNN
F 1 "dc 5" H 3678 4405 50  0000 L CNN
F 2 "" H 3450 4450 50  0001 C CNN
F 3 "~" H 3450 4450 50  0001 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4750 3450 4900
Wire Wire Line
	3100 3100 2850 3100
Wire Wire Line
	2850 3100 2850 4150
Wire Wire Line
	2850 4150 2650 4150
Wire Wire Line
	3100 3200 2950 3200
Wire Wire Line
	2950 3200 2950 4150
Wire Wire Line
	2950 4150 3450 4150
Text Label 2700 4150 0    50   ~ 0
Ain
Text Label 3100 4150 0    50   ~ 0
Bin
Text HLabel 4100 3200 2    50   Input ~ 0
Q
Wire Wire Line
	4100 3200 3650 3200
Text Label 3850 3200 0    50   ~ 0
Qout
$EndSCHEMATC
