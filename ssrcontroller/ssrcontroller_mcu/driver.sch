EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Transistor_BJT:2N3904 Q1
U 1 1 605680B9
P 4150 3650
AR Path="/605679EE/605680B9" Ref="Q1"  Part="1" 
AR Path="/6057113B/605680B9" Ref="Q?"  Part="1" 
AR Path="/60575FAC/605680B9" Ref="Q?"  Part="1" 
AR Path="/6057C197/605680B9" Ref="Q?"  Part="1" 
AR Path="/6057C976/605680B9" Ref="Q?"  Part="1" 
AR Path="/6057D065/605680B9" Ref="Q?"  Part="1" 
AR Path="/60583568/605680B9" Ref="Q2"  Part="1" 
AR Path="/6058944A/605680B9" Ref="Q3"  Part="1" 
F 0 "Q3" H 4340 3696 50  0000 L CNN
F 1 "2N3904" H 4340 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4350 3575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4150 3650 50  0001 L CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6056898A
P 3950 3800
AR Path="/605679EE/6056898A" Ref="R3"  Part="1" 
AR Path="/6057113B/6056898A" Ref="R?"  Part="1" 
AR Path="/60575FAC/6056898A" Ref="R?"  Part="1" 
AR Path="/6057C197/6056898A" Ref="R?"  Part="1" 
AR Path="/6057C976/6056898A" Ref="R?"  Part="1" 
AR Path="/6057D065/6056898A" Ref="R?"  Part="1" 
AR Path="/60583568/6056898A" Ref="R6"  Part="1" 
AR Path="/6058944A/6056898A" Ref="R9"  Part="1" 
F 0 "R9" H 3800 3850 50  0000 L CNN
F 1 "10k" H 4020 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3880 3800 50  0001 C CNN
F 3 "~" H 3950 3800 50  0001 C CNN
	1    3950 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60568FD6
P 4250 3950
AR Path="/605679EE/60568FD6" Ref="#PWR019"  Part="1" 
AR Path="/6057113B/60568FD6" Ref="#PWR?"  Part="1" 
AR Path="/60575FAC/60568FD6" Ref="#PWR?"  Part="1" 
AR Path="/6057C197/60568FD6" Ref="#PWR?"  Part="1" 
AR Path="/6057C976/60568FD6" Ref="#PWR?"  Part="1" 
AR Path="/6057D065/60568FD6" Ref="#PWR?"  Part="1" 
AR Path="/60583568/60568FD6" Ref="#PWR025"  Part="1" 
AR Path="/6058944A/60568FD6" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4250 3700 50  0001 C CNN
F 1 "GND" H 4255 3777 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3950 4250 3950
Wire Wire Line
	4250 3950 4250 3850
Connection ~ 4250 3950
Text HLabel 3350 3650 0    50   Input ~ 0
control
Wire Wire Line
	3650 3650 3950 3650
Connection ~ 3950 3650
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60569EEF
P 4050 3200
AR Path="/605679EE/60569EEF" Ref="J5"  Part="1" 
AR Path="/6057113B/60569EEF" Ref="J?"  Part="1" 
AR Path="/60575FAC/60569EEF" Ref="J?"  Part="1" 
AR Path="/6057C197/60569EEF" Ref="J?"  Part="1" 
AR Path="/6057C976/60569EEF" Ref="J?"  Part="1" 
AR Path="/6057D065/60569EEF" Ref="J?"  Part="1" 
AR Path="/60583568/60569EEF" Ref="J7"  Part="1" 
AR Path="/6058944A/60569EEF" Ref="J9"  Part="1" 
F 0 "J9" H 4158 3381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3800 3300 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 4050 3200 50  0001 C CNN
F 3 "~" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3300 4250 3450
$Comp
L power:+VDC #PWR018
U 1 1 6056B573
P 4250 2950
AR Path="/605679EE/6056B573" Ref="#PWR018"  Part="1" 
AR Path="/6057113B/6056B573" Ref="#PWR?"  Part="1" 
AR Path="/60575FAC/6056B573" Ref="#PWR?"  Part="1" 
AR Path="/6057C197/6056B573" Ref="#PWR?"  Part="1" 
AR Path="/6057C976/6056B573" Ref="#PWR?"  Part="1" 
AR Path="/6057D065/6056B573" Ref="#PWR?"  Part="1" 
AR Path="/60583568/6056B573" Ref="#PWR024"  Part="1" 
AR Path="/6058944A/6056B573" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4250 2850 50  0001 C CNN
F 1 "+VDC" H 4250 3225 50  0000 C CNN
F 2 "" H 4250 2950 50  0001 C CNN
F 3 "" H 4250 2950 50  0001 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2950 4250 3200
$Comp
L Switch:SW_Push SW3
U 1 1 60559A58
P 5350 3550
AR Path="/605679EE/60559A58" Ref="SW3"  Part="1" 
AR Path="/60583568/60559A58" Ref="SW4"  Part="1" 
AR Path="/6058944A/60559A58" Ref="SW5"  Part="1" 
F 0 "SW5" V 5396 3502 50  0000 R CNN
F 1 "SW_Push" V 5305 3502 50  0000 R CNN
F 2 "Button_Switch_THT:SW_Tactile_SKHH_Angled" H 5350 3750 50  0001 C CNN
F 3 "~" H 5350 3750 50  0001 C CNN
	1    5350 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 6055B53E
