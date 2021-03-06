EESchema Schematic File Version 4
LIBS:whitterm-hat-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 5
Title "WT-220 RS232 Driver"
Date ""
Rev ""
Comp "JBR Engineering Research Ltd"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_UART:MAX3221 U5
U 1 1 5C556CD2
P 6150 3350
F 0 "U5" H 6150 4428 50  0000 C CNN
F 1 "MAX3221" H 6150 4337 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/tssop.pretty:TSSOP16" H 6200 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/max3221.pdf" H 6150 4300 50  0001 C CNN
	1    6150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C556EBB
P 5100 2850
F 0 "C1" H 5192 2896 50  0000 L CNN
F 1 "47nF" H 5192 2805 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 5100 2850 50  0001 C CNN
F 3 "~" H 5100 2850 50  0001 C CNN
F 4 "X7R" H 5100 2850 50  0001 C CNN "Characteristics"
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C556FEE
P 5100 3350
F 0 "C2" H 5192 3396 50  0000 L CNN
F 1 "330nF" H 5192 3305 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 5100 3350 50  0001 C CNN
F 3 "~" H 5100 3350 50  0001 C CNN
F 4 "X7R" H 5100 3350 50  0001 C CNN "Characteristics"
	1    5100 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C557394
P 7000 3050
F 0 "C3" V 7229 3050 50  0000 C CNN
F 1 "330nF" V 7138 3050 50  0000 C CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 7000 3050 50  0001 C CNN
F 3 "~" H 7000 3050 50  0001 C CNN
F 4 "X7R" H 7000 3050 50  0001 C CNN "Characteristics"
	1    7000 3050
	0    1    -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5C5576BB
P 7000 3550
F 0 "C4" V 7229 3550 50  0000 C CNN
F 1 "330nF" V 7138 3550 50  0000 C CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 7000 3550 50  0001 C CNN
F 3 "~" H 7000 3550 50  0001 C CNN
F 4 "X7R" H 7000 3550 50  0001 C CNN "Characteristics"
	1    7000 3550
	0    1    -1   0   
$EndComp
Wire Wire Line
	5100 2750 5100 2650
Wire Wire Line
	5100 2650 5550 2650
Wire Wire Line
	5100 2950 5100 3050
Wire Wire Line
	5100 3050 5550 3050
Wire Wire Line
	5550 3150 5100 3150
Wire Wire Line
	5100 3150 5100 3250
Wire Wire Line
	5100 3450 5100 3550
Wire Wire Line
	5100 3550 5550 3550
Wire Wire Line
	6750 3050 6900 3050
Wire Wire Line
	7100 3050 7250 3050
Wire Wire Line
	7250 3050 7250 3550
Wire Wire Line
	7250 3550 7100 3550
Wire Wire Line
	6750 3550 6900 3550
$Comp
L Device:C_Small C6
U 1 1 5C558227
P 7000 2450
F 0 "C6" V 7229 2450 50  0000 C CNN
F 1 "100nF" V 7138 2450 50  0000 C CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 7000 2450 50  0001 C CNN
F 3 "~" H 7000 2450 50  0001 C CNN
F 4 "X7R" H 7000 2450 50  0001 C CNN "Characteristics"
	1    7000 2450
	0    1    -1   0   
$EndComp
Wire Wire Line
	6150 2450 6900 2450
Wire Wire Line
	7100 2450 7250 2450
Wire Wire Line
	7250 2450 7250 3050
Connection ~ 7250 3050
$Comp
L power:GND #PWR0101
U 1 1 5C558864
P 6150 4650
F 0 "#PWR0101" H 6150 4400 50  0001 C CNN
F 1 "GND" H 6155 4477 50  0000 C CNN
F 2 "" H 6150 4650 50  0001 C CNN
F 3 "" H 6150 4650 50  0001 C CNN
	1    6150 4650
	1    0    0    -1  
$EndComp
NoConn ~ 6750 3950
$Comp
L power:VCC #PWR0102
U 1 1 5C55A2A5
P 4800 2350
F 0 "#PWR0102" H 4800 2200 50  0001 C CNN
F 1 "VCC" H 4817 2523 50  0000 C CNN
F 2 "" H 4800 2350 50  0001 C CNN
F 3 "" H 4800 2350 50  0001 C CNN
	1    4800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2350 4800 2450
Wire Wire Line
	4800 4050 5550 4050
Wire Wire Line
	6750 4050 6800 4050
Wire Wire Line
	6800 4050 6800 4350
Wire Wire Line
	4800 4350 4800 4050
Connection ~ 4800 4050
Wire Wire Line
	4800 4350 6800 4350
Wire Wire Line
	4800 2450 6150 2450
Connection ~ 4800 2450
Wire Wire Line
	4800 2450 4800 4050
