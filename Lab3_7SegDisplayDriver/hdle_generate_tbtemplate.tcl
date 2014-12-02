lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) section3_schematic
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.1_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.1_x64/cae_library/synthesis/verilog/machxo2.v"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.1_x64/data/templates/plsitft.tft"}
set ::bali::Para(OUTNAME) section3_schematic_tf
set ::bali::Para(EXT) .v
set ::bali::Para(FILELIST) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3/section3_schematic.v=work" }
set ::bali::Para(INCLUDEPATH) {"C:/lscc/diamond/3.1_x64/bin/nt64/Lab3_7SegDisplayDriver/section3" }
puts "set parameters done"
::bali::GenerateTbTemplate
