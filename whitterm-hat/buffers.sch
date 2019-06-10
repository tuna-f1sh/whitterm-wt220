EESchema Schematic File Version 4
LIBS:whitterm-hat-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 5 5
Title "WT-220 Buffers"
Date ""
Rev ""
Comp "JBR Engineering Research Ltd"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:ADA4807-2ARM U10
U 1 1 5C675178
P 4100 2800
F 0 "U10" H 4100 3167 50  0000 C CNN
F 1 "ADA4807-2ARM" H 4100 3076 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:MSOP-8_3x3mm_P0.65mm" H 4100 2800 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 4100 2800 50  0001 C CNN
	1    4100 2800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:ADA4807-2ARM U10
U 2 1 5C6751F0
P 4150 4800
F 0 "U10" H 4150 5167 50  0000 C CNN
F 1 "ADA4807-2ARM" H 4150 5076 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:MSOP-8_3x3mm_P0.65mm" H 4150 4800 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 4150 4800 50  0001 C CNN
	2    4150 4800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:ADA4807-2ARM U10
U 3 1 5C675274
P 5400 1950
F 0 "U10" V 5075 1950 50  0000 C CNN
F 1 "ADA4807-2ARM" V 5166 1950 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:MSOP-8_3x3mm_P0.65mm" H 5400 1950 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 5400 1950 50  0001 C CNN
	3    5400 1950
	0    -1   1    0   
$EndComp
Wire Wire Line
	3800 2900 3700 2900
Wire Wire Line
	3700 2900 3700 3200
Wire Wire Line
	3700 3200 4500 3200
Wire Wire Line
	4500 3200 4500 2800
Wire Wire Line
	4500 2800 4400 2800
$Comp
L Device:R R34
U 1 1 5C6755E5
P 2400 2700
F 0 "R34" V 2193 2700 50  0000 C CNN
F 1 "9k1" V 2284 2700 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 2330 2700 50  0001 C CNN
F 3 "~" H 2400 2700 50  0001 C CNN
F 4 "0.1%" H 2400 2700 50  0001 C CNN "Characteristics"
	1    2400 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 5C6757FE
P 2800 3050
F 0 "R36" H 2730 3004 50  0000 R CNN
F 1 "3k9" H 2730 3095 50  0000 R CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 2730 3050 50  0001 C CNN
F 3 "~" H 2800 3050 50  0001 C CNN
F 4 "0.1%" H 2800 3050 50  0001 C CNN "Characteristics"
	1    2800 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 2700 2800 2700
Wire Wire Line
	2800 2700 2800 2900
Wire Wire Line
	2800 2700 3200 2700
Connection ~ 2800 2700
$Comp
L power:GND #PWR0141
U 1 1 5C6761C5
P 2800 3450
F 0 "#PWR0141" H 2800 3200 50  0001 C CNN
F 1 "GND" H 2805 3277 50  0000 C CNN
F 2 "" H 2800 3450 50  0001 C CNN
F 3 "" H 2800 3450 50  0001 C CNN
	1    2800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3200 2800 3450
$Comp
L Device:C_Small C18
U 1 1 5C67641F
P 3200 3050
F 0 "C18" H 3292 3096 50  0000 L CNN
F 1 "100nF" H 3292 3005 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 3200 3050 50  0001 C CNN
F 3 "~" H 3200 3050 50  0001 C CNN
	1    3200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5C676676
P 3200 3450
F 0 "#PWR0142" H 3200 3200 50  0001 C CNN
F 1 "GND" H 3205 3277 50  0000 C CNN
F 2 "" H 3200 3450 50  0001 C CNN
F 3 "" H 3200 3450 50  0001 C CNN
	1    3200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3150 3200 3450
Wire Wire Line
	3200 2950 3200 2700
Connection ~ 3200 2700
Wire Wire Line
	3200 2700 3500 2700
Text HLabel 1400 2700 0    50   Input ~ 0
AIN_I1
$Comp
L Device:R R38
U 1 1 5C6777DC
P 5450 2800
F 0 "R38" V 5243 2800 50  0000 C CNN
F 1 "1k" V 5334 2800 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 5380 2800 50  0001 C CNN
F 3 "~" H 5450 2800 50  0001 C CNN
F 4 "1%" H 5450 2800 50  0001 C CNN "Characteristics"
	1    5450 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2800 4950 2800
Connection ~ 4500 2800
Text HLabel 6000 2800 2    50   Input ~ 0
AIN_O1
Wire Wire Line
	6000 2800 5600 2800
$Comp
L Diode:BZX84Cxx D14
U 1 1 5C678A55
P 2000 3000
F 0 "D14" V 1954 3079 50  0000 L CNN
F 1 "BZX84C10LT1G" V 2045 3079 50  0000 L CNN
F 2 "KiCad/Diode_SMD.pretty:D_SOT-23_ANK" H 2000 2825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 2000 3000 50  0001 C CNN
	1    2000 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5C678C9F