Connection ~ 6150 2450
$Comp
L Connector:DB9_Male J4
U 1 1 5C54B7CB
P 2050 2750
F 0 "J4" H 1970 2058 50  0000 C CNN
F 1 "DB9_Male" H 1970 2149 50  0000 C CNN
F 2 "KiCad/Connector_Dsub.pretty:DSUB-9_Male_Vertical_P2.77x2.84mm_MountingHoles" H 2050 2750 50  0001 C CNN
F 3 " ~" H 2050 2750 50  0001 C CNN
F 4 "Amphenol FCI" H 2050 2750 50  0001 C CNN "MFN"
F 5 "D09P24A4GV00LF" H 2050 2750 50  0001 C CNN "MFP"
F 6 "RS" H 2050 2750 50  0001 C CNN "Supplier"
	1    2050 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C54E294
P 2450 3700
F 0 "#PWR0103" H 2450 3450 50  0001 C CNN
F 1 "GND" H 2455 3527 50  0000 C CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3150 2450 3150
Wire Wire Line
	2450 3150 2450 3700
Wire Wire Line
	5150 3750 5550 3750
Wire Wire Line
	5150 3850 5550 3850
$Comp
L Device:R R17
U 1 1 5C5568B6
P 5750 4600
F 0 "R17" V 5543 4600 50  0000 C CNN
F 1 "10k" V 5634 4600 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 5680 4600 50  0001 C CNN
F 3 "~" H 5750 4600 50  0001 C CNN
	1    5750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3950 5400 3950
Wire Wire Line
	5400 3950 5400 4600
Wire Wire Line
	5400 4600 5600 4600
Wire Wire Line
	5900 4600 6150 4600
Connection ~ 6150 4600
Wire Wire Line
	6150 4600 6150 4650
Wire Wire Line
	5250 4600 5400 4600
Connection ~ 5400 4600
Wire Wire Line
	6750 3750 7400 3750
Wire Wire Line
	6750 3850 7800 3850
Text Notes 10700 4500 0    50   ~ 0
To connector for frame RX/TX LED. Includes logic to set activity-on/off-constant
$Comp
L Device:LED D4
U 1 1 5C55BD50
P 7600 2200
F 0 "D4" V 7638 2083 50  0000 R CNN
F 1 "TLRX" V 7547 2083 50  0000 R CNN
F 2 "KiCad/LED_SMD.pretty:LED_0603_1608Metric" H 7600 2200 50  0001 C CNN
F 3 "~" H 7600 2200 50  0001 C CNN
F 4 "Kingbright" H 7600 2200 50  0001 C CNN "MFN"
F 5 "KP-2012SEC" H 7600 2200 50  0001 C CNN "MFP"
F 6 "Orange" H 7600 2200 50  0001 C CNN "Characteristics"
F 7 "RS232 LED" H 7600 2200 50  0001 C CNN "Description"
	1    7600 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5C55C45D
P 8000 2200
F 0 "D5" V 8038 2083 50  0000 R CNN
F 1 "TLTX" V 7947 2083 50  0000 R CNN
F 2 "KiCad/LED_SMD.pretty:LED_0603_1608Metric" H 8000 2200 50  0001 C CNN
F 3 "~" H 8000 2200 50  0001 C CNN
F 4 "Kingbright" H 8000 2200 50  0001 C CNN "MFN"
F 5 "KP-2012SEC" H 8000 2200 50  0001 C CNN "MFP"
F 6 "Orange" H 8000 2200 50  0001 C CNN "Characteristics"
F 7 "RS232 LED" H 8000 2200 50  0001 C CNN "Description"
	1    8000 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 5C55DDB6
P 7600 2700
F 0 "R18" V 7393 2700 50  0000 C CNN
F 1 "150R" V 7484 2700 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 7530 2700 50  0001 C CNN
F 3 "~" H 7600 2700 50  0001 C CNN
	1    7600 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 5C55E03F
P 8000 2700
F 0 "R19" V 7793 2700 50  0000 C CNN
F 1 "150R" V 7884 2700 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 7930 2700 50  0001 C CNN
F 3 "~" H 8000 2700 50  0001 C CNN
	1    8000 2700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5C55E968
P 7600 1750
F 0 "#PWR0104" H 7600 1600 50  0001 C CNN
F 1 "VCC" H 7617 1923 50  0000 C CNN
F 2 "" H 7600 1750 50  0001 C CNN
F 3 "" H 7600 1750 50  0001 C CNN
	1    7600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1950 8000 1950
Wire Wire Line
	8000 1950 8000 2050
Connection ~ 7600 1950
Wire Wire Line
	7600 1950 7600 2050
Wire Wire Line
	7600 1750 7600 1950
Wire Wire Line
	7600 2350 7600 2550
Wire Wire Line
	8000 2350 8000 2550
Text Notes 12650 5200 0    50   ~ 0
ON ACT LED PCHAN\n0    0         0   1\n1     0         1   0\n0    1          1   0\n1     1         1   0
$Comp
L Device:R R21
U 1 1 5C573548
P 10950 5950
F 0 "R21" V 10743 5950 50  0000 C CNN
F 1 "10k" V 10834 5950 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 10880 5950 50  0001 C CNN
F 3 "~" H 10950 5950 50  0001 C CNN
	1    10950 5950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5C576D52
P 10950 5700
F 0 "#PWR0105" H 10950 5550 50  0001 C CNN
F 1 "VCC" H 10967 5873 50  0000 C CNN
F 2 "" H 10950 5700 50  0001 C CNN
F 3 "" H 10950 5700 50  0001 C CNN
	1    10950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4250 6150 4450
