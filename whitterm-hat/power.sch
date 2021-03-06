EESchema Schematic File Version 4
LIBS:whitterm-hat-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 5
Title "WT-220 Power Supplies"
Date ""
Rev ""
Comp "JBR Engineering Research Ltd"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:MCP1703A-3302_SOT23 U7
U 1 1 5AB155FD
P 7450 4050
F 0 "U7" H 7300 4175 50  0000 C CNN
F 1 "MCP1703A-3302_SOT23" H 7450 4175 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 7450 4250 50  0001 C CNN
F 3 "" H 7450 4000 50  0001 C CNN
F 4 "Microchip" H 7450 4050 60  0001 C CNN "MFN"
F 5 "MCP1703A-3302" H 7450 4050 60  0001 C CNN "MFP"
F 6 "3.3 V LDO" H 7450 4050 60  0001 C CNN "Description"
	1    7450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4050 6050 4050
$Comp
L power:GND #PWR0131
U 1 1 5AB158E6
P 7450 4750
F 0 "#PWR0131" H 7450 4500 50  0001 C CNN
F 1 "GND" H 7450 4600 50  0000 C CNN
F 2 "" H 7450 4750 50  0001 C CNN
F 3 "" H 7450 4750 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4350 7450 4750
$Comp
L Device:CP1_Small C16
U 1 1 5AB15A7E
P 6400 4300
F 0 "C16" H 6410 4370 50  0000 L CNN
F 1 "10uF" H 6410 4220 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:CP_Elec_4x5.3" H 6400 4300 50  0001 C CNN
F 3 "" H 6400 4300 50  0001 C CNN
F 4 "Panasonic" H 6400 4300 60  0001 C CNN "MFN"
F 5 "EEEFC1C100R" H 6400 4300 60  0001 C CNN "MFP"
	1    6400 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5AB15D15
P 6400 4750
F 0 "#PWR0132" H 6400 4500 50  0001 C CNN
F 1 "GND" H 6400 4600 50  0000 C CNN
F 2 "" H 6400 4750 50  0001 C CNN
F 3 "" H 6400 4750 50  0001 C CNN
	1    6400 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4400 6400 4750
Wire Wire Line
	6400 4200 6400 4050
Connection ~ 6400 4050
$Comp
L Device:CP1_Small C17
U 1 1 5AB16058
P 8200 4300
F 0 "C17" H 8210 4370 50  0000 L CNN
F 1 "10uF" H 8210 4220 50  0000 L CNN
F 2 "KiCad/Capacitor_SMD.pretty:CP_Elec_4x5.3" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
F 4 "Panasonic" H 8200 4300 60  0001 C CNN "MFN"
F 5 "EEEFC1C100R" H 8200 4300 60  0001 C CNN "MFP"
	1    8200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4050 8200 4050
Wire Wire Line
	8200 4050 8200 4200
$Comp
L power:GND #PWR0133
U 1 1 5AB16149
P 8200 4750
F 0 "#PWR0133" H 8200 4500 50  0001 C CNN
F 1 "GND" H 8200 4600 50  0000 C CNN
F 2 "" H 8200 4750 50  0001 C CNN
F 3 "" H 8200 4750 50  0001 C CNN
	1    8200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4400 8200 4750
$Comp
L power:VCC #PWR0134
U 1 1 5AB164A8
P 9000 3300
F 0 "#PWR0134" H 9000 3150 50  0001 C CNN
F 1 "VCC" H 9000 3450 50  0000 C CNN
F 2 "" H 9000 3300 50  0001 C CNN
F 3 "" H 9000 3300 50  0001 C CNN
	1    9000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D22
