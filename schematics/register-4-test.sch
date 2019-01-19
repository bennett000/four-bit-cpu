EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 50
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
U 1 1 5C43105A
P 1700 5000
AR Path="/5C4196B1/5C43105A" Ref="#GND?"  Part="1" 
AR Path="/5C43105A" Ref="#GND02"  Part="1" 
AR Path="/5C42CE9C/5C43105A" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43105A" Ref="#GND?"  Part="1" 
F 0 "#GND02" H 1700 4900 50  0001 C CNN
F 1 "0" H 1700 5087 50  0000 C CNN
F 2 "" H 1700 5000 50  0001 C CNN
F 3 "~" H 1700 5000 50  0001 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C431060
P 1700 4150
AR Path="/5C4196B1/5C431060" Ref="V?"  Part="1" 
AR Path="/5C431060" Ref="V2"  Part="1" 
AR Path="/5C42CE9C/5C431060" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C431060" Ref="V?"  Part="1" 
F 0 "V2" H 1928 4196 50  0000 L CNN
F 1 "dc 5" H 1928 4105 50  0000 L CNN
F 2 "" H 1700 4150 50  0001 C CNN
F 3 "~" H 1700 4150 50  0001 C CNN
	1    1700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4450 1700 5000
Wire Wire Line
	1950 3850 1700 3850
Wire Wire Line
	2050 3450 2050 4450
Wire Wire Line
	2050 4450 1700 4450
$Comp
L pspice:0 #GND?
U 1 1 5C43106C
P 1300 6700
AR Path="/5C4196B1/5C43106C" Ref="#GND?"  Part="1" 
AR Path="/5C43106C" Ref="#GND01"  Part="1" 
AR Path="/5C42CE9C/5C43106C" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43106C" Ref="#GND?"  Part="1" 
F 0 "#GND01" H 1300 6600 50  0001 C CNN
F 1 "0" H 1300 6787 50  0000 C CNN
F 2 "" H 1300 6700 50  0001 C CNN
F 3 "~" H 1300 6700 50  0001 C CNN
	1    1300 6700
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C431072
P 1300 6250
AR Path="/5C4196B1/5C431072" Ref="V?"  Part="1" 
AR Path="/5C431072" Ref="V1"  Part="1" 
AR Path="/5C42CE9C/5C431072" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C431072" Ref="V?"  Part="1" 
F 0 "V1" H 1528 6296 50  0000 L CNN
F 1 "dc 5" H 1528 6205 50  0000 L CNN
F 2 "" H 1300 6250 50  0001 C CNN
F 3 "~" H 1300 6250 50  0001 C CNN
	1    1300 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6550 1300 6700
$Comp
L pspice:0 #GND?
U 1 1 5C43107A
P 8300 6200
AR Path="/5C4196B1/5C43107A" Ref="#GND?"  Part="1" 
AR Path="/5C43107A" Ref="#GND06"  Part="1" 
AR Path="/5C42CE9C/5C43107A" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43107A" Ref="#GND?"  Part="1" 
F 0 "#GND06" H 8300 6100 50  0001 C CNN
F 1 "0" H 8300 6287 50  0000 C CNN
F 2 "" H 8300 6200 50  0001 C CNN
F 3 "~" H 8300 6200 50  0001 C CNN
	1    8300 6200
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C431080
P 8300 5750
AR Path="/5C4196B1/5C431080" Ref="V?"  Part="1" 
AR Path="/5C431080" Ref="V6"  Part="1" 
AR Path="/5C42CE9C/5C431080" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C431080" Ref="V?"  Part="1" 
F 0 "V6" H 8528 5796 50  0000 L CNN
F 1 "PULSE(0 5 2NS 2NS 2NS 50NS 100NS)" H 8528 5705 50  0000 L CNN
F 2 "" H 8300 5750 50  0001 C CNN
F 3 "~" H 8300 5750 50  0001 C CNN
	1    8300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 6050 8300 6200
