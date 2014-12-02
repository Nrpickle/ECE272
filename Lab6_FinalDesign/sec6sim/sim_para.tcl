lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {sec6sim}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/sevenseg.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/sevenSeg_tf.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/determineNum.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/determineNum_tf.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/Section6_SM.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/clock_counter.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/Section6_Top.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sec6sim/Sec6_Top_tf.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {Sec6_Top_tf}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
