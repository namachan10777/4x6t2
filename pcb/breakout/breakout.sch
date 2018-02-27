EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L SW_DIP_x01 SW1
U 1 1 5A9565C4
P 5750 3250
F 0 "SW1" H 5750 3400 50  0000 C CNN
F 1 "SW_DIP_x01" H 5750 3100 50  0000 C CNN
F 2 "Buttons_Switches_Keyboard:SW_Cherry_MX1A_1.00u_Plate" H 5750 3250 50  0001 C CNN
F 3 "" H 5750 3250 50  0001 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5A9565EA
P 5750 3900
F 0 "D1" H 5750 4000 50  0000 C CNN
F 1 "D" H 5750 3800 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5750 3900 50  0001 C CNN
F 3 "" H 5750 3900 50  0001 C CNN
	1    5750 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3900 6150 3900
Wire Wire Line
	6150 3900 6150 3550
Wire Wire Line
	6150 3550 6050 3250
Wire Wire Line
	5600 3900 5250 3900
Wire Wire Line
	5450 3250 5250 3250
$Comp
L Conn_01x01 J1
U 1 1 5A9566D0
P 5050 3550
F 0 "J1" H 5050 3650 50  0000 C CNN
F 1 "Conn_01x01" H 5050 3450 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5050 3550 50  0001 C CNN
F 3 "" H 5050 3550 50  0001 C CNN
	1    5050 3550
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 5A956722
P 5050 3900
F 0 "J2" H 5050 4000 50  0000 C CNN
F 1 "Conn_01x01" H 5050 3800 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5050 3900 50  0001 C CNN
F 3 "" H 5050 3900 50  0001 C CNN
	1    5050 3900
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J4
U 1 1 5A957527
P 5050 4200
F 0 "J4" H 5050 4300 50  0000 C CNN
F 1 "Conn_01x01" H 5050 4100 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5050 4200 50  0001 C CNN
F 3 "" H 5050 4200 50  0001 C CNN
	1    5050 4200
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J3
U 1 1 5A9575DB
P 5050 3250
F 0 "J3" H 5050 3350 50  0000 C CNN
F 1 "Conn_01x01" H 5050 3150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5050 3250 50  0001 C CNN
F 3 "" H 5050 3250 50  0001 C CNN
	1    5050 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3250
Connection ~ 5350 3250
Wire Wire Line
	5250 4200 5350 4200
Wire Wire Line
	5350 4200 5350 3900
Connection ~ 5350 3900
$EndSCHEMATC
