EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
U 1 1 5C4E3A9B
P 1950 3200
AR Path="/5C4E39DB/5C4E3A9B" Ref="#GND?"  Part="1" 
AR Path="/5C4E3A9B" Ref="#GND01"  Part="1" 
F 0 "#GND01" H 1950 3100 50  0001 C CNN
F 1 "0" H 1950 3287 50  0000 C CNN
F 2 "" H 1950 3200 50  0001 C CNN
F 3 "~" H 1950 3200 50  0001 C CNN
	1    1950 3200
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E3AA1
P 1950 2600
AR Path="/5C4E39DB/5C4E3AA1" Ref="V?"  Part="1" 
AR Path="/5C4E3AA1" Ref="V1"  Part="1" 
F 0 "V1" H 2178 2646 50  0000 L CNN
F 1 "dc 5" H 2178 2555 50  0000 L CNN
F 2 "" H 1950 2600 50  0001 C CNN
F 3 "~" H 1950 2600 50  0001 C CNN
	1    1950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2900 1950 3200
Wire Wire Line
	1950 2900 2600 2900
Wire Wire Line
	2600 2900 2600 2400
Wire Wire Line
	2600 2400 2850 2400
$Sheet
S 2850 2250 550  400 
U 5C4E3B41
F0 "buffer" 50
F1 "buffer.sch" 50
F2 "Vcc" I L 2850 2300 50 
F3 "Gnd" I L 2850 2400 50 
F4 "Q" I L 2850 2550 50 
F5 "QQ" I R 3400 2550 50 
$EndSheet
Wire Wire Line
	1950 2300 2850 2300
$Comp
L pspice:0 #GND?
U 1 1 5C4E3F16
P 2800 4150
AR Path="/5C4E39DB/5C4E3F16" Ref="#GND?"  Part="1" 
AR Path="/5C4E3F16" Ref="#GND02"  Part="1" 
F 0 "#GND02" H 2800 4050 50  0001 C CNN
F 1 "0" H 2800 4237 50  0000 C CNN
F 2 "" H 2800 4150 50  0001 C CNN
F 3 "~" H 2800 4150 50  0001 C CNN
	1    2800 4150
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4E3F1C
P 2800 3550
AR Path="/5C4E39DB/5C4E3F1C" Ref="V?"  Part="1" 
AR Path="/5C4E3F1C" Ref="V2"  Part="1" 
F 0 "V2" H 3028 3596 50  0000 L CNN
F 1 "dc 5" H 3028 3505 50  0000 L CNN
F 2 "" H 2800 3550 50  0001 C CNN
F 3 "~" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3850 2800 4150
Wire Wire Line
	2800 3250 2800 2550
Wire Wire Line
	2800 2550 2850 2550
Text Label 2800 3000 0    50   ~ 0
Qin
$EndSCHEMATC