P 2000 3450
F 0 "#PWR0143" H 2000 3200 50  0001 C CNN
F 1 "GND" H 2005 3277 50  0000 C CNN
F 2 "" H 2000 3450 50  0001 C CNN
F 3 "" H 2000 3450 50  0001 C CNN
	1    2000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3150 2000 3450
Wire Wire Line
	2000 2850 2000 2700
Connection ~ 2000 2700
Wire Wire Line
	2000 2700 2250 2700
$Comp
L Device:C_Small C20
U 1 1 5C67AF82
P 5400 1450
F 0 "C20" V 5171 1450 50  0000 C CNN
F 1 "100nF" V 5262 1450 50  0000 C CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 5400 1450 50  0001 C CNN
F 3 "~" H 5400 1450 50  0001 C CNN
	1    5400 1450
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0144
U 1 1 5C67B22D
P 3200 2050
F 0 "#PWR0144" H 3200 1900 50  0001 C CNN
F 1 "VCC" H 3217 2223 50  0000 C CNN
F 2 "" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 5C67B5FB
P 3800 2250
F 0 "#PWR0145" H 3800 2000 50  0001 C CNN
F 1 "GND" H 3805 2077 50  0000 C CNN
F 2 "" H 3800 2250 50  0001 C CNN
F 3 "" H 3800 2250 50  0001 C CNN
	1    3800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2150 3800 2250
Wire Wire Line
	3200 2050 3200 2150
Connection ~ 3500 2700
Wire Wire Line
	3500 2700 3800 2700
$Comp
L power:VCC #PWR0146
U 1 1 5C67D193
P 5000 1350
F 0 "#PWR0146" H 5000 1200 50  0001 C CNN
F 1 "VCC" H 5017 1523 50  0000 C CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 5C67D66C
P 5900 2000
F 0 "#PWR0147" H 5900 1750 50  0001 C CNN
F 1 "GND" H 5905 1827 50  0000 C CNN
F 2 "" H 5900 2000 50  0001 C CNN
F 3 "" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1350 5000 1450
Wire Wire Line
	5000 1850 5100 1850
Wire Wire Line
	5300 1450 5000 1450
Connection ~ 5000 1450
Wire Wire Line
	5000 1450 5000 1850
Wire Wire Line
	5500 1450 5900 1450
Wire Wire Line
	5900 1450 5900 1850
Wire Wire Line
	5700 1850 5900 1850
Connection ~ 5900 1850
Wire Wire Line
	5900 1850 5900 2000
Wire Wire Line
	3500 2150 3500 2700
Wire Wire Line
	3850 4900 3750 4900
Wire Wire Line
	3750 4900 3750 5200
Wire Wire Line
	3750 5200 4550 5200
Wire Wire Line
	4550 5200 4550 4800
Wire Wire Line
	4550 4800 4450 4800
$Comp
L Device:R R35
U 1 1 5C67944B
P 2450 4700
F 0 "R35" V 2243 4700 50  0000 C CNN
F 1 "9k1" V 2334 4700 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 2380 4700 50  0001 C CNN
F 3 "~" H 2450 4700 50  0001 C CNN
F 4 "0.1%" H 2450 4700 50  0001 C CNN "Characteristics"
	1    2450 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 5C679453
P 2850 5050
F 0 "R37" H 2780 5004 50  0000 R CNN
F 1 "3k9" H 2780 5095 50  0000 R CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 2780 5050 50  0001 C CNN
F 3 "" H 2850 5050 50  0001 C CNN
F 4 "0.1%" H 2850 5050 50  0001 C CNN "Characteristics"
	1    2850 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4700 2850 4700
Wire Wire Line
	2850 4700 2850 4900
Wire Wire Line
	2850 4700 3250 4700
Connection ~ 2850 4700
$Comp
L power:GND #PWR0148
U 1 1 5C67945E
P 2850 5450
F 0 "#PWR0148" H 2850 5200 50  0001 C CNN
F 1 "GND" H 2855 5277 50  0000 C CNN
F 2 "" H 2850 5450 50  0001 C CNN
F 3 "" H 2850 5450 50  0001 C CNN
	1    2850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5200 2850 5450
$Comp
L Device:C_Small C19
U 1 1 5C679465
P 3250 5050
F 0 "C19" H 3342 5096 50  0000 L CNN
F 1 "100nF" H 3342 5005 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 3250 5050 50  0001 C CNN
F 3 "~" H 3250 5050 50  0001 C CNN
	1    3250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5C67946C
