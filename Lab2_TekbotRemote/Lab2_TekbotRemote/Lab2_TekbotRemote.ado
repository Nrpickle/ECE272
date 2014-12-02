setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote/Lab2_TekbotRemote.adf"]} { 
	design create Lab2_TekbotRemote "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote"
  set newDesign 1
}
design open "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote"
cd "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote/Lab2_TekbotRemote_schematic.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote_schematic_tf.v"
vlib "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote/Lab2_TekbotRemote_schematic.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab2_TekbotRemote/Lab2_TekbotRemote_schematic_tf.v"
module Lab2_TekbotRemote_schematic_tf
vsim +access +r Lab2_TekbotRemote_schematic_tf   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
