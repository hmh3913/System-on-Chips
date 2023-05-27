# CLK_100M
set_property IOSTANDARD LVCMOS25 [get_ports clk_100mhz]
set_property PACKAGE_PIN Y9 [get_ports clk_100mhz]

# BTN for RST
set_property IOSTANDARD LVCMOS25 [get_ports btn]
set_property PACKAGE_PIN T18 [get_ports btn]

# 8 LEDS
set_property IOSTANDARD LVCMOS25 [get_ports {leds[*]}]
set_property PACKAGE_PIN U14 [get_ports leds[0]]
set_property PACKAGE_PIN U19 [get_ports leds[1]]
set_property PACKAGE_PIN W22 [get_ports leds[2]]
set_property PACKAGE_PIN V22 [get_ports leds[3]]
set_property PACKAGE_PIN U21 [get_ports leds[4]]
set_property PACKAGE_PIN U22 [get_ports leds[5]]
set_property PACKAGE_PIN T21 [get_ports leds[6]]
set_property PACKAGE_PIN T22 [get_ports leds[7]]

###########################################################
# JA
###########################################################
set_property IOSTANDARD LVCMOS25 [get_ports {seg_data[*]}]
set_property PACKAGE_PIN Y11 	[get_ports {seg_data[7]}]
set_property PACKAGE_PIN AA11 [get_ports {seg_data[6]}]
set_property PACKAGE_PIN Y10 	[get_ports {seg_data[5]}]
set_property PACKAGE_PIN AA9 	[get_ports {seg_data[4]}]
set_property PACKAGE_PIN AB11	[get_ports {seg_data[3]}]
set_property PACKAGE_PIN AB10	[get_ports {seg_data[2]}]
set_property PACKAGE_PIN AB9 	[get_ports {seg_data[1]}]
set_property PACKAGE_PIN AA8 	[get_ports {seg_data[0]}]

###########################################################
# JB
###########################################################
set_property IOSTANDARD LVCMOS25 [get_ports {seg_com[*]}]
set_property PACKAGE_PIN W12 	[get_ports {seg_com[0]}]
set_property PACKAGE_PIN W11	[get_ports {seg_com[1]}]
set_property PACKAGE_PIN V10	[get_ports {seg_com[2]}]
set_property PACKAGE_PIN W8	[get_ports {seg_com[3]}]
set_property PACKAGE_PIN V12 	[get_ports {seg_com[4]}]
set_property PACKAGE_PIN W10 	[get_ports {seg_com[5]}]


