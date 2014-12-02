setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/sec4_sim/sec4_sim.adf"]} { 
	design create sec4_sim "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote"
  set newDesign 1
}
design open "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/sec4_sim"
cd "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/section2_schematic.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Section4_Verilog.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lolhi_tf.v"
vlib "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/sec4_sim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lab4_SmartTekbotRemote/section2_schematic.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Section4_Verilog.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab4_SmartTekbotRemote/Lolhi_tf.v"
module Lolhi_tf
vsim +access +r Lolhi_tf   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
