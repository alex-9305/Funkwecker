EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Funkwecker"
Date "2021-12-21"
Rev "0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L funkwecker-rescue:MCP1700T-3302E_TT-dk_PMIC-Voltage-Regulators-Linear U1
U 1 1 61A9195E
P 1875 1200
F 0 "U1" H 1875 1487 60  0000 C CNN
F 1 "MCP1702-3302" H 1875 1381 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92" H 2075 1400 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en011779" H 2075 1500 60  0001 L CNN
F 4 "MCP1700T3302ETTCT-ND" H 2075 1600 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP1700T-3302E/TT" H 2075 1700 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2075 1800 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 2075 1900 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en011779" H 2075 2000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP1700T-3302E-TT/MCP1700T3302ETTCT-ND/652677" H 2075 2100 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 250MA SOT23-3" H 2075 2200 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 2075 2300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2075 2400 60  0001 L CNN "Status"
	1    1875 1200
	1    0    0    -1  
$EndComp
Wire Notes Line
	625  700  625  7650
Wire Notes Line
	625  7650 2875 7650
Wire Notes Line
	2875 7650 2875 700 
Wire Notes Line
	2875 700  625  700 
Text Notes 650  950  0    50   ~ 0
Versorgung\nInput 9V-Block\n\n
$Comp
L funkwecker-rescue:Battery_Cell-Device BT1
U 1 1 61A99C42
P 900 4225
F 0 "BT1" H 1018 4321 50  0000 L CNN
F 1 "9VBlock" H 1018 4230 50  0000 L CNN
F 2 "Battery:BatteryHolder_MPD_BA9VPC_1xPP3" V 900 4285 50  0001 C CNN
F 3 "~" V 900 4285 50  0001 C CNN
	1    900  4225
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:C_Small-Device C1
U 1 1 61A9DC0D
P 1275 1400
F 0 "C1" H 1367 1446 50  0000 L CNN
F 1 "1µF" H 1367 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 1275 1400 50  0001 C CNN
F 3 "~" H 1275 1400 50  0001 C CNN
	1    1275 1400
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:C_Small-Device C2
U 1 1 61A9DF98
P 2300 1400
F 0 "C2" H 2392 1446 50  0000 L CNN
F 1 "1µF" H 2392 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 2300 1400 50  0001 C CNN
F 3 "~" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 1200 1275 1200
Wire Wire Line
	1275 1200 1275 1300
$Comp
L funkwecker-rescue:GND-power #PWR0101
U 1 1 61A9FD54
P 1875 1700
F 0 "#PWR0101" H 1875 1450 50  0001 C CNN
F 1 "GND" H 1880 1527 50  0000 C CNN
F 2 "" H 1875 1700 50  0001 C CNN
F 3 "" H 1875 1700 50  0001 C CNN
	1    1875 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 1500 1275 1700
Wire Wire Line
	1275 1700 1875 1700
Wire Wire Line
	1875 1500 1875 1700
Connection ~ 1875 1700
Wire Wire Line
	2175 1200 2300 1200
Wire Wire Line
	2300 1200 2300 1300
Wire Wire Line
	2300 1500 2300 1700
Wire Wire Line
	2300 1700 1875 1700
$Comp
L funkwecker-rescue:VCC-power #PWR0104
U 1 1 61AA832C
P 900 3375
F 0 "#PWR0104" H 900 3225 50  0001 C CNN
F 1 "VCC" H 915 3548 50  0000 C CNN
F 2 "" H 900 3375 50  0001 C CNN
F 3 "" H 900 3375 50  0001 C CNN
	1    900  3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 1200 2300 1200
Connection ~ 2300 1200
Wire Wire Line
	3475 1250 3300 1250
Connection ~ 3475 1250
Wire Wire Line
	3475 1250 3475 975 
Wire Wire Line
	3625 1250 3475 1250
Connection ~ 3475 1650
Wire Wire Line
	3300 1650 3475 1650
Wire Wire Line
	3625 1650 3475 1650
Wire Wire Line
	3625 1450 3625 1650
$Comp
L funkwecker-rescue:VSS-power #PWR02
U 1 1 61AB3416
P 3475 1650
F 0 "#PWR02" H 3475 1500 50  0001 C CNN
F 1 "VSS" V 3490 1778 50  0000 L CNN
F 2 "" H 3475 1650 50  0001 C CNN
F 3 "" H 3475 1650 50  0001 C CNN
	1    3475 1650
	-1   0    0    1   
