// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Mon Jun 02 21:58:34 2014
//
// Verilog Description of module Sec6_Top
//

module Sec6_Top (ADCData, reset_n, sel, segments) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(1[8:16])
    input [7:0]ADCData;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(2[14:21])
    input reset_n;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(3[8:15])
    output [2:0]sel;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(4[15:18])
    output [6:0]segments;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(5[15:23])
    
    wire GND_net;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(11[13:20])
    wire reset_n_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(3[8:15])
    wire [2:0]sel_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(4[15:18])
    wire clk;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(9[7:10])
    wire clk_slow;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(10[7:15])
    wire VCC_net;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_top.v(11[13:20])
    
    VHI i5 (.Z(VCC_net));
    OB sel_pad_1 (.I(sel_c[1]), .O(sel[1]));
    OSCH osc_int (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam osc_int.NOM_FREQ = "2.08";
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB sel_pad_2 (.I(sel_c[2]), .O(sel[2]));
    GSR GSR_INST (.GSR(reset_n_c));
    clock_counter counter_1 (.clk_slow(clk_slow), .clk(clk), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;
    Sec6_SM FSM_1 (.sel({sel_c}), .clk_slow(clk_slow)) /* synthesis syn_module_defined=1 */ ;
    OB sel_pad_0 (.I(sel_c[0]), .O(sel[0]));
    OB segments_pad_6 (.I(GND_net), .O(segments[6]));
    OB segments_pad_5 (.I(GND_net), .O(segments[5]));
    OB segments_pad_4 (.I(GND_net), .O(segments[4]));
    OB segments_pad_3 (.I(VCC_net), .O(segments[3]));
    OB segments_pad_2 (.I(VCC_net), .O(segments[2]));
    OB segments_pad_1 (.I(VCC_net), .O(segments[1]));
    OB segments_pad_0 (.I(VCC_net), .O(segments[0]));
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clock_counter
//

module clock_counter (clk_slow, clk, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_slow;
    input clk;
    input GND_net;
    
    wire [15:0]count;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_finaldesign/source/clock_counter.v(8[14:19])
    
    wire n24, n26;
    wire [14:0]n66;
    
    wire n104, n8, n14, n112, n8_adj_1, n110, n109, n108, n107, 
        n106, n105;
    
    LUT4 i15_2_lut (.A(clk_slow), .B(n24), .Z(n26)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    FD1S3IX dff_11_31_32__i1 (.D(n66[0]), .CK(clk), .CD(n24), .Q(count[0]));
    defparam dff_11_31_32__i1.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i15 (.D(n66[14]), .CK(clk), .CD(n24), .Q(count[14]));
    defparam dff_11_31_32__i15.GSR = "ENABLED";
    FD1S3AX clk_o_13 (.D(n26), .CK(clk), .Q(clk_slow));
    defparam clk_o_13.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i14 (.D(n66[13]), .CK(clk), .CD(n24), .Q(count[13]));
    defparam dff_11_31_32__i14.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i13 (.D(n66[12]), .CK(clk), .CD(n24), .Q(count[12]));
    defparam dff_11_31_32__i13.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i12 (.D(n66[11]), .CK(clk), .CD(n24), .Q(count[11]));
    defparam dff_11_31_32__i12.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i11 (.D(n66[10]), .CK(clk), .CD(n24), .Q(count[10]));
    defparam dff_11_31_32__i11.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i10 (.D(n66[9]), .CK(clk), .CD(n24), .Q(count[9]));
    defparam dff_11_31_32__i10.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i9 (.D(n66[8]), .CK(clk), .CD(n24), .Q(count[8]));
    defparam dff_11_31_32__i9.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i8 (.D(n66[7]), .CK(clk), .CD(n24), .Q(count[7]));
    defparam dff_11_31_32__i8.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i7 (.D(n66[6]), .CK(clk), .CD(n24), .Q(count[6]));
    defparam dff_11_31_32__i7.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i6 (.D(n66[5]), .CK(clk), .CD(n24), .Q(count[5]));
    defparam dff_11_31_32__i6.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i5 (.D(n66[4]), .CK(clk), .CD(n24), .Q(count[4]));
    defparam dff_11_31_32__i5.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i4 (.D(n66[3]), .CK(clk), .CD(n24), .Q(count[3]));
    defparam dff_11_31_32__i4.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i3 (.D(n66[2]), .CK(clk), .CD(n24), .Q(count[2]));
    defparam dff_11_31_32__i3.GSR = "ENABLED";
    FD1S3IX dff_11_31_32__i2 (.D(n66[1]), .CK(clk), .CD(n24), .Q(count[1]));
    defparam dff_11_31_32__i2.GSR = "ENABLED";
    CCU2D dff_11_31_32_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n104), .S1(n66[0]));
    defparam dff_11_31_32_add_4_1.INIT0 = 16'hF000;
    defparam dff_11_31_32_add_4_1.INIT1 = 16'h0555;
    defparam dff_11_31_32_add_4_1.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_1.INJECT1_1 = "NO";
    LUT4 i50_4_lut (.A(count[0]), .B(count[3]), .C(count[2]), .D(count[1]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i50_4_lut.init = 16'hfcec;
    LUT4 i49_4_lut (.A(count[5]), .B(count[6]), .C(count[4]), .D(n8), 
         .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i49_4_lut.init = 16'heccc;
    LUT4 i3_4_lut (.A(n14), .B(count[9]), .C(count[8]), .D(count[7]), 
         .Z(n112)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3_3_lut (.A(count[13]), .B(count[12]), .C(count[10]), .Z(n8_adj_1)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i48_4_lut (.A(count[11]), .B(count[14]), .C(n8_adj_1), .D(n112), 
         .Z(n24)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i48_4_lut.init = 16'hccc8;
    CCU2D dff_11_31_32_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n110), .S0(n66[13]), .S1(n66[14]));
    defparam dff_11_31_32_add_4_15.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_15.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_15.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_15.INJECT1_1 = "NO";
    CCU2D dff_11_31_32_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n109), .COUT(n110), .S0(n66[11]), .S1(n66[12]));
    defparam dff_11_31_32_add_4_13.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_13.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_13.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_13.INJECT1_1 = "NO";
    CCU2D dff_11_31_32_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n108), .COUT(n109), .S0(n66[9]), .S1(n66[10]));
    defparam dff_11_31_32_add_4_11.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_11.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_11.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_11.INJECT1_1 = "NO";
    CCU2D dff_11_31_32_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n107), .COUT(n108), .S0(n66[7]), .S1(n66[8]));
    defparam dff_11_31_32_add_4_9.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_9.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_9.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_9.INJECT1_1 = "NO";
    CCU2D dff_11_31_32_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n106), .COUT(n107), .S0(n66[5]), .S1(n66[6]));
    defparam dff_11_31_32_add_4_7.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_7.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_7.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_7.INJECT1_1 = "NO";
    CCU2D dff_11_31_32_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n105), .COUT(n106), .S0(n66[3]), .S1(n66[4]));
    defparam dff_11_31_32_add_4_5.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_5.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_5.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_5.INJECT1_1 = "NO";
    CCU2D dff_11_31_32_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n104), .COUT(n105), .S0(n66[1]), .S1(n66[2]));
    defparam dff_11_31_32_add_4_3.INIT0 = 16'hfaaa;
    defparam dff_11_31_32_add_4_3.INIT1 = 16'hfaaa;
    defparam dff_11_31_32_add_4_3.INJECT1_0 = "NO";
    defparam dff_11_31_32_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Sec6_SM
//

module Sec6_SM (sel, clk_slow) /* synthesis syn_module_defined=1 */ ;
    output [2:0]sel;
    input clk_slow;
    
    wire [3:0]n27;
    
    LUT4 i1_3_lut (.A(sel[2]), .B(n27[1]), .C(n27[2]), .Z(sel[0])) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut.init = 16'h5454;
    FD1S3AX state_FSM_i3 (.D(n27[2]), .CK(clk_slow), .Q(sel[2]));
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 i64_2_lut (.A(sel[2]), .B(n27[2]), .Z(sel[1])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i64_2_lut.init = 16'h4444;
    FD1S3AX state_FSM_i2 (.D(n27[1]), .CK(clk_slow), .Q(n27[2]));
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n27[0]), .CK(clk_slow), .Q(n27[1]));
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i0 (.D(sel[2]), .CK(clk_slow), .Q(n27[0]));
    defparam state_FSM_i0.GSR = "ENABLED";
    
endmodule