P 3250 5450
F 0 "#PWR0149" H 3250 5200 50  0001 C CNN
F 1 "GND" H 3255 5277 50  0000 C CNN
F 2 "" H 3250 5450 50  0001 C CNN
F 3 "" H 3250 5450 50  0001 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5150 3250 5450
Wire Wire Line
	3250 4950 3250 4700
Connection ~ 3250 4700
Wire Wire Line
	3250 4700 3550 4700
Text HLabel 1450 4700 0    50   Input ~ 0
AIN_I2
Wire Wire Line
	1450 4700 2050 4700
$Comp
L Device:R R39
U 1 1 5C679479
P 5500 4800
F 0 "R39" V 5293 4800 50  0000 C CNN
F 1 "1k" V 5384 4800 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 5430 4800 50  0001 C CNN
F 3 "~" H 5500 4800 50  0001 C CNN
F 4 "1%" H 5500 4800 50  0001 C CNN "Characteristics"
	1    5500 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 4800 5350 4800
Connection ~ 4550 4800
Text HLabel 6050 4800 2    50   Input ~ 0
AIN_O2
Wire Wire Line
	6050 4800 5650 4800
$Comp
L Diode:BZX84Cxx D15
U 1 1 5C679484
P 2050 5000
F 0 "D15" V 2004 5079 50  0000 L CNN
F 1 "BZX84C10LT1G" V 2095 5079 50  0000 L CNN
F 2 "KiCad/Diode_SMD.pretty:D_SOT-23_ANK" H 2050 4825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 2050 5000 50  0001 C CNN
	1    2050 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5C67948B
P 2050 5450
F 0 "#PWR0150" H 2050 5200 50  0001 C CNN
F 1 "GND" H 2055 5277 50  0000 C CNN
F 2 "" H 2050 5450 50  0001 C CNN
F 3 "" H 2050 5450 50  0001 C CNN
	1    2050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5150 2050 5450
Wire Wire Line
	2050 4850 2050 4700
Connection ~ 2050 4700
Wire Wire Line
	2050 4700 2300 4700
$Comp
L power:VCC #PWR0151
U 1 1 5C679495
P 3250 4050
F 0 "#PWR0151" H 3250 3900 50  0001 C CNN
F 1 "VCC" H 3267 4223 50  0000 C CNN
F 2 "" H 3250 4050 50  0001 C CNN
F 3 "" H 3250 4050 50  0001 C CNN
	1    3250 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5C67949B
P 3850 4250
F 0 "#PWR0152" H 3850 4000 50  0001 C CNN
F 1 "GND" H 3855 4077 50  0000 C CNN
F 2 "" H 3850 4250 50  0001 C CNN
F 3 "" H 3850 4250 50  0001 C CNN
	1    3850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4150 3850 4250
Wire Wire Line
	3250 4050 3250 4150
Connection ~ 3550 4700
Wire Wire Line
	3550 4700 3850 4700
Wire Wire Line
	3550 4150 3550 4700
Text Notes 2450 1500 0    50   ~ 0
0-10 V input to 0-3 V for uC ADC. G = 3/10
$Comp
L Transistor_BJT:BC850 Q3
U 1 1 5C682C15
P 9000 2200
F 0 "Q3" H 9191 2246 50  0000 L CNN
F 1 "BC850" H 9191 2155 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 9200 2125 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 9000 2200 50  0001 L CNN
	1    9000 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5C683292
P 8300 2200
F 0 "R40" V 8093 2200 50  0000 C CNN
F 1 "470R" V 8184 2200 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 8230 2200 50  0001 C CNN
F 3 "~" H 8300 2200 50  0001 C CNN
	1    8300 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 2200 8550 2200
$Comp
L Device:R R41
U 1 1 5C685592
P 8650 2500
F 0 "R41" V 8443 2500 50  0000 C CNN
F 1 "1k" V 8534 2500 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 8580 2500 50  0001 C CNN
F 3 "~" H 8650 2500 50  0001 C CNN
	1    8650 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2350 8650 2200
Connection ~ 8650 2200
Wire Wire Line
	8650 2200 8800 2200
Wire Wire Line
	8650 2650 8650 2800
Wire Wire Line
	8650 2800 9100 2800
$Comp
L power:GND #PWR0153
U 1 1 5C688E40
P 9100 3000
F 0 "#PWR0153" H 9100 2750 50  0001 C CNN
F 1 "GND" H 9105 2827 50  0000 C CNN
F 2 "" H 9100 3000 50  0001 C CNN
F 3 "" H 9100 3000 50  0001 C CNN
	1    9100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2400 9100 2650
Connection ~ 9100 2800
Wire Wire Line
	9100 2800 9100 3000
Wire Wire Line
	9100 2000 9100 1600
Wire Wire Line
	9100 1600 9400 1600