U 1 1 5AB185A2
P 11950 3650
F 0 "D22" H 11950 3750 50  0000 C CNN
F 1 "KP-2012MGC" H 11950 3550 50  0000 C CNN
F 2 "KiCad/LED_SMD.pretty:LED_0603_1608Metric" H 11950 3650 50  0001 C CNN
F 3 "" H 11950 3650 50  0001 C CNN
F 4 "Kingbright" H 11950 3650 60  0001 C CNN "MFN"
F 5 "KP-2012MGC" H 11950 3650 60  0001 C CNN "MFP"
F 6 "KP-2012MGC Green LED, 570 nm 2012 (0805), Rectangle Lens SMD package" H 11950 3650 60  0001 C CNN "Description"
	1    11950 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0135
U 1 1 5AB186C7
P 11950 3400
F 0 "#PWR0135" H 11950 3250 50  0001 C CNN
F 1 "VCC" H 11950 3550 50  0000 C CNN
F 2 "" H 11950 3400 50  0001 C CNN
F 3 "" H 11950 3400 50  0001 C CNN
	1    11950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R33
U 1 1 5AB18762
P 11950 4000
F 0 "R33" H 11980 4020 50  0000 L CNN
F 1 "150R" H 11980 3960 50  0000 L CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" H 11950 4000 50  0001 C CNN
F 3 "" H 11950 4000 50  0001 C CNN
	1    11950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 3400 11950 3500
Wire Wire Line
	11950 3800 11950 3900
$Comp
L power:GND #PWR0136
U 1 1 5AB189B3
P 11950 4200
F 0 "#PWR0136" H 11950 3950 50  0001 C CNN
F 1 "GND" H 11950 4050 50  0000 C CNN
F 2 "" H 11950 4200 50  0001 C CNN
F 3 "" H 11950 4200 50  0001 C CNN
	1    11950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 4100 11950 4200
$Comp
L Transistor_FET:TP0610T Q1
U 1 1 5AB2456D
P 5600 4150
F 0 "Q1" H 5800 4225 50  0000 L CNN
F 1 "IRLML6402PBF" H 5800 4150 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 5800 4075 50  0001 L CIN
F 3 "" H 5600 4150 50  0001 L CNN
F 4 "Infineon" H 5600 4150 60  0001 C CNN "MFN"
F 5 "IRLML6402PBF" H 5600 4150 60  0001 C CNN "MFP"
F 6 "Single P-Channel 20 V 1.3 W 8.0 nC Hexfet Power Mosfet Surface Mount - SOT-23" H 5600 4150 60  0001 C CNN "Description"
	1    5600 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R20
U 1 1 5AB24B72
P 5600 4550
F 0 "R20" H 5630 4570 50  0000 L CNN
F 1 "10k" H 5630 4510 50  0000 L CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" H 5600 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5AB24DD7
P 5600 4750
F 0 "#PWR0137" H 5600 4500 50  0001 C CNN
F 1 "GND" H 5600 4600 50  0000 C CNN
F 2 "" H 5600 4750 50  0001 C CNN
F 3 "" H 5600 4750 50  0001 C CNN
	1    5600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4650 5600 4750
$Comp
L Device:D_Zener_Small D12
U 1 1 5AB254E4
P 6050 4250
F 0 "D12" H 6050 4340 50  0000 C CNN
F 1 "MMSZ16T1G" V 6300 4250 50  0000 C CNN
F 2 "KiCad/Diode_SMD.pretty:D_SOD-123" V 6050 4250 50  0001 C CNN
F 3 "" V 6050 4250 50  0001 C CNN
F 4 "ON Semiconductor" H 6050 4250 60  0001 C CNN "MFN"
F 5 "MMSZ16T1G" H 6050 4250 60  0001 C CNN "MFP"
F 6 "MMSZ16T1 Series 500 mW 10 mA 16 V SMT Zener Voltage Regulator - SOD-123" H 6050 4250 60  0001 C CNN "Description"
	1    6050 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4150 6050 4050
Connection ~ 6050 4050
Wire Wire Line
	6050 4350 6050 4400
Wire Wire Line
	6050 4400 5600 4400
