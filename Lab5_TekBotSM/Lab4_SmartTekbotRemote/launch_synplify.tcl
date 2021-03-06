#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/launch_synplify.tcl
#-- Written on Wed May 14 14:40:33 2014

project -close
set filename "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -4

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
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
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
}
#-- add_file options
set_option -include_path "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote"
add_file -verilog "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Section4_Verilog.v"
add_file -verilog "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/section2_schematic.v"
add_file -verilog "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/Lab2_TekbotRemote_schematic.v"
project -result_file {C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote.edi}
project -save "$filename"