$Comp
L Device:R R42
U 1 1 5C68D41A
P 9550 1600
F 0 "R42" V 9343 1600 50  0000 C CNN
F 1 "470R" V 9434 1600 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 9480 1600 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 1600 9900 1600
Text HLabel 10100 1600 2    50   Input ~ 0
DOUT_O1
Wire Wire Line
	8150 2200 7900 2200
Text HLabel 7900 2200 0    50   Input ~ 0
DOUT_I1
Text Notes 8000 1300 0    50   ~ 0
MOSFETs/Transistors with ESD diodes built in?
$Comp
L Transistor_BJT:BC850 Q4
U 1 1 5C698851
P 13000 2150
F 0 "Q4" H 13191 2196 50  0000 L CNN
F 1 "BC850" H 13191 2105 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 13200 2075 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 13000 2150 50  0001 L CNN
	1    13000 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5C698858
P 13700 2150
F 0 "R45" V 13493 2150 50  0000 C CNN
F 1 "470R" V 13584 2150 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13630 2150 50  0001 C CNN
F 3 "~" H 13700 2150 50  0001 C CNN
	1    13700 2150
	0    -1   1    0   
$EndComp
Wire Wire Line
	13550 2150 13350 2150
$Comp
L Device:R R44
U 1 1 5C698860
P 13350 2450
F 0 "R44" V 13143 2450 50  0000 C CNN
F 1 "1k" V 13234 2450 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13280 2450 50  0001 C CNN
F 3 "~" H 13350 2450 50  0001 C CNN
	1    13350 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	13350 2300 13350 2150
Connection ~ 13350 2150
Wire Wire Line
	13350 2150 13200 2150
Wire Wire Line
	13350 2600 13350 2750
Wire Wire Line
	13350 2750 12900 2750
$Comp
L power:GND #PWR0154
U 1 1 5C69886C
P 12900 2950
F 0 "#PWR0154" H 12900 2700 50  0001 C CNN
F 1 "GND" H 12905 2777 50  0000 C CNN
F 2 "" H 12900 2950 50  0001 C CNN
F 3 "" H 12900 2950 50  0001 C CNN
	1    12900 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12900 2350 12900 2750
Connection ~ 12900 2750
Wire Wire Line
	12900 2750 12900 2950
Wire Wire Line
	12900 1950 12900 1550
Wire Wire Line
	12900 1550 12750 1550
$Comp
L Device:R R43
U 1 1 5C698877
P 12450 1550
F 0 "R43" V 12243 1550 50  0000 C CNN
F 1 "470R" V 12334 1550 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 12380 1550 50  0001 C CNN
F 3 "~" H 12450 1550 50  0001 C CNN
	1    12450 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	12300 1550 11900 1550
Text HLabel 11900 1550 0    50   Input ~ 0
DIN_O1
Wire Wire Line
	13850 2150 14000 2150
Text HLabel 14700 2150 2    50   Input ~ 0
DIN_I1
$Comp
L Device:D_TVS D19
U 1 1 5C6A2B4C
P 14000 2400
F 0 "D19" V 13954 2479 50  0000 L CNN
F 1 "SMAJ30A-TR" V 14045 2479 50  0000 L CNN
F 2 "liubenyuan/kicad-xeit/xeit.pretty:D_DO-214AA" H 14000 2400 50  0001 C CNN
F 3 "~" H 14000 2400 50  0001 C CNN
	1    14000 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R46
U 1 1 5C6A4635
P 14350 2150
F 0 "R46" V 14143 2150 50  0000 C CNN
F 1 "470R" V 14234 2150 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 14280 2150 50  0001 C CNN
F 3 "~" H 14350 2150 50  0001 C CNN
	1    14350 2150
	0    -1   1    0   
$EndComp
Wire Wire Line
	14500 2150 14700 2150
Wire Wire Line
	14000 2250 14000 2150
Connection ~ 14000 2150
Wire Wire Line
	14000 2150 14200 2150
Wire Wire Line
	14000 2550 14000 2750
Wire Wire Line
	14000 2750 13350 2750
Connection ~ 13350 2750
$Comp
L Device:D_TVS D18
U 1 1 5C6A8821
P 9900 2200
F 0 "D18" V 9854 2279 50  0000 L CNN
F 1 "SMAJ30A-TR" V 9945 2279 50  0000 L CNN
F 2 "liubenyuan/kicad-xeit/xeit.pretty:D_DO-214AA" H 9900 2200 50  0001 C CNN
F 3 "~" H 9900 2200 50  0001 C CNN
	1    9900 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 2050 9900 1600
Connection ~ 9900 1600
Wire Wire Line
	9900 1600 10100 1600
Wire Wire Line
	9900 2350 9900 2650
Wire Wire Line
	9900 2650 9100 2650