Wire Wire Line
	5600 4350 5600 4400
Connection ~ 5600 4400
Wire Wire Line
	6050 4050 6250 4050
Wire Wire Line
	5600 4400 5600 4450
$Comp
L Device:Ferrite_Bead_Small L2
U 1 1 5C67C2FE
P 4800 4050
F 0 "L2" V 4563 4050 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4654 4050 50  0000 C CNN
F 2 "KiCad/Inductor_SMD.pretty:L_0805_2012Metric" V 4730 4050 50  0001 C CNN
F 3 "~" H 4800 4050 50  0001 C CNN
F 4 "MH2029-300Y" H 4800 4050 50  0001 C CNN "MFP"
	1    4800 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 4050 5200 4050
$Comp
L power:VBUS #PWR0138
U 1 1 5C67D1ED
P 4400 3300
F 0 "#PWR0138" H 4400 3150 50  0001 C CNN
F 1 "VBUS" H 4415 3473 50  0000 C CNN
F 2 "" H 4400 3300 50  0001 C CNN
F 3 "" H 4400 3300 50  0001 C CNN
	1    4400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3300 4400 3450
Wire Wire Line
	4400 4050 4700 4050
Wire Wire Line
	6250 3300 6250 3450
Connection ~ 6250 4050
Wire Wire Line
	6250 4050 6400 4050
$Comp
L power:+5V #PWR0139
U 1 1 5C67FFD5
P 6250 3300
F 0 "#PWR0139" H 6250 3150 50  0001 C CNN
F 1 "+5V" H 6250 3450 50  0000 C CNN
F 2 "" H 6250 3300 50  0001 C CNN
F 3 "" H 6250 3300 50  0001 C CNN
	1    6250 3300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP10
U 1 1 5C68102A
P 9000 4050
F 0 "JP10" H 9000 4163 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 9000 4254 50  0000 C CNN
F 2 "KiCad/Jumper.pretty:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 9000 4050 50  0001 C CNN
F 3 "~" H 9000 4050 50  0001 C CNN
F 4 "DNF" H 9000 4050 50  0001 C CNN "Notes"
F 5 "Allow 3V3 rail from Pi by cutting bridge and soldering link. NEVER solder link without cut track as it will back-power Pi 3V3 rail" H 9000 5250 50  0000 C CNN "Description"
	1    9000 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	8200 4050 8550 4050
Connection ~ 8200 4050
Wire Wire Line
	9000 3300 9000 3450
Text HLabel 9550 4050 2    50   UnSpc ~ 0
PI_3V3
Wire Wire Line
	9200 4050 9550 4050
$Comp
L Transistor_FET:TP0610T Q2
U 1 1 5C66FF70
P 7350 6750
F 0 "Q2" H 7550 6825 50  0000 L CNN
F 1 "IRLML6402PBF" H 7550 6750 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 7550 6675 50  0001 L CIN
F 3 "" H 7350 6750 50  0001 L CNN
F 4 "Infineon" H 7350 6750 60  0001 C CNN "MFN"
F 5 "IRLML6402PBF" H 7350 6750 60  0001 C CNN "MFP"
F 6 "Single P-Channel 20 V 1.3 W 8.0 nC Hexfet Power Mosfet Surface Mount - SOT-23" H 7350 6750 60  0001 C CNN "Description"
	1    7350 6750
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR0140
U 1 1 5C670F40
P 6700 6300
F 0 "#PWR0140" H 6700 6150 50  0001 C CNN
F 1 "+5V" H 6700 6450 50  0000 C CNN
F 2 "" H 6700 6300 50  0001 C CNN
F 3 "" H 6700 6300 50  0001 C CNN
	1    6700 6300
	1    0    0    -1  
$EndComp
Text HLabel 8100 6650 2    50   UnSpc ~ 0
PI_5V
Text HLabel 8450 7550 2    50   Input ~ 0
PI_EN
Wire Wire Line
	6700 6650 7150 6650
