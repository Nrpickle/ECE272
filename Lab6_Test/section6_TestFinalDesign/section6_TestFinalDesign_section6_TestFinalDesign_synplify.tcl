#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -4

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency auto
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false
set_option -frequency 1
set_option -default_enum_encoding default

#simulation options


#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


#-- add_file options
set_option -include_path {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/determineNum.v}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/Section6_SM.v}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/Section6_Top.v}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/sevenseg.v}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/clock_counter.v}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/ADC_module.v}
add_file -verilog {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/interpretADC.v}

#-- top module name
set_option -top_module Sec6_Top

#-- set result format/file last
project -result_file {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/section6_TestFinalDesign_section6_TestFinalDesign.edi}

#-- error message log file
project -log_file {section6_TestFinalDesign_section6_TestFinalDesign.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run