Connection ~ 9100 2650
Wire Wire Line
	9100 2650 9100 2800
$Comp
L Amplifier_Operational:ADA4807-2ARM U11
U 1 1 5D09EF0D
P 4200 8900
F 0 "U11" H 4200 9267 50  0000 C CNN
F 1 "ADA4807-2ARM" H 4200 9176 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:MSOP-8_3x3mm_P0.65mm" H 4200 8900 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 4200 8900 50  0001 C CNN
	1    4200 8900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:ADA4807-2ARM U11
U 3 1 5D0A0206
P 5000 7950
F 0 "U11" V 4675 7950 50  0000 C CNN
F 1 "ADA4807-2ARM" V 4766 7950 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:MSOP-8_3x3mm_P0.65mm" H 5000 7950 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 5000 7950 50  0001 C CNN
	3    5000 7950
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C21
U 1 1 5D0A020D
P 5000 7450
F 0 "C21" V 4771 7450 50  0000 C CNN
F 1 "100nF" V 4862 7450 50  0000 C CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 5000 7450 50  0001 C CNN
F 3 "~" H 5000 7450 50  0001 C CNN
	1    5000 7450
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5D0A0214
P 4600 7350
F 0 "#PWR06" H 4600 7200 50  0001 C CNN
F 1 "VCC" H 4617 7523 50  0000 C CNN
F 2 "" H 4600 7350 50  0001 C CNN
F 3 "" H 4600 7350 50  0001 C CNN
	1    4600 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D0A021A
P 5500 8000
F 0 "#PWR07" H 5500 7750 50  0001 C CNN
F 1 "GND" H 5505 7827 50  0000 C CNN
F 2 "" H 5500 8000 50  0001 C CNN
F 3 "" H 5500 8000 50  0001 C CNN
	1    5500 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7350 4600 7450
Wire Wire Line
	4600 7850 4700 7850
Wire Wire Line
	4900 7450 4600 7450
Connection ~ 4600 7450
Wire Wire Line
	4600 7450 4600 7850
Wire Wire Line
	5100 7450 5500 7450
Wire Wire Line
	5500 7450 5500 7850
Wire Wire Line
	5300 7850 5500 7850
Connection ~ 5500 7850
Wire Wire Line
	5500 7850 5500 8000
$Comp
L Amplifier_Operational:ADA4807-2ARM U11
U 2 1 5D0BB96D
P 3600 7550
F 0 "U11" H 3600 7917 50  0000 C CNN
F 1 "ADA4807-2ARM" H 3600 7826 50  0000 C CNN
F 2 "KiCad/Package_SO.pretty:MSOP-8_3x3mm_P0.65mm" H 3600 7550 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 3600 7550 50  0001 C CNN
	2    3600 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D0BC7FF
P 3650 9650
F 0 "R13" H 3580 9604 50  0000 R CNN
F 1 "50k" H 3580 9695 50  0000 R CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 3580 9650 50  0001 C CNN
F 3 "" H 3650 9650 50  0001 C CNN
F 4 "0.1%" H 3650 9650 50  0001 C CNN "Characteristics"
	1    3650 9650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5D0BCE03
P 4150 9400
F 0 "R14" V 3943 9400 50  0000 C CNN
F 1 "100k" V 4034 9400 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 4080 9400 50  0001 C CNN
F 3 "" H 4150 9400 50  0001 C CNN
F 4 "0.1%" H 4150 9400 50  0001 C CNN "Characteristics"
	1    4150 9400
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 9000 3650 9000
Wire Wire Line
	3650 9000 3650 9400
Wire Wire Line
	4000 9400 3900 9400
Connection ~ 3650 9400
Wire Wire Line
	3650 9400 3650 9500
Wire Wire Line
	4500 8900 4550 8900
Wire Wire Line
	4550 8900 4550 9400
Wire Wire Line
	4550 9400 4450 9400
Wire Wire Line
	3300 7450 3200 7450
Wire Wire Line
	3200 7450 3200 7650
Wire Wire Line
	3200 7650 3300 7650
$Comp
L power:GND #PWR01
U 1 1 5D0D31B3
P 3200 7900
F 0 "#PWR01" H 3200 7650 50  0001 C CNN
F 1 "GND" H 3205 7727 50  0000 C CNN
F 2 "" H 3200 7900 50  0001 C CNN
F 3 "" H 3200 7900 50  0001 C CNN
	1    3200 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7900 3200 7650
Connection ~ 3200 7650
NoConn ~ 3900 7550
$Comp
L power:GND #PWR02
U 1 1 5D0DF0E7
P 3650 10000
F 0 "#PWR02" H 3650 9750 50  0001 C CNN
F 1 "GND" H 3655 9827 50  0000 C CNN
F 2 "" H 3650 10000 50  0001 C CNN
F 3 "" H 3650 10000 50  0001 C CNN
	1    3650 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 9800 3650 10000