$EndComp
Text Notes 3500 1200 0    50   ~ 0
AN3029 S.7\n
Wire Wire Line
	3300 1450 3300 1650
$Comp
L funkwecker-rescue:C_Small-Device C3
U 1 1 61AB07FD
P 3300 1350
F 0 "C3" V 3525 1350 50  0000 C CNN
F 1 "100nF" V 3425 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 3300 1350 50  0001 C CNN
F 3 "~" H 3300 1350 50  0001 C CNN
	1    3300 1350
	-1   0    0    1   
$EndComp
$Comp
L funkwecker-rescue:VDD-power #PWR01
U 1 1 61ABC6A4
P 3475 975
F 0 "#PWR01" H 3475 825 50  0001 C CNN
F 1 "VDD" H 3490 1148 50  0000 C CNN
F 2 "" H 3475 975 50  0001 C CNN
F 3 "" H 3475 975 50  0001 C CNN
	1    3475 975 
	1    0    0    -1  
$EndComp
Connection ~ 1275 1200
Wire Wire Line
	925  1200 1275 1200
$Comp
L funkwecker-rescue:GND-power #PWR0103
U 1 1 61AA7E61
P 900 4400
F 0 "#PWR0103" H 900 4150 50  0001 C CNN
F 1 "GND" H 905 4227 50  0000 C CNN
F 2 "" H 900 4400 50  0001 C CNN
F 3 "" H 900 4400 50  0001 C CNN
	1    900  4400
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:Conn_01x03_Female-Connector J1
U 1 1 61B1CB77
P 4075 6775
F 0 "J1" V 4013 6587 50  0000 R CNN
F 1 "DCF77-Connector" V 3922 6587 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4075 6775 50  0001 C CNN
F 3 "~" H 4075 6775 50  0001 C CNN
	1    4075 6775
	0    -1   -1   0   
$EndComp
Wire Notes Line
	6250 7650 6250 6500
Wire Notes Line
	6250 6500 3025 6500
Wire Notes Line
	3025 6500 3025 7650
Wire Notes Line
	3025 7650 6250 7650
Text Notes 3050 6625 0    50   ~ 0
Connector für das DCF-Modul\n
$Comp
L funkwecker-rescue:GND-power #PWR04
U 1 1 61B28324
P 4175 6975
F 0 "#PWR04" H 4175 6725 50  0001 C CNN
F 1 "GND" H 4180 6802 50  0000 C CNN
F 2 "" H 4175 6975 50  0001 C CNN
F 3 "" H 4175 6975 50  0001 C CNN
	1    4175 6975
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:R_Small-Device R1
U 1 1 61B29CFC
P 4075 7325
F 0 "R1" H 4134 7371 50  0000 L CNN
F 1 "100k" H 4134 7280 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 4075 7325 50  0001 C CNN
F 3 "~" H 4075 7325 50  0001 C CNN
	1    4075 7325
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:VDD-power #PWR05
U 1 1 61B2A9FA
P 4075 7425
F 0 "#PWR05" H 4075 7275 50  0001 C CNN
F 1 "VDD" H 4090 7598 50  0000 C CNN
F 2 "" H 4075 7425 50  0001 C CNN
F 3 "" H 4075 7425 50  0001 C CNN
	1    4075 7425
	-1   0    0    1   
$EndComp
Wire Wire Line
	3975 6975 3975 7425
Wire Wire Line
	3975 7425 4075 7425
Connection ~ 4075 7425
Text GLabel 4450 7200 2    50   Input ~ 0
DCF_SIGNAL
Wire Wire Line
	4075 6975 4075 7200
Wire Wire Line
	4075 7200 4450 7200
Connection ~ 4075 7200
Wire Wire Line
	4075 7200 4075 7225
$Comp
L funkwecker-rescue:Conn_01x04_Male-Connector J2
U 1 1 61B2EE25
P 4175 5600
F 0 "J2" V 4237 5744 50  0000 L CNN
F 1 "Debug-Interface" V 4328 5744 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4175 5600 50  0001 C CNN
F 3 "~" H 4175 5600 50  0001 C CNN
	1    4175 5600
	0    1    1    0   
$EndComp
Wire Notes Line
	3025 6450 6250 6450
