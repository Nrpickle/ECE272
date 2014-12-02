// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed May 14 14:43:33 2014
//
// Verilog Description of module Lolhi
//

module Lolhi (A, B, C, AnalogLDir, AnalogRDir, Len, Ldir, Ren, 
            Rdir) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(1[8:13])
    input A;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(2[8:9])
    input B;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(3[8:9])
    input C;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(4[8:9])
    input AnalogLDir;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(5[8:18])
    input AnalogRDir;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(6[8:18])
    output Len;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(7[9:12])
    output Ldir;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(8[9:13])
    output Ren;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(9[9:12])
    output Rdir;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(10[9:13])
    
    wire A_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(2[8:9])
    wire B_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(3[8:9])
    wire C_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(4[8:9])
    wire AnalogLDir_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(5[8:18])
    wire AnalogRDir_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(6[8:18])
    wire Len_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(7[9:12])
    wire Ldir_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(8[9:13])
    wire Ren_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(9[9:12])
    wire Rdir_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(10[9:13])
    wire Z_B;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(14[7:10])
    wire Len_int;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(17[7:14])
    wire Ren_int;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(19[7:14])
    
    wire GND_net, VCC_net, n63, n62;
    
    VHI i18 (.Z(VCC_net));
    GSR GSR_INST (.GSR(VCC_net));
    section2_schematic lab2Logic (.n63(n63), .Z_B(Z_B), .n62(n62), .Len_int(Len_int), 
            .Ren_int(Ren_int)) /* synthesis syn_module_defined=1 */ ;
    inverter_nick_yay_U0 invB (.B_c(B_c), .Z_B(Z_B)) /* synthesis syn_module_defined=1 */ ;
    IB AnalogRDir_pad (.I(AnalogRDir), .O(AnalogRDir_c));
    inverter_nick_yay invC (.C_c(C_c), .AnalogLDir_c(AnalogLDir_c), .AnalogRDir_c(AnalogRDir_c), 
            .Rdir_c(Rdir_c), .n62(n62)) /* synthesis syn_module_defined=1 */ ;
    IB AnalogLDir_pad (.I(AnalogLDir), .O(AnalogLDir_c));
    IB C_pad (.I(C), .O(C_c));
    IB B_pad (.I(B), .O(B_c));
    IB A_pad (.I(A), .O(A_c));
    OB Rdir_pad (.I(Rdir_c), .O(Rdir));
    OB Ren_pad (.I(Ren_c), .O(Ren));
    OB Ldir_pad (.I(Ldir_c), .O(Ldir));
    OB Len_pad (.I(Len_c), .O(Len));
    inverter_nick_yay_U1 invA (.A_c(A_c), .AnalogLDir_c(AnalogLDir_c), .AnalogRDir_c(AnalogRDir_c), 
            .Ldir_c(Ldir_c), .n63(n63)) /* synthesis syn_module_defined=1 */ ;
    LUT4 i1_2_lut_3_lut (.A(AnalogLDir_c), .B(AnalogRDir_c), .C(Len_int), 
         .Z(Len_c)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i52 (.Z(GND_net));
    LUT4 i1_2_lut_3_lut_adj_1 (.A(AnalogLDir_c), .B(AnalogRDir_c), .C(Ren_int), 
         .Z(Ren_c)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_1.init = 16'h8080;
    
endmodule
//
// Verilog Description of module section2_schematic
//

module section2_schematic (n63, Z_B, n62, Len_int, Ren_int) /* synthesis syn_module_defined=1 */ ;
    input n63;
    input Z_B;
    input n62;
    output Len_int;
    output Ren_int;
    
    wire N_1;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/lab4_smarttekbotremote/section2_schematic.v(12[6:9])
    wire N_3;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/lab4_smarttekbotremote/section2_schematic.v(13[6:9])
    wire Ldir_int;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(16[7:15])
    wire Rdir_int;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(18[7:15])
    wire N_8;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/lab4_smarttekbotremote/section2_schematic.v(11[6:9])
    wire N_4;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/lab4_smarttekbotremote/section2_schematic.v(14[6:9])
    
    AND2 I2 (.A(n63), .B(Z_B), .Z(N_1)) /* synthesis syn_instantiated=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    AND2 I3 (.A(Z_B), .B(n62), .Z(N_3)) /* synthesis syn_instantiated=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    AND3 I1 (.A(Ldir_int), .B(N_8), .C(Rdir_int), .Z(N_4)) /* synthesis syn_instantiated=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    OR2 I4 (.A(N_1), .B(N_4), .Z(Len_int)) /* synthesis syn_instantiated=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    OR2 I5 (.A(N_4), .B(N_3), .Z(Ren_int)) /* synthesis syn_instantiated=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    INV I6 (.A(n62), .Z(Rdir_int));   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    INV I8 (.A(n63), .Z(Ldir_int));   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    INV I7 (.A(Z_B), .Z(N_8));   // c:/lscc/diamond/3.1_x64/bin/nt64/lab4_smarttekbotremote/section4_verilog.v(29[21] 36[13])
    
endmodule
//
// Verilog Description of module inverter_nick_yay_U0
//

module inverter_nick_yay_U0 (B_c, Z_B) /* synthesis syn_module_defined=1 */ ;
    input B_c;
    output Z_B;
    
    
    LUT4 i4_1_lut (.A(B_c), .Z(Z_B)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module inverter_nick_yay
//

module inverter_nick_yay (C_c, AnalogLDir_c, AnalogRDir_c, Rdir_c, n62) /* synthesis syn_module_defined=1 */ ;
    input C_c;
    input AnalogLDir_c;
    input AnalogRDir_c;
    output Rdir_c;
    output n62;
    
    
    LUT4 i1_3_lut_3_lut (.A(C_c), .B(AnalogLDir_c), .C(AnalogRDir_c), 
         .Z(Rdir_c)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_3_lut_3_lut.init = 16'hb0b0;
    LUT4 i4_1_lut_rep_1 (.A(C_c), .Z(n62)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4_1_lut_rep_1.init = 16'h5555;
    
endmodule
//
// Verilog Description of module inverter_nick_yay_U1
//

module inverter_nick_yay_U1 (A_c, AnalogLDir_c, AnalogRDir_c, Ldir_c, 
            n63) /* synthesis syn_module_defined=1 */ ;
    input A_c;
    input AnalogLDir_c;
    input AnalogRDir_c;
    output Ldir_c;
    output n63;
    
    
    LUT4 i1_3_lut_3_lut (.A(A_c), .B(AnalogLDir_c), .C(AnalogRDir_c), 
         .Z(Ldir_c)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i4_1_lut_rep_2 (.A(A_c), .Z(n63)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4_1_lut_rep_2.init = 16'h5555;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

