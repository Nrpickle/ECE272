lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) Sec6_Top
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.1_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.1_x64/cae_library/synthesis/verilog/machxo2.v"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.1_x64/data/templates/plsitft.tft"}
set ::bali::Para(OUTNAME) Sec6_Top_tf
set ::bali::Para(EXT) .v
set ::bali::Para(FILELIST) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/sevenseg.v=work" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/Section6_SM.v=work" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/Section6_Top.v=work" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/section6_FinalDesign/source/clock_counter.v=work" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/determineNum.v=work" }
set ::bali::Para(INCLUDEPATH) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign" "C:/lscc/diamond/3.1_x64/bin/nt64/Lab6_FinalDesign/section6_FinalDesign/source" }
puts "set parameters done"
::bali::GenerateTbTemplate
