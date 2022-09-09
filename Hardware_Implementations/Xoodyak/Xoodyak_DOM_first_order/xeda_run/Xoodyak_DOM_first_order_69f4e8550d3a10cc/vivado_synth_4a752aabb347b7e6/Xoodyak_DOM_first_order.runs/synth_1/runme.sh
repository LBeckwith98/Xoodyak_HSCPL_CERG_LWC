#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vivado/2021.2/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2021.2/bin
else
  PATH=/tools/Xilinx/Vivado/2021.2/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/xeda_run/Xoodyak_DOM_first_order_69f4e8550d3a10cc/vivado_synth_4a752aabb347b7e6/Xoodyak_DOM_first_order.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log LWC_SCA.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source LWC_SCA.tcl