Wire Wire Line
	7550 6650 7900 6650
$Comp
L Device:R_Small R30
U 1 1 5C672C21
P 6700 6950
F 0 "R30" H 6730 6970 50  0000 L CNN
F 1 "10k" H 6730 6910 50  0000 L CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" H 6700 6950 50  0001 C CNN
F 3 "" H 6700 6950 50  0001 C CNN
	1    6700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 6650 6700 6850
Connection ~ 6700 6650
Wire Wire Line
	6700 7050 6700 7250
Wire Wire Line
	8200 7550 8450 7550
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 5C67EBAB
P 7750 6400
AR Path="/5C67EBAB" Ref="JP?"  Part="1" 
AR Path="/5C65C880/5C67EBAB" Ref="JP9"  Part="1" 
F 0 "JP9" H 7750 6493 50  0000 C CNN
F 1 "Jumper_NO_Small" H 7750 6494 50  0001 C CNN
F 2 "KiCad/Jumper.pretty:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7750 6400 50  0001 C CNN
F 3 "~" H 7750 6400 50  0001 C CNN
	1    7750 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 6400 6700 6400
Wire Wire Line
	6700 6300 6700 6400
Connection ~ 6700 6400
Wire Wire Line
	6700 6400 6700 6650
Wire Wire Line
	7850 6400 7900 6400
Wire Wire Line
	7900 6400 7900 6650
Connection ~ 7900 6650
Wire Wire Line
	7900 6650 8100 6650
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C9FBC00
P 4750 3300
F 0 "#FLG0102" H 4750 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 4750 3474 50  0000 C CNN
F 2 "" H 4750 3300 50  0001 C CNN
F 3 "~" H 4750 3300 50  0001 C CNN
	1    4750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3300 4750 3450
Wire Wire Line
	4750 3450 4400 3450
Connection ~ 4400 3450
Wire Wire Line
	4400 3450 4400 4050
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5C9FC653
P 6600 3300
F 0 "#FLG0103" H 6600 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 3474 50  0000 C CNN
F 2 "" H 6600 3300 50  0001 C CNN
F 3 "~" H 6600 3300 50  0001 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3300 6600 3450
Wire Wire Line
	6600 3450 6250 3450
Connection ~ 6250 3450
Wire Wire Line
	6250 3450 6250 4050
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5C9FDD05
P 9400 3300
F 0 "#FLG0104" H 9400 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 3474 50  0000 C CNN
F 2 "" H 9400 3300 50  0001 C CNN
F 3 "~" H 9400 3300 50  0001 C CNN
	1    9400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3300 9400 3450
Wire Wire Line
	9400 3450 9000 3450
Connection ~ 9000 3450
Wire Wire Line
	9000 3450 9000 3900
Wire Wire Line
	11000 6600 11250 6600
$Comp
L Transistor_FET:TP0610T Q9
U 1 1 5D3E343D
P 10800 6700
F 0 "Q9" H 11000 6775 50  0000 L CNN
F 1 "IRLML6402PBF" H 11000 6700 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 11000 6625 50  0001 L CIN
F 3 "" H 10800 6700 50  0001 L CNN
F 4 "Infineon" H 10800 6700 60  0001 C CNN "MFN"
F 5 "IRLML6402PBF" H 10800 6700 60  0001 C CNN "MFP"
F 6 "Single P-Channel 20 V 1.3 W 8.0 nC Hexfet Power Mosfet Surface Mount - SOT-23" H 10800 6700 60  0001 C CNN "Description"
	1    10800 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R32
U 1 1 5D3E3444
P 10800 7100
F 0 "R32" H 10830 7120 50  0000 L CNN
F 1 "10k" H 10830 7060 50  0000 L CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" H 10800 7100 50  0001 C CNN
F 3 "" H 10800 7100 50  0001 C CNN
	1    10800 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5D3E344B