Wire Wire Line
	6150 4450 7250 4450
Wire Wire Line
	7250 4450 7250 3550
Connection ~ 6150 4450
Wire Wire Line
	6150 4450 6150 4600
Connection ~ 7250 3550
$Comp
L Device:R R22
U 1 1 5C5FE0D9
P 12200 5950
F 0 "R22" V 11993 5950 50  0000 C CNN
F 1 "150R" V 12084 5950 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 12130 5950 50  0001 C CNN
F 3 "~" H 12200 5950 50  0001 C CNN
	1    12200 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 5C5FE496
P 12200 7800
F 0 "R23" V 11993 7800 50  0000 C CNN
F 1 "150R" V 12084 7800 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 12130 7800 50  0001 C CNN
F 3 "~" H 12200 7800 50  0001 C CNN
	1    12200 7800
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5C5FE96E
P 12200 5550
F 0 "D6" V 12238 5433 50  0000 R CNN
F 1 "RXD" V 12147 5433 50  0000 R CNN
F 2 "KiCad/LED_SMD.pretty:LED_0603_1608Metric" H 12200 5550 50  0001 C CNN
F 3 "~" H 12200 5550 50  0001 C CNN
F 4 "Kingbright" H 12200 5550 50  0001 C CNN "MFN"
F 5 "KP-2012SEC" H 12200 5550 50  0001 C CNN "MFP"
F 6 "Orange" H 12200 5550 50  0001 C CNN "Characteristics"
F 7 "RS232 LED" H 12200 5550 50  0001 C CNN "Description"
	1    12200 5550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5C5FF130
P 12200 7400
F 0 "D7" V 12238 7283 50  0000 R CNN
F 1 "TXD" V 12147 7283 50  0000 R CNN
F 2 "KiCad/LED_SMD.pretty:LED_0603_1608Metric" H 12200 7400 50  0001 C CNN
F 3 "~" H 12200 7400 50  0001 C CNN
F 4 "Kingbright" H 12200 7400 50  0001 C CNN "MFN"
F 5 "KP-2012SEC" H 12200 7400 50  0001 C CNN "MFP"
F 6 "Orange" H 12200 7400 50  0001 C CNN "Characteristics"
F 7 "RS232 LED" H 12200 7400 50  0001 C CNN "Description"
	1    12200 7400
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5C602042
P 12200 5250
F 0 "#PWR0107" H 12200 5100 50  0001 C CNN
F 1 "VCC" H 12217 5423 50  0000 C CNN
F 2 "" H 12200 5250 50  0001 C CNN
F 3 "" H 12200 5250 50  0001 C CNN
	1    12200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 7150 12200 7250
Wire Wire Line
	12200 5700 12200 5800
Wire Wire Line
	12200 6100 12200 6250
Wire Wire Line
	12200 7950 12200 8150
Wire Wire Line
	12200 7550 12200 7650
Text HLabel 5250 4600 0    50   Input ~ 0
~RS232_EN
Text HLabel 10800 6300 0    50   Input ~ 0
~RPI_EN_ACT
Text HLabel 10800 8200 0    50   Input ~ 0
~RPI_EN_ACT
Text HLabel 10800 6200 0    50   Output ~ 0
RPI_RXD
Text HLabel 10800 8100 0    50   Input ~ 0
RPI_TXD
Text HLabel 14250 6650 2    50   Output ~ 0
RXD_LEDC
Text HLabel 14250 8550 2    50   Output ~ 0
TXD_LEDC
NoConn ~ 2350 2350
NoConn ~ 2350 2450
NoConn ~ 2350 2950
NoConn ~ 2350 3050
$Comp
L Jumper:SolderJumper_3_Bridged12 JP11
U 1 1 5CC9564F
P 2800 2150
F 0 "JP11" V 2800 2218 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 2845 2217 50  0001 L CNN
F 2 "KiCad/Jumper.pretty:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 2800 2150 50  0001 C CNN
F 3 "~" H 2800 2150 50  0001 C CNN
	1    2800 2150
	0    1    1    0   
$EndComp
Text Label 2950 1900 0    50   ~ 0
RX
Wire Wire Line
	2800 1950 2800 1900
Wire Wire Line
	2800 1900 2950 1900
Wire Wire Line
	2800 2350 2800 2450
Wire Wire Line
	2800 2450 2950 2450
Text Label 2950 2450 0    50   ~ 0
TX
Wire Wire Line
	2350 2550 2650 2550
Wire Wire Line
	2650 2550 2650 2150
$Comp
L Jumper:SolderJumper_3_Bridged12 JP12
U 1 1 5CCA8DB0
P 2800 2950
F 0 "JP12" V 2800 3018 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 2845 3017 50  0001 L CNN
F 2 "KiCad/Jumper.pretty:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 2800 2950 50  0001 C CNN
F 3 "~" H 2800 2950 50  0001 C CNN
	1    2800 2950
	0    1    1    0   
$EndComp
Text Label 2950 2700 0    50   ~ 0
TX
Wire Wire Line
	2800 2750 2800 2700
