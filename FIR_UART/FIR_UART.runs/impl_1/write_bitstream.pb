
t
Command: %s
1870*	planAhead2?
+open_checkpoint design_1_wrapper_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.028 . Memory (MB): peak = 231.051 ; gain = 0.0002default:defaulth px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1642default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.22default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:012default:default2 
00:00:00.6432default:default2
1143.5472default:default2
0.0002default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2 
00:00:00.6432default:default2
1143.5472default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2018.2 (64-bit)2default:default2
22586462default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:172default:default2
00:00:202default:default2
1143.5472default:default2
921.1332default:defaultZ17-268h px� 
p
Command: %s
53*	vivadotcl2?
+write_bitstream -force design_1_wrapper.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2018.2/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP/A[29:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP/B[17:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP/C[47:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP/A[29:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP/B[17:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/B[17:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/C[47:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP/B[17:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP1/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP1/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP1/DSP/A[29:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP1/DSP/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP/B[17:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/B[17:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/C[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�

�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP/PATTERNDETECT�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP/PATTERNDETECT2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP/PATTERNDETECT�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP/PATTERNDETECT2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP/PATTERNDETECT�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP/PATTERNDETECT2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP5/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP5/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP5/DSP/PATTERNDETECT�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP5/DSP/PATTERNDETECT2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/FULL_MAX_USAGE.DSP9/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/FULL_MAX_USAGE.DSP9/DSP2default:default2default:default2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/FULL_MAX_USAGE.DSP9/DSP/P[47:0]�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/FULL_MAX_USAGE.DSP9/DSP/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP0/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP1/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP1/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP2/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP3/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP3/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP4/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP4/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP5/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP5/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP6/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP6/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP7/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/DSP8/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/FULL_MAX_USAGE.DSP9/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/MULT/DSP48E1_SPD_DBL_VARIANT.FIX_MULT/FULL_MAX_USAGE.DSP9/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px� 
�
�enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/ALIGN_BLK/FRAC_ADDSUB/DSP_ADD.FRAC_ADDSUB/DSP48E1_GEN.DSP48E1_DEL/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px� 
�
�enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dadd_64ns_64nbkb_U1/fir_ap_dadd_3_full_dsp_64_u/U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/NORM/ROUND/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px� 
�
�enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP	�design_1_i/fir_0/inst/fir_dmul_64ns_64ncud_U2/fir_ap_dmul_4_max_dsp_64_u/U0/i_synth/MULT.OP/R_AND_R/LOGIC.R_AND_R/DSP48_E1.DSP48E1_ADD.DSP48E1_ADD/DSP2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px� 
v
DRC finished with %s
1905*	planAhead28
$0 Errors, 23 Warnings, 18 Advisories2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
g
Writing bitstream %s...
11*	bitstream2*
./design_1_wrapper.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
232default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:182default:default2
00:00:172default:default2
1636.5942default:default2
493.0472default:defaultZ17-268h px� 


End Record