Wire Notes Line
	6250 6450 6250 5475
Wire Notes Line
	6250 5475 3025 5475
Wire Notes Line
	3025 5475 3025 6450
Text Notes 3050 5600 0    50   ~ 0
SWIM-Interface\n
$Comp
L funkwecker-rescue:VDD-power #PWR0108
U 1 1 61B3521F
P 4275 5800
F 0 "#PWR0108" H 4275 5650 50  0001 C CNN
F 1 "VDD" H 4175 5925 50  0000 C CNN
F 2 "" H 4275 5800 50  0001 C CNN
F 3 "" H 4275 5800 50  0001 C CNN
	1    4275 5800
	-1   0    0    1   
$EndComp
Text GLabel 4175 5975 3    50   Input ~ 0
SWIM_I_O
Wire Wire Line
	4175 5800 4175 5975
$Comp
L funkwecker-rescue:GND-power #PWR0109
U 1 1 61B377FF
P 4075 5800
F 0 "#PWR0109" H 4075 5550 50  0001 C CNN
F 1 "GND" H 4050 5650 50  0000 C CNN
F 2 "" H 4075 5800 50  0001 C CNN
F 3 "" H 4075 5800 50  0001 C CNN
	1    4075 5800
	1    0    0    -1  
$EndComp
Text GLabel 3875 5925 3    50   Input ~ 0
RESET
Wire Wire Line
	3975 5800 3975 5925
Wire Wire Line
	3975 5925 3875 5925
Wire Notes Line
	3025 5400 3025 700 
Text Notes 3075 800  0    50   ~ 0
µC\n
Text GLabel 3325 2675 0    50   Input ~ 0
RESET
Text GLabel 3450 2575 0    50   Input ~ 0
SWIM_I_O
Wire Wire Line
	5550 3175 5100 3175
Text GLabel 5550 3175 2    50   Input ~ 0
DCF_SIGNAL
$Comp
L funkwecker-rescue:GND-power #PWR03
U 1 1 61AC1509
P 4500 4225
F 0 "#PWR03" H 4500 3975 50  0001 C CNN
F 1 "GND" H 4505 4052 50  0000 C CNN
F 2 "" H 4500 4225 50  0001 C CNN
F 3 "" H 4500 4225 50  0001 C CNN
	1    4500 4225
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:SW_DIP_x01-Switch SW1
U 1 1 61B560DF
P 900 3725
F 0 "SW1" V 946 3595 50  0000 R CNN
F 1 "Hauptschalter" V 855 3595 50  0000 R CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x02_P4.8mm_D0.9mm_OD2.3mm" H 900 3725 50  0001 C CNN
F 3 "~" H 900 3725 50  0001 C CNN
	1    900  3725
	0    -1   -1   0   
$EndComp
Text GLabel 5475 3825 1    50   Input ~ 0
Test_LED
$Comp
L funkwecker-rescue:GND-power #PWR06
U 1 1 61B480A5
P 5475 4225
F 0 "#PWR06" H 5475 3975 50  0001 C CNN
F 1 "GND" H 5480 4052 50  0000 C CNN
F 2 "" H 5475 4225 50  0001 C CNN
F 3 "" H 5475 4225 50  0001 C CNN
	1    5475 4225
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:R_Small-Device R2
U 1 1 61B45613
P 5475 3925
F 0 "R2" H 5534 3971 50  0000 L CNN
F 1 "1k" H 5534 3880 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 5475 3925 50  0001 C CNN
F 3 "~" H 5475 3925 50  0001 C CNN
	1    5475 3925
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:LED_Small-Device D1
U 1 1 61B43D01
P 5475 4125
F 0 "D1" V 5521 4055 50  0000 R CNN
F 1 "Test_LED" V 5430 4055 50  0000 R CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" V 5475 4125 50  0001 C CNN
F 3 "~" V 5475 4125 50  0001 C CNN
	1    5475 4125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 4150 4500 4225
$Comp
L funkwecker-rescue:C_Small-Device C5
U 1 1 61CCF65F
P 1275 2575
F 0 "C5" H 1367 2621 50  0000 L CNN
F 1 "0.33µF" H 1367 2530 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 1275 2575 50  0001 C CNN
F 3 "~" H 1275 2575 50  0001 C CNN
	1    1275 2575
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:C_Small-Device C6
U 1 1 61CCF665
P 2300 2575
F 0 "C6" H 2392 2621 50  0000 L CNN
F 1 "0.1µF" H 2392 2530 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 2300 2575 50  0001 C CNN
F 3 "~" H 2300 2575 50  0001 C CNN
	1    2300 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 2375 1275 2375
