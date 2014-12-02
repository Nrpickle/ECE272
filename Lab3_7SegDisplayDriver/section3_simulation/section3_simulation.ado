setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_simulation/section3_simulation.adf"]} { 
	design create section3_simulation "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver"
  set newDesign 1
}
design open "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_simulation"
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
vlib "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_simulation/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3/section3_schematic.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3_schematic_tf.v"
module section3_schematic_tf
vsim +access +r section3_schematic_tf   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