P 10800 7300
F 0 "#PWR017" H 10800 7050 50  0001 C CNN
F 1 "GND" H 10800 7150 50  0000 C CNN
F 2 "" H 10800 7300 50  0001 C CNN
F 3 "" H 10800 7300 50  0001 C CNN
	1    10800 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 7200 10800 7300
$Comp
L Device:D_Zener_Small D13
U 1 1 5D3E3455
P 11250 6800
F 0 "D13" H 11250 6890 50  0000 C CNN
F 1 "MMSZ16T1G" V 11500 6800 50  0000 C CNN
F 2 "KiCad/Diode_SMD.pretty:D_SOD-123" V 11250 6800 50  0001 C CNN
F 3 "" V 11250 6800 50  0001 C CNN
F 4 "ON Semiconductor" H 11250 6800 60  0001 C CNN "MFN"
F 5 "MMSZ16T1G" H 11250 6800 60  0001 C CNN "MFP"
F 6 "MMSZ16T1 Series 500 mW 10 mA 16 V SMT Zener Voltage Regulator - SOD-123" H 11250 6800 60  0001 C CNN "Description"
	1    11250 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	11250 6700 11250 6600
Connection ~ 11250 6600
Wire Wire Line
	11250 6900 11250 6950
Wire Wire Line
	11250 6950 10800 6950
Wire Wire Line
	10800 6900 10800 6950
Connection ~ 10800 6950
Wire Wire Line
	11250 6600 11450 6600
Wire Wire Line
	10800 6950 10800 7000
Wire Wire Line
	10100 6600 10600 6600
$Comp
L power:+5V #PWR016
U 1 1 5D3E55D0
P 10100 6300
F 0 "#PWR016" H 10100 6150 50  0001 C CNN
F 1 "+5V" H 10100 6450 50  0000 C CNN
F 2 "" H 10100 6300 50  0001 C CNN
F 3 "" H 10100 6300 50  0001 C CNN
	1    10100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6300 10100 6350
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 5D3E793F
P 11100 6350
AR Path="/5D3E793F" Ref="JP?"  Part="1" 
AR Path="/5C65C880/5D3E793F" Ref="JP13"  Part="1" 
F 0 "JP13" H 11100 6443 50  0000 C CNN
F 1 "Jumper_NO_Small" H 11100 6444 50  0001 C CNN
F 2 "KiCad/Jumper.pretty:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 11100 6350 50  0001 C CNN
F 3 "~" H 11100 6350 50  0001 C CNN
	1    11100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6350 10100 6350
Connection ~ 10100 6350
Wire Wire Line
	10100 6350 10100 6600
Wire Wire Line
	11200 6350 11450 6350
Wire Wire Line
	11450 6350 11450 6600
Wire Wire Line
	11450 6600 11800 6600
Connection ~ 11450 6600
Text HLabel 11800 6600 2    50   UnSpc ~ 0
EXT_5VO
Wire Wire Line
	6400 4050 6600 4050
$Comp
L Connector:TestPoint TP?
U 1 1 5D61C0D3
P 8550 4050
AR Path="/5D61C0D3" Ref="TP?"  Part="1" 
AR Path="/5C65C880/5D61C0D3" Ref="TP27"  Part="1" 
F 0 "TP27" H 8608 4124 50  0000 L CNN
F 1 "TestPoint" H 8608 4079 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 8750 4050 50  0001 C CNN
F 3 "~" H 8750 4050 50  0001 C CNN
	1    8550 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D61DAC5
