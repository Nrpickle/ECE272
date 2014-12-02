setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_sim/section3_sim.adf"]} { 
	design create section3_sim "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver"
  set newDesign 1
}
design open "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_sim"
cd "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3/section3_schematic.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_schematic_tf.v"
vlib "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_sim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3/section3_schematic.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_schematic_tf.v"
