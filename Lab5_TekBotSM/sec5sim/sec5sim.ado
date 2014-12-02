setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/sec5sim/sec5sim.adf"]} { 
	design create sec5sim "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM"
  set newDesign 1
}
design open "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/sec5sim"
cd "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_SM.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/clock_counter.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top_tf.v"
vlib "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/sec5sim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_SM.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/clock_counter.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top_tf.v"
module Section5_Top_tf
vsim +access +r Section5_Top_tf   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