Wire Wire Line
	2800 2700 2950 2700
Wire Wire Line
	2800 3150 2800 3250
Wire Wire Line
	2800 3250 2950 3250
Text Label 2950 3250 0    50   ~ 0
RX
Wire Wire Line
	2350 2750 2650 2750
Wire Wire Line
	2650 2750 2650 2950
Text Label 5150 3750 2    50   ~ 0
RX
Text Label 5150 3850 2    50   ~ 0
TX
Text Notes 11350 2150 0    50   ~ 0
Dip switch setting for:\n\n- RPi UART -> MAX3221 RS232\n- RPi UART -> SAMD UART - USB\n- SAMD UART -> MAX3221 RS232
Wire Wire Line
	12400 3000 12650 3000
Wire Wire Line
	12400 2900 12650 2900
Wire Wire Line
	11550 3000 11800 3000
Wire Wire Line
	11550 2900 11800 2900
Wire Wire Line
	12400 2800 12650 2800
Wire Wire Line
	12400 2700 12650 2700
Wire Wire Line
	11550 2800 11800 2800
Wire Wire Line
	11550 2700 11800 2700
Wire Wire Line
	12400 2600 12650 2600
Wire Wire Line
	12400 2500 12650 2500
Wire Wire Line
	11550 2600 11800 2600
Wire Wire Line
	11550 2500 11800 2500
$Comp
L Switch:SW_DIP_x06 SW1
U 1 1 5C559D0B
P 12100 2800
F 0 "SW1" H 12100 3367 50  0000 C CNN
F 1 "SW_DIP_x06" H 12100 3276 50  0000 C CNN
F 2 "KiCad/Package_DIP.pretty:SMDIP-12_W9.53mm" H 12100 2800 50  0001 C CNN
F 3 "" H 12100 2800 50  0001 C CNN
	1    12100 2800
	1    0    0    -1  
$EndComp
Text Label 8250 3750 0    50   ~ 0
TTL_RX
Text Label 8250 3850 0    50   ~ 0
TTL_TX
Text Label 11550 3000 2    50   ~ 0
TTL_TX
Text Label 11550 2900 2    50   ~ 0
TTL_RX
Text Label 11550 2500 2    50   ~ 0
TTL_RX
Text Label 11550 2600 2    50   ~ 0
TTL_TX
Text HLabel 11550 2700 0    50   Input ~ 0
SAMD_TXD
Text HLabel 11550 2800 0    50   Output ~ 0
SAMD_RXD
Text HLabel 12650 2500 2    50   Output ~ 0
RPI_RXD
Text HLabel 12650 2600 2    50   Input ~ 0
RPI_TXD
Text HLabel 12650 2700 2    50   Output ~ 0
RPI_RXD
Text HLabel 12650 2800 2    50   Input ~ 0
RPI_TXD
Text HLabel 12650 2900 2    50   Output ~ 0
SAMD_RXD
Text HLabel 12650 3000 2    50   Input ~ 0
SAMD_TXD
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 5D53007B
P 13900 6250
AR Path="/5C65C880/5D53007B" Ref="Q?"  Part="1" 
AR Path="/5C556852/5D53007B" Ref="Q7"  Part="1" 
F 0 "Q7" H 14100 6325 50  0000 L CNN
F 1 "IRLML6402PBF" H 14100 6250 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 14100 6175 50  0001 L CIN
F 3 "" H 13900 6250 50  0001 L CNN
F 4 "Infineon" H 13900 6250 60  0001 C CNN "MFN"
F 5 "IRLML6402PBF" H 13900 6250 60  0001 C CNN "MFP"
F 6 "Single P-Channel 20 V 1.3 W 8.0 nC Hexfet Power Mosfet Surface Mount - SOT-23" H 13900 6250 60  0001 C CNN "Description"
	1    13900 6250
	1    0    0    1   
$EndComp
$Comp
L Device:R R56
U 1 1 5D542A88
P 13550 5900
F 0 "R56" V 13343 5900 50  0000 C CNN
F 1 "10k" V 13434 5900 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13480 5900 50  0001 C CNN
F 3 "~" H 13550 5900 50  0001 C CNN
	1    13550 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R54
U 1 1 5D543A68
P 13150 6250
F 0 "R54" V 12943 6250 50  0000 C CNN
F 1 "470R" V 13034 6250 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13080 6250 50  0001 C CNN
F 3 "~" H 13150 6250 50  0001 C CNN
	1    13150 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13300 6250 13550 6250
Wire Wire Line
	13550 6050 13550 6250
Connection ~ 13550 6250
Wire Wire Line
	13550 6250 13700 6250
$Comp
L power:VCC #PWR013
U 1 1 5D54C6DD
P 14000 5250
F 0 "#PWR013" H 14000 5100 50  0001 C CNN
F 1 "VCC" H 14017 5423 50  0000 C CNN
F 2 "" H 14000 5250 50  0001 C CNN
F 3 "" H 14000 5250 50  0001 C CNN
	1    14000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 5750 13550 5550
Wire Wire Line
	13550 5550 14000 5550
Wire Wire Line
	14000 5550 14000 5250
Wire Wire Line
	14000 5550 14000 6050
