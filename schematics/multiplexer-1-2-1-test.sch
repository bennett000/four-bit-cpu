EESchema Schematic File Version 4
LIBS:multiplexer-1-2-1-test-cache
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
$Sheet
S 3500 3250 550  650 
U 5C441B24
F0 "multiplexer-1-2-1" 50
F1 "multiplexer-1-2-1.sch" 50
F2 "A" I L 3500 3550 50 
F3 "Sel" I L 3500 3800 50 
F4 "B" I L 3500 3650 50 
F5 "Z" I R 4050 3800 50 
F6 "Vcc" I L 3500 3300 50 
F7 "Gnd" I L 3500 3400 50 
$EndSheet
$Comp
L pspice:VSOURCE V1
U 1 1 5C442111
P 2100 3600
F 0 "V1" H 2328 3646 50  0000 L CNN
F 1 "dc 5" H 2328 3555 50  0000 L CNN
F 2 "" H 2100 3600 50  0001 C CNN
F 3 "~" H 2100 3600 50  0001 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3300 3500 3300
Wire Wire Line
	2100 3900 2650 3900
Wire Wire Line
	2650 3900 2650 3400
Wire Wire Line
	2650 3400 3500 3400
$Comp
L pspice:0 #GND01
U 1 1 5C442227
P 2100 4150
F 0 "#GND01" H 2100 4050 50  0001 C CNN
F 1 "0" H 2100 4237 50  0000 C CNN
F 2 "" H 2100 4150 50  0001 C CNN
F 3 "~" H 2100 4150 50  0001 C CNN
	1    2100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4150 2100 3900
Connection ~ 2100 3900
$Comp
L pspice:VSOURCE V2
U 1 1 5C442422
P 2700 4500
F 0 "V2" H 2928 4546 50  0000 L CNN
F 1 "dc 5" H 2928 4455 50  0000 L CNN
F 2 "" H 2700 4500 50  0001 C CNN
F 3 "~" H 2700 4500 50  0001 C CNN
	1    2700 4500
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND02
U 1 1 5C442549
P 2700 5100
F 0 "#GND02" H 2700 5000 50  0001 C CNN
F 1 "0" H 2700 5187 50  0000 C CNN
F 2 "" H 2700 5100 50  0001 C CNN
F 3 "~" H 2700 5100 50  0001 C CNN
	1    2700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5100 2700 4800
$Comp
L pspice:VSOURCE V3
U 1 1 5C4426D8
P 3500 4500
F 0 "V3" H 3728 4546 50  0000 L CNN
F 1 "dc 5" H 3728 4455 50  0000 L CNN
F 2 "" H 3500 4500 50  0001 C CNN
F 3 "~" H 3500 4500 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5C4426DF
P 3500 5100
F 0 "#GND03" H 3500 5000 50  0001 C CNN
F 1 "0" H 3500 5187 50  0000 C CNN
F 2 "" H 3500 5100 50  0001 C CNN
F 3 "~" H 3500 5100 50  0001 C CNN
	1    3500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5100 3500 4800
$Comp
L pspice:VSOURCE V4
U 1 1 5C44274C
P 4350 4500
F 0 "V4" H 4578 4546 50  0000 L CNN
F 1 "dc 5" H 4578 4455 50  0000 L CNN
F 2 "" H 4350 4500 50  0001 C CNN
F 3 "~" H 4350 4500 50  0001 C CNN
	1    4350 4500
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND04
U 1 1 5C442753
P 4350 5100
F 0 "#GND04" H 4350 5000 50  0001 C CNN
F 1 "0" H 4350 5187 50  0000 C CNN
F 2 "" H 4350 5100 50  0001 C CNN
F 3 "~" H 4350 5100 50  0001 C CNN
	1    4350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5100 4350 4800
Wire Wire Line
	2700 4200 2700 3550
Wire Wire Line
	2700 3550 3500 3550
Wire Wire Line
	3500 4200 3200 4200
Wire Wire Line
	3200 4200 3200 3650
Wire Wire Line
	3200 3650 3500 3650
Wire Wire Line
	4350 4200 4350 4100
Wire Wire Line
	4350 4100 3350 4100
Wire Wire Line
	3350 4100 3350 3800
Wire Wire Line
	3350 3800 3500 3800
Text Label 3650 4100 0    50   ~ 0
SelIn
Text Label 3200 4100 0    50   ~ 0
Bin
Text Label 2700 4100 0    50   ~ 0
Ain
$EndSCHEMATC