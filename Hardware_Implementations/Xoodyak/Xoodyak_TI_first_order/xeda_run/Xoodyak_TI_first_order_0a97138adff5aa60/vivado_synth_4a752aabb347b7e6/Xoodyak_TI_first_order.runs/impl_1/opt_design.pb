
k
Command: %s
53*	vivadotcl2:
&opt_design -directive ExploreWithRemap2default:defaultZ4-113h px� 
m
$Directive used for opt_design is: %s67*	vivadotcl2$
ExploreWithRemap2default:defaultZ4-136h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
Q
Running DRC with %s threads
24*drc2
122default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.58 ; elapsed = 00:00:00.36 . Memory (MB): peak = 3117.305 ; gain = 88.043 ; free physical = 18191 ; free virtual = 285082default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
;
&Phase 1 Retarget | Checksum: 748c7bfc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.18 . Memory (MB): peak = 3268.195 ; gain = 72.812 ; free physical = 17962 ; free virtual = 282792default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
02default:defaultZ31-389h px� 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
G
2Phase 2 Constant propagation | Checksum: 748c7bfc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.62 ; elapsed = 00:00:00.21 . Memory (MB): peak = 3268.195 ; gain = 72.812 ; free physical = 17961 ; free virtual = 282782default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px� 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px� 
9
$Phase 3 Sweep | Checksum: 14809ef6a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.66 ; elapsed = 00:00:00.24 . Memory (MB): peak = 3268.195 ; gain = 72.812 ; free physical = 17960 ; free virtual = 282782default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
02default:defaultZ31-389h px� 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
E
0Phase 4 BUFG optimization | Checksum: 14809ef6a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.70 ; elapsed = 00:00:00.29 . Memory (MB): peak = 3268.195 ; gain = 72.812 ; free physical = 17960 ; free virtual = 282782default:defaulth px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px� 
O
:Phase 5 Shift Register Optimization | Checksum: 14809ef6a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.70 ; elapsed = 00:00:00.29 . Memory (MB): peak = 3268.195 ; gain = 72.812 ; free physical = 17960 ; free virtual = 282782default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
f

Phase %s%s
101*constraints2
6 2default:default2
Remap2default:defaultZ18-101h px� 
9
$Phase 6 Remap | Checksum: 156ca24b0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3507.117 ; gain = 311.734 ; free physical = 17715 ; free virtual = 280312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Remap2default:default2
902default:default2
892default:defaultZ31-389h px� 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
K
6Phase 7 Post Processing Netlist | Checksum: 10d29aa43
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3507.117 ; gain = 311.734 ; free physical = 17715 ; free virtual = 280312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |               0  |               0  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Remap                        |              90  |              89  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3507.117 ; gain = 0.000 ; free physical = 17714 ; free virtual = 280312default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 17fc11cd7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3507.117 ; gain = 311.734 ; free physical = 17714 ; free virtual = 280312default:defaulth px� 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3507.1172default:default2
0.0002default:default2
177142default:default2
280312default:defaultZ17-722h px� 
K
6Ending Netlist Obfuscation Task | Checksum: 17fc11cd7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3507.117 ; gain = 0.000 ; free physical = 17714 ; free virtual = 280312default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
272default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_TI_first_order/xeda_run/Xoodyak_TI_first_order_0a97138adff5aa60/vivado_synth_4a752aabb347b7e6/Xoodyak_TI_first_order.runs/impl_1/LWC_SCA_opt.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2{
gExecuting : report_drc -file LWC_SCA_drc_opted.rpt -pb LWC_SCA_drc_opted.pb -rpx LWC_SCA_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2n
Zreport_drc -file LWC_SCA_drc_opted.rpt -pb LWC_SCA_drc_opted.pb -rpx LWC_SCA_drc_opted.rpx2default:defaultZ4-113h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2021.2/data/ip2default:defaultZ19-2313h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Q
Running DRC with %s threads
24*drc2
122default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�/home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_TI_first_order/xeda_run/Xoodyak_TI_first_order_0a97138adff5aa60/vivado_synth_4a752aabb347b7e6/Xoodyak_TI_first_order.runs/impl_1/LWC_SCA_drc_opted.rpt�/home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_TI_first_order/xeda_run/Xoodyak_TI_first_order_0a97138adff5aa60/vivado_synth_4a752aabb347b7e6/Xoodyak_TI_first_order.runs/impl_1/LWC_SCA_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
oExecuting : report_utilization  -format xml -file opt_report_utilization_0.rpt -pb opt_report_utilization_0.pb
2default:defaulth px� 
�
%s4*runtcl2�
}Executing : report_utilization -hierarchical  -format xml -file opt_report_utilization_1.rpt -pb opt_report_utilization_1.pb
2default:defaulth px� 


End Record