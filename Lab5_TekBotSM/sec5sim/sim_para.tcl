lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {sec5sim}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_SM.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/clock_counter.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top.v" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top_tf.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {Section5_Top_tf}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