Text HLabel 2500 8800 0    50   Input ~ 0
AOUT_I1
Connection ~ 4550 8900
Text HLabel 5550 8900 2    50   Input ~ 0
AOUT_O1
$Comp
L Transistor_BJT:BC850 Q5
U 1 1 5D103BA3
P 9050 4800
F 0 "Q5" H 9241 4846 50  0000 L CNN
F 1 "BC850" H 9241 4755 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 9250 4725 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 9050 4800 50  0001 L CNN
	1    9050 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D103BAA
P 8350 4800
F 0 "R15" V 8143 4800 50  0000 C CNN
F 1 "470R" V 8234 4800 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 8280 4800 50  0001 C CNN
F 3 "~" H 8350 4800 50  0001 C CNN
	1    8350 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 4800 8700 4800
$Comp
L Device:R R16
U 1 1 5D103BB2
P 8700 5100
F 0 "R16" V 8493 5100 50  0000 C CNN
F 1 "1k" V 8584 5100 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 8630 5100 50  0001 C CNN
F 3 "~" H 8700 5100 50  0001 C CNN
	1    8700 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 4950 8700 4800
Connection ~ 8700 4800
Wire Wire Line
	8700 4800 8850 4800
Wire Wire Line
	8700 5250 8700 5400
Wire Wire Line
	8700 5400 9150 5400
$Comp
L power:GND #PWR08
U 1 1 5D103BBE
P 9150 5600
F 0 "#PWR08" H 9150 5350 50  0001 C CNN
F 1 "GND" H 9155 5427 50  0000 C CNN
F 2 "" H 9150 5600 50  0001 C CNN
F 3 "" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5000 9150 5250
Connection ~ 9150 5400
Wire Wire Line
	9150 5400 9150 5600
Wire Wire Line
	9150 4600 9150 4200
Wire Wire Line
	9150 4200 9450 4200
$Comp
L Device:R R49
U 1 1 5D103BC9
P 9600 4200
F 0 "R49" V 9393 4200 50  0000 C CNN
F 1 "470R" V 9484 4200 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 9530 4200 50  0001 C CNN
F 3 "~" H 9600 4200 50  0001 C CNN
	1    9600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 4200 9950 4200
Text HLabel 10150 4200 2    50   Input ~ 0
DOUT_O2
Wire Wire Line
	8200 4800 7950 4800
Text HLabel 7950 4800 0    50   Input ~ 0
DOUT_I2
Text Notes 8050 3900 0    50   ~ 0
MOSFETs/Transistors with ESD diodes built in?
$Comp
L Transistor_BJT:BC850 Q6
U 1 1 5D103BD5
P 13050 4750
F 0 "Q6" H 13241 4796 50  0000 L CNN
F 1 "BC850" H 13241 4705 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 13250 4675 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 13050 4750 50  0001 L CNN
	1    13050 4750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R52
U 1 1 5D103BDC
P 13750 4750
F 0 "R52" V 13543 4750 50  0000 C CNN
F 1 "470R" V 13634 4750 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13680 4750 50  0001 C CNN
F 3 "~" H 13750 4750 50  0001 C CNN
	1    13750 4750
	0    -1   1    0   
$EndComp
Wire Wire Line
	13600 4750 13400 4750
$Comp
L Device:R R51
U 1 1 5D103BE4
P 13400 5050
F 0 "R51" V 13193 5050 50  0000 C CNN
F 1 "1k" V 13284 5050 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 13330 5050 50  0001 C CNN
F 3 "~" H 13400 5050 50  0001 C CNN
	1    13400 5050
	1    0    0    1   
$EndComp
Wire Wire Line
	13400 4900 13400 4750
Connection ~ 13400 4750
Wire Wire Line
	13400 4750 13250 4750
Wire Wire Line
	13400 5200 13400 5350
Wire Wire Line
	13400 5350 12950 5350
$Comp
L power:GND #PWR09
U 1 1 5D103BF0
P 12950 5550
F 0 "#PWR09" H 12950 5300 50  0001 C CNN
F 1 "GND" H 12955 5377 50  0000 C CNN
F 2 "" H 12950 5550 50  0001 C CNN
F 3 "" H 12950 5550 50  0001 C CNN
	1    12950 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12950 4950 12950 5350
Connection ~ 12950 5350
Wire Wire Line
	12950 5350 12950 5550
Wire Wire Line
	12950 4550 12950 4150
Wire Wire Line
	12950 4150 12650 4150
$Comp
L Device:R R50
U 1 1 5D103BFB
P 12500 4150
F 0 "R50" V 12293 4150 50  0000 C CNN
F 1 "470R" V 12384 4150 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 12430 4150 50  0001 C CNN
F 3 "~" H 12500 4150 50  0001 C CNN
	1    12500 4150
	0    -1   1    0   