$Comp
L pspice:0 #GND?
U 1 1 5C43108F
P 9000 5250
AR Path="/5C4196B1/5C43108F" Ref="#GND?"  Part="1" 
AR Path="/5C43108F" Ref="#GND07"  Part="1" 
AR Path="/5C42CE9C/5C43108F" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43108F" Ref="#GND?"  Part="1" 
F 0 "#GND07" H 9000 5150 50  0001 C CNN
F 1 "0" H 9000 5337 50  0000 C CNN
F 2 "" H 9000 5250 50  0001 C CNN
F 3 "~" H 9000 5250 50  0001 C CNN
	1    9000 5250
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C431095
P 9000 4800
AR Path="/5C4196B1/5C431095" Ref="V?"  Part="1" 
AR Path="/5C431095" Ref="V7"  Part="1" 
AR Path="/5C42CE9C/5C431095" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C431095" Ref="V?"  Part="1" 
F 0 "V7" H 9228 4846 50  0000 L CNN
F 1 "dc 5" H 9228 4755 50  0000 L CNN
F 2 "" H 9000 4800 50  0001 C CNN
F 3 "~" H 9000 4800 50  0001 C CNN
	1    9000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5100 9000 5250
Wire Wire Line
	9000 4500 9000 4350
Wire Wire Line
	8300 5450 8300 4750
$Comp
L pspice:0 #GND?
U 1 1 5C4310AF
P 10050 5250
AR Path="/5C4196B1/5C4310AF" Ref="#GND?"  Part="1" 
AR Path="/5C4310AF" Ref="#GND08"  Part="1" 
AR Path="/5C42CE9C/5C4310AF" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C4310AF" Ref="#GND?"  Part="1" 
F 0 "#GND08" H 10050 5150 50  0001 C CNN
F 1 "0" H 10050 5337 50  0000 C CNN
F 2 "" H 10050 5250 50  0001 C CNN
F 3 "~" H 10050 5250 50  0001 C CNN
	1    10050 5250
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C4310B5
P 10050 4800
AR Path="/5C4196B1/5C4310B5" Ref="V?"  Part="1" 
AR Path="/5C4310B5" Ref="V8"  Part="1" 
AR Path="/5C42CE9C/5C4310B5" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C4310B5" Ref="V?"  Part="1" 
F 0 "V8" H 10278 4846 50  0000 L CNN
F 1 "dc 5" H 10278 4755 50  0000 L CNN
F 2 "" H 10050 4800 50  0001 C CNN
F 3 "~" H 10050 4800 50  0001 C CNN
	1    10050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5100 10050 5250
Wire Wire Line
	10050 4250 10050 4500
$Sheet
S 1900 2900 1150 550 
U 5C43173F
F0 "register-4" 50
F1 "register-4.sch" 50
F2 "Vcc" I B 1950 3450 50 
F3 "Gnd" I B 2050 3450 50 
F4 "D1" I B 2200 3450 50 
F5 "D2" I B 2300 3450 50 
F6 "D3" I B 2400 3450 50 
F7 "D4" I B 2500 3450 50 
F8 "Clk" I B 2650 3450 50 
F9 "Clr" I B 2750 3450 50 
F10 "CE" I B 2850 3450 50 
F11 "Q2" I T 2750 2900 50 
F12 "NQ2" I T 2300 2900 50 
F13 "Q3" I T 2850 2900 50 
F14 "NQ3" I T 2400 2900 50 
F15 "Q4" I T 2950 2900 50 
F16 "NQ4" I T 2500 2900 50 
F17 "Q1" I T 2650 2900 50 
F18 "NQ1" I T 2200 2900 50 
$EndSheet
Wire Wire Line
	1950 3850 1950 3450
Connection ~ 1700 4450
Wire Wire Line
	2650 3450 2650 4750
Wire Wire Line
	2650 4750 8300 4750
Wire Wire Line
	9000 4350 2750 4350
Wire Wire Line
	2750 4350 2750 3450
Wire Wire Line
	10050 4250 2850 4250
Wire Wire Line
	2850 4250 2850 3450