P 5200 4050
AR Path="/5D61DAC5" Ref="TP?"  Part="1" 
AR Path="/5C65C880/5D61DAC5" Ref="TP25"  Part="1" 
F 0 "TP25" H 5258 4124 50  0000 L CNN
F 1 "TestPoint" H 5258 4079 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 5400 4050 50  0001 C CNN
F 3 "~" H 5400 4050 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D61EF1D
P 6600 4050
AR Path="/5D61EF1D" Ref="TP?"  Part="1" 
AR Path="/5C65C880/5D61EF1D" Ref="TP26"  Part="1" 
F 0 "TP26" H 6658 4124 50  0000 L CNN
F 1 "TestPoint" H 6658 4079 50  0001 L CNN
F 2 "KiCad/TestPoint.pretty:TestPoint_Pad_D1.5mm" H 6800 4050 50  0001 C CNN
F 3 "~" H 6800 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
Connection ~ 5200 4050
Wire Wire Line
	5200 4050 5400 4050
Connection ~ 6600 4050
Connection ~ 8550 4050
Wire Wire Line
	8550 4050 8800 4050
Wire Wire Line
	6600 4050 7150 4050
$Comp
L Device:LED D23
U 1 1 5CA2321A
P 5600 6550
F 0 "D23" H 5600 6650 50  0000 C CNN
F 1 "KP-2012MGC" H 5600 6450 50  0000 C CNN
F 2 "KiCad/LED_SMD.pretty:LED_0603_1608Metric" H 5600 6550 50  0001 C CNN
F 3 "" H 5600 6550 50  0001 C CNN
F 4 "Kingbright" H 5600 6550 60  0001 C CNN "MFN"
F 5 "KP-2012MGC" H 5600 6550 60  0001 C CNN "MFP"
F 6 "KP-2012MGC Green LED, 570 nm 2012 (0805), Rectangle Lens SMD package" H 5600 6550 60  0001 C CNN "Description"
	1    5600 6550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R58
U 1 1 5CA23226
P 5600 6900
F 0 "R58" H 5630 6920 50  0000 L CNN
F 1 "220R" H 5630 6860 50  0000 L CNN
F 2 "KiCad/Resistor_SMD.pretty:R_0603_1608Metric" H 5600 6900 50  0001 C CNN
F 3 "" H 5600 6900 50  0001 C CNN
	1    5600 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6300 5600 6400
Wire Wire Line
	5600 6700 5600 6800
$Comp
L power:GND #PWR018
U 1 1 5CA2322E
P 5600 7100
F 0 "#PWR018" H 5600 6850 50  0001 C CNN
F 1 "GND" H 5600 6950 50  0000 C CNN
F 2 "" H 5600 7100 50  0001 C CNN
F 3 "" H 5600 7100 50  0001 C CNN
	1    5600 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7000 5600 7100
Text HLabel 5600 6300 1    50   UnSpc ~ 0
PI_5V
$Comp
L power:GND #PWR0161
U 1 1 5D00BC51
P 7900 7850
F 0 "#PWR0161" H 7900 7600 50  0001 C CNN
F 1 "GND" H 7900 7700 50  0000 C CNN
F 2 "" H 7900 7850 50  0001 C CNN
F 3 "" H 7900 7850 50  0001 C CNN
	1    7900 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 7750 7900 7850
$Comp
L Transistor_BJT:BC850 Q?
U 1 1 5CFFBA8C
P 8000 7550
AR Path="/5C67462C/5CFFBA8C" Ref="Q?"  Part="1" 
AR Path="/5C65C880/5CFFBA8C" Ref="Q12"  Part="1" 
F 0 "Q12" H 8191 7596 50  0000 L CNN
F 1 "BC850" H 8191 7505 50  0000 L CNN
F 2 "KiCad/Package_TO_SOT_SMD.pretty:SOT-23" H 8200 7475 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 8000 7550 50  0001 L CNN
	1    8000 7550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6700 7250 7350 7250
Wire Wire Line
	7900 7250 7900 7350
Wire Wire Line
	7350 6950 7350 7250
Connection ~ 7350 7250
Wire Wire Line
	7350 7250 7900 7250
$EndSCHEMATC
