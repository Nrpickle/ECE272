// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed May 28 15:17:29 2014
//
// Verilog Description of module Section5_Top
//

module Section5_Top (DigitalLDir, DigitalRDir, reset_n, outputs) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(1[8:20])
    input DigitalLDir;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(2[8:19])
    input DigitalRDir;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(3[8:19])
    input reset_n;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(4[8:15])
    output [3:0]outputs;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(5[15:22])
    
    wire GND_net;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(5[15:22])
    wire DigitalLDir_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(2[8:19])
    wire DigitalRDir_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(3[8:19])
    wire reset_n_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(4[8:15])
    wire [3:0]outputs_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(5[15:22])
    wire clk;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(12[8:11])
    wire clk_2;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/section5_top.v(13[8:13])
    
    wire VCC_net;
    
    VHI i201 (.Z(VCC_net));
    OSCH osc_int (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam osc_int.NOM_FREQ = "2.08";
    clock_counter counter_1 (.clk_2(clk_2), .clk(clk), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(reset_n_c));
    OB outputs_pad_2 (.I(outputs_c[2]), .O(outputs[2]));
    OB outputs_pad_3 (.I(GND_net), .O(outputs[3]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Sec5_SM FSM_1 (.DigitalLDir_c(DigitalLDir_c), .DigitalRDir_c(DigitalRDir_c), 
            .n124(outputs_c[0]), .n123(outputs_c[2]), .clk_2(clk_2)) /* synthesis syn_module_defined=1 */ ;
    OB outputs_pad_1 (.I(GND_net), .O(outputs[1]));
    OB outputs_pad_0 (.I(outputs_c[0]), .O(outputs[0]));
    IB DigitalLDir_pad (.I(DigitalLDir), .O(DigitalLDir_c));
    IB DigitalRDir_pad (.I(DigitalRDir), .O(DigitalRDir_c));
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));
    
endmodule
//
// Verilog Description of module clock_counter
//

module clock_counter (clk_2, clk, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_2;
    input clk;
    input GND_net;
    
    wire [20:0]count;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab5_tekbotsm/clock_counter.v(8[14:19])
    
    wire n31, n29;
    wire [18:0]n82;
    
    wire n211, n212, n205, n206, n204, n210, n209, n208, n10, 
        n8, n4, n216, n207, n12, n10_adj_1;
    
    FD1S3AX clk_o_13 (.D(n31), .CK(clk), .Q(clk_2));
    defparam clk_o_13.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i1 (.D(n82[0]), .CK(clk), .CD(n29), .Q(count[0]));
    defparam dff_11_51_52__i1.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i19 (.D(n82[18]), .CK(clk), .CD(n29), .Q(count[18]));
    defparam dff_11_51_52__i19.GSR = "ENABLED";
    CCU2D dff_11_51_52_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n211), .COUT(n212), .S0(n82[15]), .S1(n82[16]));
    defparam dff_11_51_52_add_4_17.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_17.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_17.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_17.INJECT1_1 = "NO";
    LUT4 i15_2_lut (.A(clk_2), .B(n29), .Z(n31)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    CCU2D dff_11_51_52_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n205), .COUT(n206), .S0(n82[3]), .S1(n82[4]));
    defparam dff_11_51_52_add_4_5.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_5.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_5.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_5.INJECT1_1 = "NO";
    CCU2D dff_11_51_52_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n204), .S1(n82[0]));
    defparam dff_11_51_52_add_4_1.INIT0 = 16'hF000;
    defparam dff_11_51_52_add_4_1.INIT1 = 16'h0555;
    defparam dff_11_51_52_add_4_1.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_1.INJECT1_1 = "NO";
    CCU2D dff_11_51_52_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n210), .COUT(n211), .S0(n82[13]), .S1(n82[14]));
    defparam dff_11_51_52_add_4_15.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_15.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_15.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_15.INJECT1_1 = "NO";
    CCU2D dff_11_51_52_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n209), .COUT(n210), .S0(n82[11]), .S1(n82[12]));
    defparam dff_11_51_52_add_4_13.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_13.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_13.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_13.INJECT1_1 = "NO";
    CCU2D dff_11_51_52_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n208), .COUT(n209), .S0(n82[9]), .S1(n82[10]));
    defparam dff_11_51_52_add_4_11.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_11.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_11.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_11.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(count[16]), .B(count[18]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(count[9]), .B(n8), .C(count[7]), .D(n4), .Z(n216)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i4_4_lut.init = 16'h8880;
    CCU2D dff_11_51_52_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n204), .COUT(n205), .S0(n82[1]), .S1(n82[2]));
    defparam dff_11_51_52_add_4_3.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_3.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_3.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_3.INJECT1_1 = "NO";
    CCU2D dff_11_51_52_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n207), .COUT(n208), .S0(n82[7]), .S1(n82[8]));
    defparam dff_11_51_52_add_4_9.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_9.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_9.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_9.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(n216), .B(n10), .C(count[15]), .D(count[12]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'hc080;
    LUT4 i6_4_lut (.A(count[14]), .B(n12), .C(count[13]), .D(count[17]), 
         .Z(n29)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    CCU2D dff_11_51_52_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n206), .COUT(n207), .S0(n82[5]), .S1(n82[6]));
    defparam dff_11_51_52_add_4_7.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_7.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_7.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_7.INJECT1_1 = "NO";
    CCU2D dff_11_51_52_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n212), .S0(n82[17]), .S1(n82[18]));
    defparam dff_11_51_52_add_4_19.INIT0 = 16'hfaaa;
    defparam dff_11_51_52_add_4_19.INIT1 = 16'hfaaa;
    defparam dff_11_51_52_add_4_19.INJECT1_0 = "NO";
    defparam dff_11_51_52_add_4_19.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_1 (.A(count[2]), .B(count[1]), .C(count[0]), .D(count[4]), 
         .Z(n10_adj_1)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_1.init = 16'h8000;
    LUT4 i1_4_lut (.A(count[6]), .B(count[5]), .C(n10_adj_1), .D(count[3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'heaaa;
    FD1S3IX dff_11_51_52__i18 (.D(n82[17]), .CK(clk), .CD(n29), .Q(count[17]));
    defparam dff_11_51_52__i18.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i17 (.D(n82[16]), .CK(clk), .CD(n29), .Q(count[16]));
    defparam dff_11_51_52__i17.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i16 (.D(n82[15]), .CK(clk), .CD(n29), .Q(count[15]));
    defparam dff_11_51_52__i16.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i15 (.D(n82[14]), .CK(clk), .CD(n29), .Q(count[14]));
    defparam dff_11_51_52__i15.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i14 (.D(n82[13]), .CK(clk), .CD(n29), .Q(count[13]));
    defparam dff_11_51_52__i14.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i13 (.D(n82[12]), .CK(clk), .CD(n29), .Q(count[12]));
    defparam dff_11_51_52__i13.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i12 (.D(n82[11]), .CK(clk), .CD(n29), .Q(count[11]));
    defparam dff_11_51_52__i12.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i11 (.D(n82[10]), .CK(clk), .CD(n29), .Q(count[10]));
    defparam dff_11_51_52__i11.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i10 (.D(n82[9]), .CK(clk), .CD(n29), .Q(count[9]));
    defparam dff_11_51_52__i10.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i9 (.D(n82[8]), .CK(clk), .CD(n29), .Q(count[8]));
    defparam dff_11_51_52__i9.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i8 (.D(n82[7]), .CK(clk), .CD(n29), .Q(count[7]));
    defparam dff_11_51_52__i8.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i7 (.D(n82[6]), .CK(clk), .CD(n29), .Q(count[6]));
    defparam dff_11_51_52__i7.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i6 (.D(n82[5]), .CK(clk), .CD(n29), .Q(count[5]));
    defparam dff_11_51_52__i6.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i5 (.D(n82[4]), .CK(clk), .CD(n29), .Q(count[4]));
    defparam dff_11_51_52__i5.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i4 (.D(n82[3]), .CK(clk), .CD(n29), .Q(count[3]));
    defparam dff_11_51_52__i4.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i3 (.D(n82[2]), .CK(clk), .CD(n29), .Q(count[2]));
    defparam dff_11_51_52__i3.GSR = "ENABLED";
    FD1S3IX dff_11_51_52__i2 (.D(n82[1]), .CK(clk), .CD(n29), .Q(count[1]));
    defparam dff_11_51_52__i2.GSR = "ENABLED";
    LUT4 i3_3_lut (.A(count[11]), .B(count[10]), .C(count[8]), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Sec5_SM
//

module Sec5_SM (DigitalLDir_c, DigitalRDir_c, n124, n123, clk_2) /* synthesis syn_module_defined=1 */ ;
    input DigitalLDir_c;
    input DigitalRDir_c;
    output n124;
    output n123;
    input clk_2;
    
    wire [7:0]n25;
    
    wire n224, n242, n126, n44;
    
    LUT4 i1_2_lut_3_lut (.A(n25[0]), .B(DigitalLDir_c), .C(DigitalRDir_c), 
         .Z(n224)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 i90_3_lut_4_lut (.A(n25[0]), .B(DigitalLDir_c), .C(n242), .D(DigitalRDir_c), 
         .Z(n126)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i90_3_lut_4_lut.init = 16'hf8f0;
    LUT4 reduce_or_21_i1_2_lut_rep_1 (.A(n25[6]), .B(n25[3]), .Z(n242)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_21_i1_2_lut_rep_1.init = 16'heeee;
    LUT4 i93_3_lut (.A(n25[3]), .B(n25[6]), .C(n25[0]), .Z(n124)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i93_3_lut.init = 16'hdcdc;
    LUT4 mux_48_i2_3_lut_3_lut (.A(n25[6]), .B(n25[3]), .C(n25[0]), .Z(n123)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam mux_48_i2_3_lut_3_lut.init = 16'h5454;
    LUT4 i27_2_lut (.A(DigitalLDir_c), .B(n25[0]), .Z(n44)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i27_2_lut.init = 16'h4444;
    FD1S3AX state_FSM_i7 (.D(n25[5]), .CK(clk_2), .Q(n25[6]));
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3AX state_FSM_i6 (.D(n25[4]), .CK(clk_2), .Q(n25[5]));
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n44), .CK(clk_2), .Q(n25[4]));
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n25[2]), .CK(clk_2), .Q(n25[3]));
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n25[1]), .CK(clk_2), .Q(n25[2]));
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n224), .CK(clk_2), .Q(n25[1]));
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AY state_FSM_i1 (.D(n126), .CK(clk_2), .Q(n25[0]));
    defparam state_FSM_i1.GSR = "ENABLED";
    
endmodule