$Comp
L pspice:0 #GND?
U 1 1 5C43C46E
P 2200 6700
AR Path="/5C4196B1/5C43C46E" Ref="#GND?"  Part="1" 
AR Path="/5C43C46E" Ref="#GND03"  Part="1" 
AR Path="/5C42CE9C/5C43C46E" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43C46E" Ref="#GND?"  Part="1" 
F 0 "#GND03" H 2200 6600 50  0001 C CNN
F 1 "0" H 2200 6787 50  0000 C CNN
F 2 "" H 2200 6700 50  0001 C CNN
F 3 "~" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C43C474
P 2200 6250
AR Path="/5C4196B1/5C43C474" Ref="V?"  Part="1" 
AR Path="/5C43C474" Ref="V3"  Part="1" 
AR Path="/5C42CE9C/5C43C474" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C43C474" Ref="V?"  Part="1" 
F 0 "V3" H 2428 6296 50  0000 L CNN
F 1 "dc 5" H 2428 6205 50  0000 L CNN
F 2 "" H 2200 6250 50  0001 C CNN
F 3 "~" H 2200 6250 50  0001 C CNN
	1    2200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6550 2200 6700
$Comp
L pspice:0 #GND?
U 1 1 5C43C688
P 3050 6700
AR Path="/5C4196B1/5C43C688" Ref="#GND?"  Part="1" 
AR Path="/5C43C688" Ref="#GND04"  Part="1" 
AR Path="/5C42CE9C/5C43C688" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43C688" Ref="#GND?"  Part="1" 
F 0 "#GND04" H 3050 6600 50  0001 C CNN
F 1 "0" H 3050 6787 50  0000 C CNN
F 2 "" H 3050 6700 50  0001 C CNN
F 3 "~" H 3050 6700 50  0001 C CNN
	1    3050 6700
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C43C68E
P 3050 6250
AR Path="/5C4196B1/5C43C68E" Ref="V?"  Part="1" 
AR Path="/5C43C68E" Ref="V4"  Part="1" 
AR Path="/5C42CE9C/5C43C68E" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C43C68E" Ref="V?"  Part="1" 
F 0 "V4" H 3278 6296 50  0000 L CNN
F 1 "dc 5" H 3278 6205 50  0000 L CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "~" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6550 3050 6700
$Comp
L pspice:0 #GND?
U 1 1 5C43C915
P 3950 6700
AR Path="/5C4196B1/5C43C915" Ref="#GND?"  Part="1" 
AR Path="/5C43C915" Ref="#GND05"  Part="1" 
AR Path="/5C42CE9C/5C43C915" Ref="#GND?"  Part="1" 
AR Path="/5C4309EE/5C43C915" Ref="#GND?"  Part="1" 
F 0 "#GND05" H 3950 6600 50  0001 C CNN
F 1 "0" H 3950 6787 50  0000 C CNN
F 2 "" H 3950 6700 50  0001 C CNN
F 3 "~" H 3950 6700 50  0001 C CNN
	1    3950 6700
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5C43C91B
P 3950 6250
AR Path="/5C4196B1/5C43C91B" Ref="V?"  Part="1" 
AR Path="/5C43C91B" Ref="V5"  Part="1" 
AR Path="/5C42CE9C/5C43C91B" Ref="V?"  Part="1" 
AR Path="/5C4309EE/5C43C91B" Ref="V?"  Part="1" 
F 0 "V5" H 4178 6296 50  0000 L CNN
F 1 "dc 5" H 4178 6205 50  0000 L CNN
F 2 "" H 3950 6250 50  0001 C CNN
F 3 "~" H 3950 6250 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6550 3950 6700
Text Label 6700 4750 0    50   ~ 0
ClkIn
Text Label 6850 4350 0    50   ~ 0
ClrIn
Text Label 7500 4250 0    50   ~ 0
CEIn
Wire Wire Line
	1300 5950 1300 5250
Wire Wire Line
	1300 5250 2200 5250
Wire Wire Line
	2200 5250 2200 3450
Wire Wire Line
	2200 5950 2200 5400
Wire Wire Line
	2200 5400 2300 5400
Wire Wire Line
	2300 5400 2300 3450
Wire Wire Line
	2400 3450 2400 5400
Wire Wire Line
	2400 5400 3050 5400
Wire Wire Line
	3050 5400 3050 5950
Wire Wire Line
	2500 3450 2500 5250
Wire Wire Line
	2500 5250 3950 5250
Wire Wire Line
	3950 5250 3950 5950
Text Label 3950 5700 0    50   ~ 0
D4In
Text Label 3050 5800 0    50   ~ 0
D3In
Text Label 2200 5750 0    50   ~ 0
D2In
Text Label 1300 5700 0    50   ~ 0
D1In
$EndSCHEMATC