Connection ~ 14000 5550
Wire Wire Line
	14000 6450 14000 6650
Wire Wire Line
	14250 6650 14000 6650
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 5D575684
P 13900 8150
AR Path="/5C65C880/5D575684" Ref="Q?"  Part="1" 
AR Path="/5C556852/5D575684" Ref="Q8"  Part="1" 
F 0 "Q8" H 14100 8225 50  0000 L CNN
F 1 "IRLML6402PBF" H 14100 8150 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 14100 8075 50  0001 L CIN
F 3 "" H 13900 8150 50  0001 L CNN
F 4 "Infineon" H 13900 8150 60  0001 C CNN "MFN"
F 5 "IRLML6402PBF" H 13900 8150 60  0001 C CNN "MFP"
F 6 "Single P-Channel 20 V 1.3 W 8.0 nC Hexfet Power Mosfet Surface Mount - SOT-23" H 13900 8150 60  0001 C CNN "Description"
	1    13900 8150
	1    0    0    1   
$EndComp
$Comp
L Device:R R57
U 1 1 5D57568B
P 13550 7800
F 0 "R57" V 13343 7800 50  0000 C CNN
F 1 "10k" V 13434 7800 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13480 7800 50  0001 C CNN
F 3 "~" H 13550 7800 50  0001 C CNN
	1    13550 7800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R55
U 1 1 5D575692
P 13150 8150
F 0 "R55" V 12943 8150 50  0000 C CNN
F 1 "470R" V 13034 8150 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13080 8150 50  0001 C CNN
F 3 "~" H 13150 8150 50  0001 C CNN
	1    13150 8150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13300 8150 13550 8150
Wire Wire Line
	13550 7950 13550 8150
Connection ~ 13550 8150
Wire Wire Line
	13550 8150 13700 8150
$Comp
L power:VCC #PWR014
U 1 1 5D57569E
P 14000 7150
F 0 "#PWR014" H 14000 7000 50  0001 C CNN
F 1 "VCC" H 14017 7323 50  0000 C CNN
F 2 "" H 14000 7150 50  0001 C CNN
F 3 "" H 14000 7150 50  0001 C CNN
	1    14000 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 7650 13550 7450
Wire Wire Line
	13550 7450 14000 7450
Wire Wire Line
	14000 7450 14000 7150
Wire Wire Line
	14000 7450 14000 7950
Connection ~ 14000 7450
Wire Wire Line
	14000 8350 14000 8550
Wire Wire Line
	14250 8550 14000 8550
Wire Wire Line
	12200 8150 12600 8150
Wire Wire Line
	2150 4450 2500 4450
Wire Wire Line
	2150 4650 2500 4650
Text HLabel 2850 4450 2    50   UnSpc ~ 0
RS232_RX
Text HLabel 2850 4650 2    50   UnSpc ~ 0
RS232_TX
Text Label 2150 4450 2    50   ~ 0
RX
Text Label 2150 4650 2    50   ~ 0
TX
$Comp
L Connector:TestPoint TP?
U 1 1 5D625B1F
P 2500 4450
AR Path="/5D625B1F" Ref="TP?"  Part="1" 
AR Path="/5C556852/5D625B1F" Ref="TP17"  Part="1" 
F 0 "TP17" H 2558 4524 50  0000 L CNN
F 1 "TestPoint" H 2558 4479 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 2700 4450 50  0001 C CNN
F 3 "~" H 2700 4450 50  0001 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D62943B
P 2500 4650
AR Path="/5D62943B" Ref="TP?"  Part="1" 
AR Path="/5C556852/5D62943B" Ref="TP18"  Part="1" 
F 0 "TP18" H 2558 4724 50  0000 L CNN
F 1 "TestPoint" H 2558 4679 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 2700 4650 50  0001 C CNN
F 3 "~" H 2700 4650 50  0001 C CNN
	1    2500 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D62D545
P 12600 6250
AR Path="/5D62D545" Ref="TP?"  Part="1" 
AR Path="/5C556852/5D62D545" Ref="TP21"  Part="1" 
F 0 "TP21" H 12658 6324 50  0000 L CNN
F 1 "TestPoint" H 12658 6279 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 12800 6250 50  0001 C CNN
F 3 "~" H 12800 6250 50  0001 C CNN
	1    12600 6250
	1    0    0    -1  
$EndComp
Connection ~ 2500 4450
Wire Wire Line
	2500 4450 2850 4450
Connection ~ 2500 4650
Wire Wire Line
	2500 4650 2850 4650
Connection ~ 12600 6250
Wire Wire Line
	12600 6250 13000 6250