Wire Wire Line
	1275 2375 1275 2475
$Comp
L funkwecker-rescue:GND-power #PWR0112
U 1 1 61CCF66D
P 1875 2875
F 0 "#PWR0112" H 1875 2625 50  0001 C CNN
F 1 "GND" H 1880 2702 50  0000 C CNN
F 2 "" H 1875 2875 50  0001 C CNN
F 3 "" H 1875 2875 50  0001 C CNN
	1    1875 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 2675 1275 2875
Wire Wire Line
	1275 2875 1875 2875
Wire Wire Line
	1875 2675 1875 2875
Connection ~ 1875 2875
Wire Wire Line
	2175 2375 2300 2375
Wire Wire Line
	2300 2375 2300 2475
Wire Wire Line
	2300 2675 2300 2875
Wire Wire Line
	2300 2875 1875 2875
$Comp
L funkwecker-rescue:VCC-power #PWR0113
U 1 1 61CCF67B
P 925 2375
F 0 "#PWR0113" H 925 2225 50  0001 C CNN
F 1 "VCC" H 940 2548 50  0000 C CNN
F 2 "" H 925 2375 50  0001 C CNN
F 3 "" H 925 2375 50  0001 C CNN
	1    925  2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 2375 2300 2375
Connection ~ 2300 2375
Connection ~ 1275 2375
Wire Wire Line
	925  2375 1275 2375
$Comp
L funkwecker-rescue:+5V-power #PWR0114
U 1 1 61CD8434
P 2575 2375
F 0 "#PWR0114" H 2575 2225 50  0001 C CNN
F 1 "+5V" H 2590 2548 50  0000 C CNN
F 2 "" H 2575 2375 50  0001 C CNN
F 3 "" H 2575 2375 50  0001 C CNN
	1    2575 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3375 900  3400
Wire Wire Line
	900  4325 900  4350
Text Notes 3950 6750 0    20   ~ 0
+   Signal   -\n
$Comp
L funkwecker-rescue:Conn_01x04_Male-Connector J3
U 1 1 61B50D31
P 7875 6000
F 0 "J3" H 7847 5882 50  0000 R CNN
F 1 "LED-Display Connector (TM1637)" H 7847 5973 28  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7875 6000 50  0001 C CNN
F 3 "~" H 7875 6000 50  0001 C CNN
	1    7875 6000
	-1   0    0    1   
$EndComp
$Comp
L funkwecker-rescue:+5V-power #PWR0110
U 1 1 61B53B29
P 7675 6000
F 0 "#PWR0110" H 7675 5850 50  0001 C CNN
F 1 "+5V" H 7625 6200 50  0000 C CNN
F 2 "" H 7675 6000 50  0001 C CNN
F 3 "" H 7675 6000 50  0001 C CNN
	1    7675 6000
	0    -1   -1   0   
$EndComp
$Comp
L funkwecker-rescue:GND-power #PWR0111
U 1 1 61B585C1
P 7675 6100
F 0 "#PWR0111" H 7675 5850 50  0001 C CNN
F 1 "GND" H 7800 5900 50  0000 C CNN
F 2 "" H 7675 6100 50  0001 C CNN
F 3 "" H 7675 6100 50  0001 C CNN
	1    7675 6100
	0    1    1    0   
$EndComp
Text GLabel 7250 5900 0    50   Input ~ 0
LED_DISPLAY_DATA
Wire Wire Line
	7250 5900 7675 5900
Text GLabel 7225 5800 0    50   Input ~ 0
LED_DISPLAY_CLK
Wire Wire Line
	7225 5800 7675 5800
Text GLabel 5325 2575 2    50   Input ~ 0
LED_DISPLAY_CLK
Wire Wire Line
	5325 2575 5100 2575
Text GLabel 5325 2675 2    50   Input ~ 0
LED_DISPLAY_DATA
Wire Wire Line
	5100 2675 5325 2675
Wire Notes Line
	6275 5475 8775 5475
Wire Notes Line
	8775 5475 8775 6450
Wire Notes Line
	8775 6450 6275 6450
