proc errorExit {errorString} {
  puts "\n===========================( *ENABLE ECHO* )==========================="
  puts "Error: $errorString"
  exit 1
}

set design_name    Xoodyak_DOM_first_order
set snapshot_name  snapshot

load_feature simulator

if { [catch {file delete -force xsim.dir} error]} {
    puts "Failed to delete previously existing xsim.dir: $error"
}

set analyze_flags "-work work -relax"

puts "\n===========================( Analyzing HDL Sources )==========================="



puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/CryptoCore_SCA.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/CryptoCore_SCA.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/design_pkg.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/design_pkg.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC_config.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC_config.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/NIST_LWAPI_pkg.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/NIST_LWAPI_pkg.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_globals.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_globals.vhd } error]} {
    errorExit $error
}





puts "Analyzing Verilog file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_n_rounds_SCA.v"
if { [catch {eval exec xvlog ${analyze_flags} /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_n_rounds_SCA.v } error]} {
    errorExit $error
}








puts "Analyzing Verilog file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_register_SCA.v"
if { [catch {eval exec xvlog ${analyze_flags} /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_register_SCA.v } error]} {
    errorExit $error
}








puts "Analyzing Verilog file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_round_SCA.v"
if { [catch {eval exec xvlog ${analyze_flags} /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_round_SCA.v } error]} {
    errorExit $error
}








puts "Analyzing Verilog file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_SCA.v"
if { [catch {eval exec xvlog ${analyze_flags} /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/xoodoo_SCA.v } error]} {
    errorExit $error
}







puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/data_piso.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/data_piso.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/data_sipo.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/data_sipo.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/FIFO.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/FIFO.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/key_piso.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/key_piso.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/PreProcessor.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/PreProcessor.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/PostProcessor.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/PostProcessor.vhd } error]} {
    errorExit $error
}




puts "Analyzing VHDL file /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/LWC_SCA.vhd VHDL Standard: 93"
if { [catch {eval exec xvhdl ${analyze_flags}  -93_mode  /home/luke/GMU/xeda_projects/Xoodyak_HSCPL_CERG_LWC/Hardware_Implementations/Xoodyak/Xoodyak_DOM_first_order/src_rtl/LWC/LWC_SCA.vhd } error]} {
    errorExit $error
}



puts "\n===========================( Elaborating design )==========================="
if { [catch {eval exec xelab -s ${snapshot_name} -L work -relax -mt 12   -log xeda_xelab.log} error]} {
    errorExit $error
}

puts "\n===========================( Loading Simulation )==========================="
if { [catch {eval xsim ${snapshot_name}  } error] } {
    errorExit $error
}



## TODO: WDB support
## set wdb_file "xsim_waves"
## open_wave_database ${wdb_file}




puts "\n===========================( Running simulation )==========================="




if { [catch {eval run all } error]} {
    errorExit $error
}

puts "Vivado simulation finished at [eval current_time]"