$Comp
L Connector:TestPoint TP?
U 1 1 5D6B3F11
P 7400 3750
AR Path="/5D6B3F11" Ref="TP?"  Part="1" 
AR Path="/5C556852/5D6B3F11" Ref="TP19"  Part="1" 
F 0 "TP19" H 7458 3824 50  0000 L CNN
F 1 "TestPoint" H 7458 3779 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 7600 3750 50  0001 C CNN
F 3 "~" H 7600 3750 50  0001 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
Connection ~ 7400 3750
$Comp
L Connector:TestPoint TP?
U 1 1 5D6B456C
P 7800 3850
AR Path="/5D6B456C" Ref="TP?"  Part="1" 
AR Path="/5C556852/5D6B456C" Ref="TP20"  Part="1" 
F 0 "TP20" H 7858 3924 50  0000 L CNN
F 1 "TestPoint" H 7858 3879 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 8000 3850 50  0001 C CNN
F 3 "~" H 8000 3850 50  0001 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
Connection ~ 7800 3850
$Comp
L 74xGxx:74LVC2G02 U6
U 1 1 5C8327E0
P 11550 6250
F 0 "U6" H 11525 6517 50  0000 C CNN
F 1 "74LVC2G02" H 11525 6426 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:TSSOP-8_3x3mm_P0.65mm" H 11550 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 11550 6250 50  0001 C CNN
F 4 "Nexperia" H 11550 6250 50  0001 C CNN "MFN"
F 5 "74LVC2G02 " H 11550 6250 50  0001 C CNN "MFP"
	1    11550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 6200 11250 6200
$Comp
L 74xGxx:74LVC2G02 U6
U 2 1 5C853AC2
P 11550 8150
F 0 "U6" H 11525 8417 50  0000 C CNN
F 1 "74LVC2G02" H 11525 8326 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:TSSOP-8_3x3mm_P0.65mm" H 11550 8150 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 11550 8150 50  0001 C CNN
F 4 "Nexperia" H 11550 8150 50  0001 C CNN "MFN"
F 5 "74LVC2G02 " H 11550 8150 50  0001 C CNN "MFP"
	2    11550 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 8100 11250 8100
Wire Wire Line
	10950 5700 10950 5800
Wire Wire Line
	10950 6100 10950 6300
Connection ~ 10950 6300
Wire Wire Line
	10950 6300 11250 6300
Wire Wire Line
	10800 6300 10950 6300
Wire Wire Line
	11800 8150 12200 8150
Connection ~ 12200 8150
$Comp
L power:VCC #PWR019
U 1 1 5C8A9189
P 12200 7150
F 0 "#PWR019" H 12200 7000 50  0001 C CNN
F 1 "VCC" H 12217 7323 50  0000 C CNN
F 2 "" H 12200 7150 50  0001 C CNN
F 3 "" H 12200 7150 50  0001 C CNN
	1    12200 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 5250 12200 5400
Connection ~ 12200 6250
Wire Wire Line
	12200 6250 12600 6250
Wire Wire Line
	11800 6250 12200 6250
$Comp
L Connector:TestPoint TP?
U 1 1 5C8B4752
P 12600 8150
AR Path="/5C8B4752" Ref="TP?"  Part="1" 
AR Path="/5C556852/5C8B4752" Ref="TP34"  Part="1" 
F 0 "TP34" H 12658 8224 50  0000 L CNN
F 1 "TestPoint" H 12658 8179 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 12800 8150 50  0001 C CNN
F 3 "~" H 12800 8150 50  0001 C CNN
	1    12600 8150
	1    0    0    -1  
$EndComp
Connection ~ 12600 8150
Wire Wire Line
	12600 8150 13000 8150
$Comp
L Transistor_BJT:BC850 Q?
U 1 1 5C8E4F1E
P 5950 6450
AR Path="/5C67462C/5C8E4F1E" Ref="Q?"  Part="1" 
AR Path="/5C556852/5C8E4F1E" Ref="Q10"  Part="1" 
F 0 "Q10" H 6141 6496 50  0000 L CNN
F 1 "BC850" H 6141 6405 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 6150 6375 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 5950 6450 50  0001 L CNN
	1    5950 6450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C8E4F2D
P 6300 6750
AR Path="/5C67462C/5C8E4F2D" Ref="R?"  Part="1" 
AR Path="/5C556852/5C8E4F2D" Ref="R62"  Part="1" 
F 0 "R62" V 6093 6750 50  0000 C CNN
F 1 "1k" V 6184 6750 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 6230 6750 50  0001 C CNN
F 3 "~" H 6300 6750 50  0001 C CNN
	1    6300 6750
	1    0    0    1   
$EndComp
Wire Wire Line
	6300 6600 6300 6450
Connection ~ 6300 6450
Wire Wire Line
	6300 6450 6150 6450
Wire Wire Line
	6300 6900 6300 7050
Wire Wire Line
	6300 7050 5850 7050
$Comp
L power:GND #PWR?
U 1 1 5C8E4F39
P 5850 7250
AR Path="/5C67462C/5C8E4F39" Ref="#PWR?"  Part="1" 
AR Path="/5C556852/5C8E4F39" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5850 7000 50  0001 C CNN
F 1 "GND" H 5855 7077 50  0000 C CNN
F 2 "" H 5850 7250 50  0001 C CNN
F 3 "" H 5850 7250 50  0001 C CNN
	1    5850 7250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 6650 5850 7050
Connection ~ 5850 7050
Wire Wire Line
	5850 7050 5850 7250
Wire Wire Line
	5850 6250 5850 5850
Wire Wire Line
	5850 5850 5700 5850