Wire Notes Line
	6275 6450 6275 5475
Text Notes 6300 5575 0    50   ~ 0
LED-Display Connector\n
Wire Notes Line
	3025 5400 6250 5400
Wire Notes Line
	6250 5400 6250 700 
Wire Notes Line
	6250 700  3025 700 
NoConn ~ 5100 2775
$Comp
L funkwecker-rescue:PWR_FLAG-power #FLG0101
U 1 1 61B53407
P 900 3400
F 0 "#FLG0101" H 900 3475 50  0001 C CNN
F 1 "PWR_FLAG" V 900 3528 50  0000 L CNN
F 2 "" H 900 3400 50  0001 C CNN
F 3 "~" H 900 3400 50  0001 C CNN
	1    900  3400
	0    1    1    0   
$EndComp
Connection ~ 900  3400
Wire Wire Line
	900  3400 900  3425
$Comp
L funkwecker-rescue:PWR_FLAG-power #FLG0102
U 1 1 61B539EB
P 900 4350
F 0 "#FLG0102" H 900 4425 50  0001 C CNN
F 1 "PWR_FLAG" V 900 4478 50  0000 L CNN
F 2 "" H 900 4350 50  0001 C CNN
F 3 "~" H 900 4350 50  0001 C CNN
	1    900  4350
	0    1    1    0   
$EndComp
Connection ~ 900  4350
Wire Wire Line
	900  4350 900  4400
$Comp
L funkwecker-rescue:C_Small-Device C4
U 1 1 61AB3CF2
P 3625 1350
F 0 "C4" V 3396 1350 50  0000 C CNN
F 1 "10µF" V 3487 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 3625 1350 50  0001 C CNN
F 3 "~" H 3625 1350 50  0001 C CNN
	1    3625 1350
	-1   0    0    1   
$EndComp
$Comp
L funkwecker-rescue:C_Small-Device C7
U 1 1 61B6E436
P 4850 1150
F 0 "C7" V 4621 1150 50  0000 C CNN
F 1 "20pF" V 4712 1150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 4850 1150 50  0001 C CNN
F 3 "~" H 4850 1150 50  0001 C CNN
	1    4850 1150
	0    1    1    0   
$EndComp
$Comp
L funkwecker-rescue:C_Small-Device C8
U 1 1 61B71DFB
P 4850 1350
F 0 "C8" V 4621 1350 50  0000 C CNN
F 1 "20pF" V 4712 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 4850 1350 50  0001 C CNN
F 3 "~" H 4850 1350 50  0001 C CNN
	1    4850 1350
	0    -1   -1   0   
$EndComp
$Comp
L funkwecker-rescue:GND-power #PWR0115
U 1 1 61B72B0A
P 4525 1250
F 0 "#PWR0115" H 4525 1000 50  0001 C CNN
F 1 "GND" H 4530 1077 50  0000 C CNN
F 2 "" H 4525 1250 50  0001 C CNN
F 3 "" H 4525 1250 50  0001 C CNN
	1    4525 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1150 4525 1150
Wire Wire Line
	4525 1150 4525 1250
Wire Wire Line
	4750 1350 4750 1250
Wire Wire Line
	4750 1250 4525 1250
Connection ~ 4525 1250
Connection ~ 4500 4150
Wire Wire Line
	3450 2575 3900 2575
Wire Wire Line
	4500 4075 4500 4150
Text Notes 4225 2700 0    35   ~ 0
/NRSt\n
$Comp
L funkwecker-rescue:VDD-power #PWR0106
U 1 1 61AAAEDF
P 4500 2000
F 0 "#PWR0106" H 4500 1850 50  0001 C CNN
F 1 "VDD" H 4515 2173 50  0000 C CNN
F 2 "" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2000 4500 2275
NoConn ~ 3900 3075
NoConn ~ 3900 3175
NoConn ~ 3900 3275
NoConn ~ 3900 3375
NoConn ~ 3900 3475
NoConn ~ 3900 3575
NoConn ~ 3900 3675
$Comp
L funkwecker-rescue:VSS-power #PWR0107
U 1 1 61AB320C
P 4500 4150
F 0 "#PWR0107" H 4500 4000 50  0001 C CNN
F 1 "VSS" V 4515 4278 50  0000 L CNN
F 2 "" H 4500 4150 50  0001 C CNN
F 3 "" H 4500 4150 50  0001 C CNN
	1    4500 4150
	0    1    1    0   