$EndComp
Wire Wire Line
	12350 4150 11950 4150
Text HLabel 11950 4150 0    50   Input ~ 0
DIN_O2
Wire Wire Line
	13900 4750 14050 4750
Text HLabel 14750 4750 2    50   Input ~ 0
DIN_I2
$Comp
L Device:D_TVS D21
U 1 1 5D103C06
P 14050 5000
F 0 "D21" V 14004 5079 50  0000 L CNN
F 1 "SMAJ30A-TR" V 14095 5079 50  0000 L CNN
F 2 "liubenyuan/kicad-xeit/xeit.pretty:D_DO-214AA" H 14050 5000 50  0001 C CNN
F 3 "~" H 14050 5000 50  0001 C CNN
	1    14050 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R53
U 1 1 5D103C0D
P 14400 4750
F 0 "R53" V 14193 4750 50  0000 C CNN
F 1 "470R" V 14284 4750 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 14330 4750 50  0001 C CNN
F 3 "~" H 14400 4750 50  0001 C CNN
	1    14400 4750
	0    -1   1    0   
$EndComp
Wire Wire Line
	14550 4750 14750 4750
Wire Wire Line
	14050 4850 14050 4750
Connection ~ 14050 4750
Wire Wire Line
	14050 4750 14250 4750
Wire Wire Line
	14050 5150 14050 5350
Wire Wire Line
	14050 5350 13400 5350
Connection ~ 13400 5350
$Comp
L Device:D_TVS D20
U 1 1 5D103C1B
P 9950 4800
F 0 "D20" V 9904 4879 50  0000 L CNN
F 1 "SMAJ30A-TR" V 9995 4879 50  0000 L CNN
F 2 "liubenyuan/kicad-xeit/xeit.pretty:D_DO-214AA" H 9950 4800 50  0001 C CNN
F 3 "~" H 9950 4800 50  0001 C CNN
	1    9950 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4650 9950 4200
Connection ~ 9950 4200
Wire Wire Line
	9950 4200 10150 4200
Wire Wire Line
	9950 4950 9950 5250
Wire Wire Line
	9950 5250 9150 5250
Connection ~ 9150 5250
Wire Wire Line
	9150 5250 9150 5400
$Comp
L Connector:TestPoint TP?
U 1 1 5D67A81A
P 4950 2800
AR Path="/5D67A81A" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5D67A81A" Ref="TP30"  Part="1" 
F 0 "TP30" H 5008 2874 50  0000 L CNN
F 1 "TestPoint" H 5008 2829 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 5150 2800 50  0001 C CNN
F 3 "~" H 5150 2800 50  0001 C CNN
	1    4950 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D67FA60
P 2700 8800
AR Path="/5D67FA60" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5D67FA60" Ref="TP29"  Part="1" 
F 0 "TP29" H 2758 8874 50  0000 L CNN
F 1 "TestPoint" H 2758 8829 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 2900 8800 50  0001 C CNN
F 3 "~" H 2900 8800 50  0001 C CNN
	1    2700 8800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D68450A
P 5350 8900
AR Path="/5D68450A" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5D68450A" Ref="TP31"  Part="1" 
F 0 "TP31" H 5408 8974 50  0000 L CNN
F 1 "TestPoint" H 5408 8929 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 5550 8900 50  0001 C CNN
F 3 "~" H 5550 8900 50  0001 C CNN
	1    5350 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D689B53
P 8550 2200
AR Path="/5D689B53" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5D689B53" Ref="TP32"  Part="1" 
F 0 "TP32" H 8608 2274 50  0000 L CNN
F 1 "TestPoint" H 8608 2229 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 8750 2200 50  0001 C CNN
F 3 "~" H 8750 2200 50  0001 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D68FDF6
P 12750 1550
AR Path="/5D68FDF6" Ref="TP?"  Part="1" 
AR Path="/5C67462C/5D68FDF6" Ref="TP33"  Part="1" 
F 0 "TP33" H 12808 1624 50  0000 L CNN
F 1 "TestPoint" H 12808 1579 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 12950 1550 50  0001 C CNN
F 3 "~" H 12950 1550 50  0001 C CNN
	1    12750 1550
	1    0    0    -1  
$EndComp
Connection ~ 8550 2200
Wire Wire Line
	8550 2200 8650 2200
Connection ~ 12750 1550
Wire Wire Line
	12750 1550 12600 1550
Connection ~ 4950 2800
Wire Wire Line
	4950 2800 5300 2800
Wire Wire Line
	2700 8800 2500 8800
Connection ~ 5350 8900
Wire Wire Line
	5350 8900 5550 8900
