## XADC AD Channels - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN E16 [get_ports {AD0N_R}];  # "XADC-AD0N-R"
#set_property PACKAGE_PIN F16 [get_ports {AD0P_R}];  # "XADC-AD0P-R"
#set_property PACKAGE_PIN D17 [get_ports {AD8N_N}];  # "XADC-AD8N-R"
#set_property PACKAGE_PIN D16 [get_ports {AD8P_R}];  # "XADC-AD8P-R"

set_property IOSTANDARD LVCMOS33 [get_ports vn_in];
set_property IOSTANDARD LVCMOS33 [get_ports vp_in];

set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];