EESchema Schematic File Version 4
LIBS:replicate-1-4-test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 14
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
U 1 1 5C4E4292
P 1900 3450
AR Path="/5C4E39DB/5C4E4292" Ref="#GND?"  Part="1" 
AR Path="/5C4E4292" Ref="#GND01"  Part="1" 
AR Path="/5C4E4189/5C4E4292" Ref="#GND?"  Part="1" 
F 0 "#GND01" H 1900 3350 50  0001 C CNN
F 1 "0" H 1900 3537 50  0000 C CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "~" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E4298
P 1900 2850
AR Path="/5C4E39DB/5C4E4298" Ref="V?"  Part="1" 
AR Path="/5C4E4298" Ref="V1"  Part="1" 
AR Path="/5C4E4189/5C4E4298" Ref="V?"  Part="1" 
F 0 "V1" H 2128 2896 50  0000 L CNN
F 1 "dc 5" H 2128 2805 50  0000 L CNN
F 2 "" H 1900 2850 50  0001 C CNN
F 3 "~" H 1900 2850 50  0001 C CNN
	1    1900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3150 1900 3450
Wire Wire Line
	1900 3150 2550 3150
Wire Wire Line
	2550 3150 2550 2650
Wire Wire Line
	2550 2650 2800 2650
Wire Wire Line
	1900 2550 2800 2550
$Comp
L pspice:0 #GND?
U 1 1 5C4E42AA
P 2750 4400
AR Path="/5C4E39DB/5C4E42AA" Ref="#GND?"  Part="1" 
AR Path="/5C4E42AA" Ref="#GND02"  Part="1" 
AR Path="/5C4E4189/5C4E42AA" Ref="#GND?"  Part="1" 
F 0 "#GND02" H 2750 4300 50  0001 C CNN
F 1 "0" H 2750 4487 50  0000 C CNN
F 2 "" H 2750 4400 50  0001 C CNN
F 3 "~" H 2750 4400 50  0001 C CNN
	1    2750 4400
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E42B0
P 2750 3800
AR Path="/5C4E39DB/5C4E42B0" Ref="V?"  Part="1" 
AR Path="/5C4E42B0" Ref="V2"  Part="1" 
AR Path="/5C4E4189/5C4E42B0" Ref="V?"  Part="1" 
F 0 "V2" H 2978 3846 50  0000 L CNN
F 1 "dc 5" H 2978 3755 50  0000 L CNN
F 2 "" H 2750 3800 50  0001 C CNN
F 3 "~" H 2750 3800 50  0001 C CNN
	1    2750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4100 2750 4400
Wire Wire Line
	2750 3500 2750 2800
Wire Wire Line
	2750 2800 2800 2800
Text Label 2750 3400 0    50   ~ 0
Ain
$Sheet
S 2800 2500 550  700 
U 5C4E449E
F0 "replicate-1-4" 50
F1 "replicate-1-4.sch" 50
F2 "Vcc" I L 2800 2550 50 
F3 "Gnd" I L 2800 2650 50 
F4 "A" I L 2800 2800 50 
F5 "Z1" I R 3350 2800 50 
F6 "Z2" I R 3350 2900 50 
F7 "Z3" I R 3350 3000 50 
F8 "Z4" I R 3350 3100 50 
$EndSheet
$EndSCHEMATC