$EndComp
Text Notes 4100 2525 0    35   ~ 0
SWIM IO
Text Notes 4250 3600 0    28   ~ 0
SPI Clk\n
Text GLabel 3725 3775 0    50   Input ~ 0
Test_LED
Wire Wire Line
	3725 3775 3900 3775
Text GLabel 3425 3350 0    50   Input ~ 0
OSC_OUT
$Comp
L funkwecker-rescue:STM8L051F3P-MCU_ST_STM8 U2
U 1 1 61A8E742
P 4500 3175
F 0 "U2" H 4150 4100 50  0000 C CNN
F 1 "STM8L051F3P" H 4150 4000 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4550 4175 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00060484.pdf" H 4500 2775 50  0001 C CNN
	1    4500 3175
	1    0    0    -1  
$EndComp
Text GLabel 3400 3225 0    50   Input ~ 0
OSC_IN
NoConn ~ 5100 2875
NoConn ~ 5100 2975
Text GLabel 5500 1450 2    50   Input ~ 0
OSC_OUT
Text GLabel 5500 1100 2    50   Input ~ 0
OSC_IN
Wire Wire Line
	5500 1150 5500 1100
Wire Wire Line
	5500 1350 5500 1450
Wire Wire Line
	5225 1150 5500 1150
Wire Wire Line
	4950 1150 5225 1150
Connection ~ 5225 1150
Wire Wire Line
	5225 1350 5500 1350
Wire Wire Line
	4950 1350 5225 1350
Connection ~ 5225 1350
$Comp
L funkwecker-rescue:Crystal_Small-Device Y1
U 1 1 61B5238F
P 5225 1250
F 0 "Y1" V 5271 1162 50  0000 R CNN
F 1 "HC49U 16MHz" V 5180 1162 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 5225 1250 50  0001 C CNN
F 3 "~" H 5225 1250 50  0001 C CNN
	1    5225 1250
	0    -1   -1   0   
$EndComp
$Comp
L funkwecker-rescue:C_Small-Device C9
U 1 1 61C265FF
P 3400 2775
F 0 "C9" V 3200 2850 50  0000 C CNN
F 1 "100nF" V 3275 2850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 3400 2775 50  0001 C CNN
F 3 "~" H 3400 2775 50  0001 C CNN
	1    3400 2775
	-1   0    0    1   
$EndComp
Wire Wire Line
	3325 2675 3400 2675
Connection ~ 3400 2675
Wire Wire Line
	3400 2675 3900 2675
$Comp
L funkwecker-rescue:GND-power #PWR0116
U 1 1 61C2841D
P 3400 2875
F 0 "#PWR0116" H 3400 2625 50  0001 C CNN
F 1 "GND" H 3405 2702 50  0000 C CNN
F 2 "" H 3400 2875 50  0001 C CNN
F 3 "" H 3400 2875 50  0001 C CNN
	1    3400 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2875 3825 2875
Wire Wire Line
	3825 2875 3825 3350
Wire Wire Line
	3825 3350 3425 3350
Wire Wire Line
	3900 2775 3750 2775
Wire Wire Line
	3750 2775 3750 3225
Wire Wire Line
	3750 3225 3400 3225
$Comp
L funkwecker-rescue:VDD-power #PWR0105
U 1 1 61AA994D
P 2575 1200
F 0 "#PWR0105" H 2575 1050 50  0001 C CNN
F 1 "VDD" H 2590 1373 50  0000 C CNN
F 2 "" H 2575 1200 50  0001 C CNN
F 3 "" H 2575 1200 50  0001 C CNN
	1    2575 1200
	1    0    0    -1  
$EndComp
$Comp
L funkwecker-rescue:VCC-power #PWR0102
U 1 1 61AA11C1
P 925 1200
F 0 "#PWR0102" H 925 1050 50  0001 C CNN
F 1 "VCC" H 940 1373 50  0000 C CNN
F 2 "" H 925 1200 50  0001 C CNN
F 3 "" H 925 1200 50  0001 C CNN
	1    925  1200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U3
U 1 1 61C84B96
P 1875 2375
F 0 "U3" H 1875 2617 50  0000 C CNN
F 1 "L7805" H 1875 2526 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1900 2225 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1875 2325 50  0001 C CNN
	1    1875 2375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
