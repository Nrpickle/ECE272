// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Apr 23 01:04:44 2014
//
// Verilog Description of module Lab2_TekbotRemote_schematic
//

module Lab2_TekbotRemote_schematic (A, B, C, Ld, Le, Rd, Re) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(3[8:35])
    input A;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(4[8:9])
    input B;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(5[8:9])
    input C;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(6[8:9])
    output Ld;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(7[8:10])
    output Le;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(8[8:10])
    output Rd;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(9[8:10])
    output Re;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(10[8:10])
    
    wire A_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(4[8:9])
    wire B_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(5[8:9])
    wire C_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(6[8:9])
    wire Ld_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(7[8:10])
    wire Le_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(8[8:10])
    wire Rd_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(9[8:10])
    wire Re_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(10[8:10])
    wire N_16;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(11[6:10])
    wire N_17;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(12[6:10])
    wire N_11;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(13[6:10])
    wire N_12;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(14[6:10])
    wire N_13;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(15[6:10])
    wire N_14;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(16[6:10])
    wire N_15;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab2_tekbotremote/lab2_tekbotremote/lab2_tekbotremote_schematic.v(17[6:10])
    
    wire VCC_net, GND_net;
    
    AND2 I14 (.A(N_15), .B(C_c), .Z(N_12)) /* synthesis syn_instantiated=1 */ ;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i26 (.Z(VCC_net));
    GSR GSR_INST (.GSR(VCC_net));
    IB C_pad (.I(C), .O(C_c));
    IB B_pad (.I(B), .O(B_c));
    IB A_pad (.I(A), .O(A_c));
    OB Re_pad (.I(Re_c), .O(Re));
    OB Rd_pad (.I(Rd_c), .O(Rd));
    OB Le_pad (.I(Le_c), .O(Le));
    OB Ld_pad (.I(Ld_c), .O(Ld));
    VLO i30 (.Z(GND_net));
    OR3 I13 (.A(N_13), .B(N_14), .C(B_c), .Z(Ld_c)) /* synthesis syn_instantiated=1 */ ;
    AND2 I15 (.A(N_15), .B(Rd_c), .Z(N_13)) /* synthesis syn_instantiated=1 */ ;
    AND2 I16 (.A(A_c), .B(C_c), .Z(N_14)) /* synthesis syn_instantiated=1 */ ;
    OR2 I17 (.A(N_12), .B(N_11), .Z(N_16)) /* synthesis syn_instantiated=1 */ ;
    OR2 I18 (.A(N_11), .B(N_13), .Z(N_17)) /* synthesis syn_instantiated=1 */ ;
    INV I23 (.A(N_16), .Z(Le_c));
    INV I24 (.A(N_17), .Z(Re_c));
    INV I19 (.A(B_c), .Z(N_11));
    INV I20 (.A(C_c), .Z(Rd_c));
    INV I21 (.A(A_c), .Z(N_15));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

