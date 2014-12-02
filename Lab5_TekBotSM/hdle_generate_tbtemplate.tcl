lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) Section5_Top
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.1_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.1_x64/cae_library/synthesis/verilog/machxo2.v"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.1_x64/data/templates/plsitft.tft"}
set ::bali::Para(OUTNAME) Section5_Top_tf
set ::bali::Para(EXT) .v
set ::bali::Para(FILELIST) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/clock_counter.v=work" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_SM.v=work" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM/Section5_Top.v=work" }
set ::bali::Para(INCLUDEPATH) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab5_TekBotSM" }
puts "set parameters done"
::bali::GenerateTbTemplate
