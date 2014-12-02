setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/sec6sim/sec6sim.adf"]} { 
	design create sec6sim "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test"
  set newDesign 1
}
design open "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/sec6sim"
cd "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/sevenseg.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/determineNum.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/Section6_SM.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/clock_counter.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/ADC_module.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/Section6_Top.v"
addfile "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/Sec6_Top_tf.v"
vlib "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/sec6sim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/sevenseg.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/determineNum.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/Section6_SM.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/clock_counter.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/ADC_module.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/section6_TestFinalDesign/source/Section6_Top.v"
vlog -dbg -work work "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_Test/Sec6_Top_tf.v"
module Sec6_Top_tf
vsim +access +r Sec6_Top_tf   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