$Comp
L Device:R R?
U 1 1 5C8E4F44
P 5400 5850
AR Path="/5C67462C/5C8E4F44" Ref="R?"  Part="1" 
AR Path="/5C556852/5C8E4F44" Ref="R59"  Part="1" 
F 0 "R59" V 5193 5850 50  0000 C CNN
F 1 "470R" V 5284 5850 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 5330 5850 50  0001 C CNN
F 3 "~" H 5400 5850 50  0001 C CNN
	1    5400 5850
	0    -1   1    0   
$EndComp
Wire Wire Line
	5250 5850 4850 5850
Text HLabel 4850 5850 0    50   Input ~ 0
U_CTS
$Comp
L Device:D_TVS D?
U 1 1 5C8E4F4F
P 6950 6700
AR Path="/5C67462C/5C8E4F4F" Ref="D?"  Part="1" 
AR Path="/5C556852/5C8E4F4F" Ref="D9"  Part="1" 
F 0 "D9" V 6904 6779 50  0000 L CNN
F 1 "SMAJ30A-TR" V 6995 6779 50  0000 L CNN
F 2 "liubenyuan/kicad-xeit/xeit.pretty:D_DO-214AA" H 6950 6700 50  0001 C CNN
F 3 "~" H 6950 6700 50  0001 C CNN
	1    6950 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C8E4F56
P 7300 6450
AR Path="/5C67462C/5C8E4F56" Ref="R?"  Part="1" 
AR Path="/5C556852/5C8E4F56" Ref="R64"  Part="1" 
F 0 "R64" V 7093 6450 50  0000 C CNN
F 1 "470R" V 7184 6450 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 7230 6450 50  0001 C CNN
F 3 "~" H 7300 6450 50  0001 C CNN
	1    7300 6450
	0    -1   1    0   
$EndComp
Wire Wire Line
	7450 6450 7650 6450
Wire Wire Line
	6950 6550 6950 6450
Connection ~ 6950 6450
Wire Wire Line
	6950 6450 7150 6450
Wire Wire Line
	6950 6850 6950 7050
Wire Wire Line
	6950 7050 6300 7050
Connection ~ 6300 7050
$Comp
L Connector:TestPoint TP?
U 1 1 5C8E4F64
P 5700 5850
AR Path="/5C8E4F64" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5C8E4F64" Ref="TP?"  Part="1" 
AR Path="/5C556852/5C8E4F64" Ref="TP35"  Part="1" 
F 0 "TP35" H 5758 5924 50  0000 L CNN
F 1 "TestPoint" H 5758 5879 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 5900 5850 50  0001 C CNN
F 3 "~" H 5900 5850 50  0001 C CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
Connection ~ 5700 5850
Wire Wire Line
	5700 5850 5550 5850
$Comp
L Transistor_BJT:BC850 Q?
U 1 1 5C8EC90F
P 6200 9100
AR Path="/5C67462C/5C8EC90F" Ref="Q?"  Part="1" 
AR Path="/5C556852/5C8EC90F" Ref="Q11"  Part="1" 
F 0 "Q11" H 6391 9146 50  0000 L CNN
F 1 "BC850" H 6391 9055 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 6400 9025 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 6200 9100 50  0001 L CNN
	1    6200 9100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C8EC916
P 5500 9100
AR Path="/5C67462C/5C8EC916" Ref="R?"  Part="1" 
AR Path="/5C556852/5C8EC916" Ref="R60"  Part="1" 
F 0 "R60" V 5293 9100 50  0000 C CNN
F 1 "470R" V 5384 9100 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 5430 9100 50  0001 C CNN
F 3 "~" H 5500 9100 50  0001 C CNN
	1    5500 9100
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 9100 5750 9100
$Comp
L Device:R R?
U 1 1 5C8EC91E
P 5850 9400
AR Path="/5C67462C/5C8EC91E" Ref="R?"  Part="1" 
AR Path="/5C556852/5C8EC91E" Ref="R61"  Part="1" 
F 0 "R61" V 5643 9400 50  0000 C CNN
F 1 "1k" V 5734 9400 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 5780 9400 50  0001 C CNN
F 3 "~" H 5850 9400 50  0001 C CNN
	1    5850 9400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 9250 5850 9100
Connection ~ 5850 9100
Wire Wire Line
	5850 9100 6000 9100
Wire Wire Line
	5850 9550 5850 9700
Wire Wire Line
	5850 9700 6300 9700
$Comp
L power:GND #PWR?
U 1 1 5C8EC92A
P 6300 9900
AR Path="/5C67462C/5C8EC92A" Ref="#PWR?"  Part="1" 
AR Path="/5C556852/5C8EC92A" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 6300 9650 50  0001 C CNN
F 1 "GND" H 6305 9727 50  0000 C CNN
F 2 "" H 6300 9900 50  0001 C CNN
F 3 "" H 6300 9900 50  0001 C CNN
	1    6300 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 9300 6300 9550
Connection ~ 6300 9700
Wire Wire Line
	6300 9700 6300 9900
Wire Wire Line
	6300 8900 6300 8500
Wire Wire Line
	6300 8500 6600 8500