$Comp
L Device:D_TVS D24
U 1 1 5D6CC0C0
P 5200 9300
F 0 "D24" V 5154 9379 50  0000 L CNN
F 1 "SMAJ12A-TR" V 5245 9379 50  0000 L CNN
F 2 "KiCad/Diode_SMD.pretty:D_SOD-123" H 5200 9300 50  0001 C CNN
F 3 "~" H 5200 9300 50  0001 C CNN
	1    5200 9300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5D6CD7B4
P 5200 10000
F 0 "#PWR020" H 5200 9750 50  0001 C CNN
F 1 "GND" H 5205 9827 50  0000 C CNN
F 2 "" H 5200 10000 50  0001 C CNN
F 3 "" H 5200 10000 50  0001 C CNN
	1    5200 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 8900 5200 8900
Wire Wire Line
	5200 9150 5200 8900
Connection ~ 5200 8900
Wire Wire Line
	5200 8900 5350 8900
Wire Wire Line
	5200 10000 5200 9450
$Comp
L Device:C_Small C22
U 1 1 5C950FAF
P 3300 9250
F 0 "C22" H 3392 9296 50  0000 L CNN
F 1 "470pF" H 3392 9205 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 3300 9250 50  0001 C CNN
F 3 "~" H 3300 9250 50  0001 C CNN
	1    3300 9250
	1    0    0    -1  
$EndComp
Connection ~ 2700 8800
Wire Wire Line
	2700 8800 2900 8800
$Comp
L Device:R R65
U 1 1 5C957F19
P 3050 8800
F 0 "R65" V 2843 8800 50  0000 C CNN
F 1 "1k" V 2934 8800 50  0000 C CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" V 2980 8800 50  0001 C CNN
F 3 "~" H 3050 8800 50  0001 C CNN
F 4 "0.1%" H 3050 8800 50  0001 C CNN "Characteristics"
	1    3050 8800
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 8800 3300 8800
Wire Wire Line
	3300 9150 3300 8800
Connection ~ 3300 8800
Wire Wire Line
	3300 8800 3900 8800
$Comp
L power:GND #PWR022
U 1 1 5C986C3F
P 3300 10000
F 0 "#PWR022" H 3300 9750 50  0001 C CNN
F 1 "GND" H 3305 9827 50  0000 C CNN
F 2 "" H 3300 10000 50  0001 C CNN
F 3 "" H 3300 10000 50  0001 C CNN
	1    3300 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 9350 3300 10000
$Comp
L Device:C_Small C23
U 1 1 5C98FE1F
P 4150 9700
F 0 "C23" H 4242 9746 50  0000 L CNN
F 1 "10pF" H 4242 9655 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:C_0603_1608Metric" H 4150 9700 50  0001 C CNN
F 3 "~" H 4150 9700 50  0001 C CNN
	1    4150 9700
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 9700 3900 9700
Wire Wire Line
	3900 9700 3900 9400
Connection ~ 3900 9400
Wire Wire Line
	3900 9400 3650 9400
Wire Wire Line
	4250 9700 4450 9700
Wire Wire Line
	4450 9700 4450 9400
Connection ~ 4450 9400
Wire Wire Line
	4450 9400 4300 9400
Text Notes 3250 6750 0    50   ~ 0
0-10 V output to 0-3.3 V for uC DAC. G = 3 ((100 / 50) + 1)
$Comp
L Diode:BAV99 D17
U 1 1 5C914FDF
P 3350 2150
F 0 "D17" H 3350 1925 50  0000 C CNN
F 1 "BAV99" H 3350 2016 50  0000 C CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 3350 2000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 3350 2250 50  0001 C CNN
	1    3350 2150
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAV99 D16
U 1 1 5C8F8B33
P 3400 4150
F 0 "D16" H 3400 3925 50  0000 C CNN
F 1 "BAV99" H 3400 4016 50  0000 C CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 3400 4000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 3400 4250 50  0001 C CNN
	1    3400 4150
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAV99 D17
U 2 1 5C8F9AE0
P 3650 2150
F 0 "D17" H 3650 1925 50  0000 C CNN
F 1 "BAV99" H 3650 2016 50  0000 C CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 3650 2000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 3650 2250 50  0001 C CNN
	2    3650 2150
	1    0    0    -1  
$EndComp
Connection ~ 3500 2150
$Comp
L Diode:BAV99 D16
U 2 1 5C93469F
P 3700 4150
F 0 "D16" H 3700 3925 50  0000 C CNN
F 1 "BAV99" H 3700 4016 50  0000 C CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 3700 4000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 3700 4250 50  0001 C CNN
	2    3700 4150
	1    0    0    -1  
$EndComp
Connection ~ 3550 4150
Wire Wire Line
	1400 2700 2000 2700
$EndSCHEMATC