P 5350 2900
AR Path="/605679EE/6055B53E" Ref="#PWR022"  Part="1" 
AR Path="/60583568/6055B53E" Ref="#PWR028"  Part="1" 
AR Path="/6058944A/6055B53E" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5350 2750 50  0001 C CNN
F 1 "+5V" H 5365 3073 50  0000 C CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6055C8C4
P 5350 3050
AR Path="/605679EE/6055C8C4" Ref="R5"  Part="1" 
AR Path="/60583568/6055C8C4" Ref="R8"  Part="1" 
AR Path="/6058944A/6055C8C4" Ref="R11"  Part="1" 
F 0 "R11" H 5420 3096 50  0000 L CNN
F 1 "10k" H 5420 3005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5280 3050 50  0001 C CNN
F 3 "~" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 605606BD
P 5350 3750
AR Path="/605679EE/605606BD" Ref="#PWR023"  Part="1" 
AR Path="/60583568/605606BD" Ref="#PWR029"  Part="1" 
AR Path="/6058944A/605606BD" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5350 3500 50  0001 C CNN
F 1 "GND" H 5355 3577 50  0000 C CNN
F 2 "" H 5350 3750 50  0001 C CNN
F 3 "" H 5350 3750 50  0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3200 5350 3300
Text HLabel 5550 3300 2    50   Output ~ 0
pb
Wire Wire Line
	5550 3300 5350 3300
Connection ~ 5350 3300
Wire Wire Line
	5350 3300 5350 3350
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 605640EB
P 4500 4750
AR Path="/605679EE/605640EB" Ref="J6"  Part="1" 
AR Path="/60583568/605640EB" Ref="J8"  Part="1" 
AR Path="/6058944A/605640EB" Ref="J10"  Part="1" 
F 0 "J10" H 4250 4900 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4000 4750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4500 4750 50  0001 C CNN
F 3 "~" H 4500 4750 50  0001 C CNN
	1    4500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 605680EF
P 4700 4350
AR Path="/605679EE/605680EF" Ref="#PWR020"  Part="1" 
AR Path="/60583568/605680EF" Ref="#PWR026"  Part="1" 
AR Path="/6058944A/605680EF" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 4700 4200 50  0001 C CNN
F 1 "+5V" H 4715 4523 50  0000 C CNN
F 2 "" H 4700 4350 50  0001 C CNN
F 3 "" H 4700 4350 50  0001 C CNN
	1    4700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 60568E19
P 4700 4850
AR Path="/605679EE/60568E19" Ref="#PWR021"  Part="1" 
AR Path="/60583568/60568E19" Ref="#PWR027"  Part="1" 
AR Path="/6058944A/60568E19" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4700 4600 50  0001 C CNN
F 1 "GND" H 4705 4677 50  0000 C CNN
F 2 "" H 4700 4850 50  0001 C CNN
F 3 "" H 4700 4850 50  0001 C CNN
	1    4700 4850
	1    0    0    -1  
$EndComp
Text HLabel 4900 4750 2    50   Output ~ 0
ain
$Comp
L Device:R R4
U 1 1 605B9B90
P 4850 4500
AR Path="/605679EE/605B9B90" Ref="R4"  Part="1" 
AR Path="/60583568/605B9B90" Ref="R7"  Part="1" 
AR Path="/6058944A/605B9B90" Ref="R10"  Part="1" 
F 0 "R10" H 4920 4546 50  0000 L CNN
F 1 "R" H 4920 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 4500 50  0001 C CNN
F 3 "~" H 4850 4500 50  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4750 4850 4750
Wire Wire Line
	4850 4650 4850 4750
Connection ~ 4850 4750
Wire Wire Line
	4850 4750 4900 4750
Wire Wire Line
	4700 4350 4700 4650
Wire Wire Line
	4850 4350 4700 4350
Connection ~ 4700 4350
Text Notes 5150 4600 0    50   ~ 0
Resistor divider circuit for thermistor - only add resistor if desired
$Comp
L Device:R R12
U 1 1 605E95B5
P 3500 3650
AR Path="/605679EE/605E95B5" Ref="R12"  Part="1" 
AR Path="/60583568/605E95B5" Ref="R13"  Part="1" 
AR Path="/6058944A/605E95B5" Ref="R14"  Part="1" 
F 0 "R14" V 3293 3650 50  0000 C CNN
F 1 "1k" V 3384 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3430 3650 50  0001 C CNN
F 3 "~" H 3500 3650 50  0001 C CNN
	1    3500 3650
	0    1    1    0   
$EndComp
$EndSCHEMATC