$Comp
L Device:R R?
U 1 1 5C8EC935
P 6750 8500
AR Path="/5C67462C/5C8EC935" Ref="R?"  Part="1" 
AR Path="/5C556852/5C8EC935" Ref="R63"  Part="1" 
F 0 "R63" V 6543 8500 50  0000 C CNN
F 1 "470R" V 6634 8500 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 6680 8500 50  0001 C CNN
F 3 "~" H 6750 8500 50  0001 C CNN
	1    6750 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 8500 7100 8500
Wire Wire Line
	5350 9100 5100 9100
Text HLabel 5100 9100 0    50   Input ~ 0
U_RTS
$Comp
L Device:D_TVS D?
U 1 1 5C8EC941
P 7100 9100
AR Path="/5C67462C/5C8EC941" Ref="D?"  Part="1" 
AR Path="/5C556852/5C8EC941" Ref="D10"  Part="1" 
F 0 "D10" V 7054 9179 50  0000 L CNN
F 1 "SMAJ30A-TR" V 7145 9179 50  0000 L CNN
F 2 "liubenyuan/kicad-xeit/xeit.pretty:D_DO-214AA" H 7100 9100 50  0001 C CNN
F 3 "~" H 7100 9100 50  0001 C CNN
	1    7100 9100
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 8950 7100 8500
Connection ~ 7100 8500
Wire Wire Line
	7100 8500 7300 8500
Wire Wire Line
	7100 9250 7100 9550
Wire Wire Line
	7100 9550 6300 9550
Connection ~ 6300 9550
Wire Wire Line
	6300 9550 6300 9700
$Comp
L Connector:TestPoint TP?
U 1 1 5C8EC94F
P 5750 9100
AR Path="/5C8EC94F" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5C8EC94F" Ref="TP?"  Part="1" 
AR Path="/5C556852/5C8EC94F" Ref="TP36"  Part="1" 
F 0 "TP36" H 5808 9174 50  0000 L CNN
F 1 "TestPoint" H 5808 9129 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 5950 9100 50  0001 C CNN
F 3 "~" H 5950 9100 50  0001 C CNN
	1    5750 9100
	1    0    0    -1  
$EndComp
Connection ~ 5750 9100
Wire Wire Line
	5750 9100 5850 9100
Text Label 7650 6450 0    50   ~ 0
RS232_CTS
Text Label 7300 8500 0    50   ~ 0
RS232_RTS
Text Label 2350 2850 0    50   ~ 0
RS232_CTS
Text Label 2350 2650 0    50   ~ 0
RS232_RTS
Wire Wire Line
	6300 6450 6650 6450
$Comp
L Connector:TestPoint TP?
U 1 1 5C946621
P 6650 6450
AR Path="/5C946621" Ref="TP?"  Part="1" 
AR Path="/5C556852/5C946621" Ref="TP37"  Part="1" 
F 0 "TP37" H 6708 6524 50  0000 L CNN
F 1 "TestPoint" H 6708 6479 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 6850 6450 50  0001 C CNN
F 3 "~" H 6850 6450 50  0001 C CNN
	1    6650 6450
	1    0    0    -1  
$EndComp
Connection ~ 6650 6450
Wire Wire Line
	6650 6450 6950 6450
Wire Wire Line
	10800 8200 11250 8200
$Comp
L 74xGxx:74LVC1G17 U?
U 1 1 5D1A27F5
P 7600 3250
AR Path="/5C556852/5D1A27F5" Ref="U?"  Part="1" 
AR Path="/5D1A27F5" Ref="U?"  Part="1" 
F 0 "U?" H 7575 3517 50  0000 C CNN
F 1 "74LVC1G17" H 7575 3426 50  0000 C CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:TSOT-23-5" H 7600 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 7600 3250 50  0001 C CNN
F 4 "Texas Instruments" H 7600 3250 50  0001 C CNN "MFN"
F 5 "SN74LVC1G17DBVT" H 7600 3250 50  0001 C CNN "MFP"
	1    7600 3250
	0    -1   -1   0   
$EndComp
$Comp
L 74xGxx:74LVC1G17 U?
U 1 1 5D1A27FD
P 8000 3250
AR Path="/5C556852/5D1A27FD" Ref="U?"  Part="1" 
AR Path="/5D1A27FD" Ref="U?"  Part="1" 
F 0 "U?" H 7975 3517 50  0000 C CNN
F 1 "74LVC1G17" H 7975 3426 50  0000 C CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:TSOT-23-5" H 8000 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8000 3250 50  0001 C CNN
F 4 "Texas Instruments" H 8000 3250 50  0001 C CNN "MFN"
F 5 "SN74LVC1G17DBVT" H 8000 3250 50  0001 C CNN "MFP"
	1    8000 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3750 7600 3750
Wire Wire Line
	7800 3850 8000 3850
Wire Wire Line
	7600 2850 7600 3000
Wire Wire Line
	8000 2850 8000 3000
Wire Wire Line
	7600 3550 7600 3750
Connection ~ 7600 3750
Wire Wire Line
	7600 3750 8250 3750
Wire Wire Line
	8000 3550 8000 3850
Connection ~ 8000 3850
Wire Wire Line
	8000 3850 8250 3850
$EndSCHEMATC
