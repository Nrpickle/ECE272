// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Jun 04 10:02:16 2014
//
// Verilog Description of module interpretADC
//

module interpretADC (ADCData, voltage) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_finaldesign/source/interpretadc.v(1[8:20])
    input [7:0]ADCData;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_finaldesign/source/interpretadc.v(2[14:21])
    output [8:0]voltage;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_finaldesign/source/interpretadc.v(3[19:26])
    
    wire [7:0]ADCData_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_finaldesign/source/interpretadc.v(2[14:21])
    wire [8:0]voltage_c;   // c:/lscc/diamond/3.1_x64/bin/nt64/lab6_finaldesign/section6_finaldesign/source/interpretadc.v(3[19:26])
    
    wire GND_net, VCC_net, n854;
    wire [15:0]n884;
    
    wire n853, n852, n850, n849, n848, n846, n866;
    wire [11:0]n795;
    
    wire n845;
    wire [11:0]n765;
    
    wire n865, n844, n861, n822, n869, n873, n857, n840, n842, 
        n839, n838, n860, n858, n871, n862;
    wire [7:0]n159;
    
    wire n877, n874, n875;
    wire [7:0]n176;
    wire [7:0]n193;
    wire [7:0]n210;
    
    wire n870, n683;
    wire [7:0]n227;
    
    wire n856, n864;
    wire [7:0]n244;
    wire [7:0]n261;
    
    wire n837;
    wire [7:0]n278;
    
    wire n4, n841;
    
    VHI i2 (.Z(VCC_net));
    CCU2D add_167_5 (.A0(n227[3]), .B0(n227[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n227[4]), .B1(n227[7]), .C1(GND_net), .D1(GND_net), .CIN(n861), 
          .COUT(n862), .S0(n244[4]), .S1(n244[5]));
    defparam add_167_5.INIT0 = 16'h5666;
    defparam add_167_5.INIT1 = 16'h5999;
    defparam add_167_5.INJECT1_0 = "NO";
    defparam add_167_5.INJECT1_1 = "NO";
    LUT4 i450_2_lut (.A(ADCData_c[4]), .B(ADCData_c[0]), .Z(n765[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i450_2_lut.init = 16'h6666;
    OB voltage_pad_5 (.I(voltage_c[5]), .O(voltage[5]));
    CCU2D add_168_7 (.A0(n244[5]), .B0(n244[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n244[6]), .B1(n244[7]), .C1(GND_net), .D1(GND_net), .CIN(n866), 
          .S0(n261[6]), .S1(n261[7]));
    defparam add_168_7.INIT0 = 16'h5999;
    defparam add_168_7.INIT1 = 16'h5999;
    defparam add_168_7.INJECT1_0 = "NO";
    defparam add_168_7.INJECT1_1 = "NO";
    CCU2D add_168_5 (.A0(n244[3]), .B0(n244[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n244[4]), .B1(n244[7]), .C1(GND_net), .D1(GND_net), .CIN(n865), 
          .COUT(n866), .S0(n261[4]), .S1(n261[5]));
    defparam add_168_5.INIT0 = 16'h5666;
    defparam add_168_5.INIT1 = 16'h5999;
    defparam add_168_5.INJECT1_0 = "NO";
    defparam add_168_5.INJECT1_1 = "NO";
    CCU2D add_167_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ADCData_c[1]), .B1(n227[7]), .C1(GND_net), .D1(GND_net), 
          .COUT(n860), .S1(n244[1]));
    defparam add_167_1.INIT0 = 16'hF000;
    defparam add_167_1.INIT1 = 16'h5999;
    defparam add_167_1.INJECT1_0 = "NO";
    defparam add_167_1.INJECT1_1 = "NO";
    CCU2D add_166_7 (.A0(n210[5]), .B0(n210[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n210[6]), .B1(n210[7]), .C1(GND_net), .D1(GND_net), .CIN(n858), 
          .S0(n227[6]), .S1(n227[7]));
    defparam add_166_7.INIT0 = 16'h5999;
    defparam add_166_7.INIT1 = 16'h5999;
    defparam add_166_7.INJECT1_0 = "NO";
    defparam add_166_7.INJECT1_1 = "NO";
    CCU2D add_166_5 (.A0(n210[3]), .B0(n210[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n210[4]), .B1(n210[7]), .C1(GND_net), .D1(GND_net), .CIN(n857), 
          .COUT(n858), .S0(n227[4]), .S1(n227[5]));
    defparam add_166_5.INIT0 = 16'h5666;
    defparam add_166_5.INIT1 = 16'h5999;
    defparam add_166_5.INJECT1_0 = "NO";
    defparam add_166_5.INJECT1_1 = "NO";
    CCU2D add_158_7 (.A0(n261[6]), .B0(n261[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n839), 
          .S0(n278[7]));
    defparam add_158_7.INIT0 = 16'h5999;
    defparam add_158_7.INIT1 = 16'h0000;
    defparam add_158_7.INJECT1_0 = "NO";
    defparam add_158_7.INJECT1_1 = "NO";
    CCU2D add_166_3 (.A0(n210[1]), .B0(n210[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n210[2]), .B1(n210[7]), .C1(GND_net), .D1(GND_net), .CIN(n856), 
          .COUT(n857), .S0(n227[2]), .S1(n227[3]));
    defparam add_166_3.INIT0 = 16'h5999;
    defparam add_166_3.INIT1 = 16'h5666;
    defparam add_166_3.INJECT1_0 = "NO";
    defparam add_166_3.INJECT1_1 = "NO";
    CCU2D add_162_5 (.A0(n884[13]), .B0(n4), .C0(n683), .D0(GND_net), 
          .A1(n884[12]), .B1(n683), .C1(n884[13]), .D1(n4), .CIN(n841), 
          .COUT(n842), .S0(n159[4]), .S1(n159[5]));
    defparam add_162_5.INIT0 = 16'h8878;
    defparam add_162_5.INIT1 = 16'h9666;
    defparam add_162_5.INJECT1_0 = "NO";
    defparam add_162_5.INJECT1_1 = "NO";
    CCU2D add_166_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ADCData_c[2]), .B1(n210[7]), .C1(GND_net), .D1(GND_net), 
          .COUT(n856), .S1(n227[1]));
    defparam add_166_1.INIT0 = 16'hF000;
    defparam add_166_1.INIT1 = 16'h5999;
    defparam add_166_1.INJECT1_0 = "NO";
    defparam add_166_1.INJECT1_1 = "NO";
    LUT4 i50_1_lut (.A(n244[7]), .Z(voltage_c[4])) /* synthesis lut_function=(!(A)) */ ;
    defparam i50_1_lut.init = 16'h5555;
    CCU2D add_165_7 (.A0(n193[5]), .B0(n193[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n193[6]), .B1(n193[7]), .C1(GND_net), .D1(GND_net), .CIN(n854), 
          .S0(n210[6]), .S1(n210[7]));
    defparam add_165_7.INIT0 = 16'h5999;
    defparam add_165_7.INIT1 = 16'h5999;
    defparam add_165_7.INJECT1_0 = "NO";
    defparam add_165_7.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut (.A(n884[12]), .B(n683), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    VLO i1 (.Z(GND_net));
    LUT4 i454_3_lut_3_lut (.A(n683), .B(n884[12]), .C(n884[13]), .Z(n877)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i454_3_lut_3_lut.init = 16'h7f7f;
    LUT4 i9_2_lut (.A(n884[13]), .B(n683), .Z(n822)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i9_2_lut.init = 16'h6666;
    LUT4 i46_1_lut (.A(n176[7]), .Z(voltage_c[8])) /* synthesis lut_function=(!(A)) */ ;
    defparam i46_1_lut.init = 16'h5555;
    LUT4 i49_1_lut (.A(n227[7]), .Z(voltage_c[5])) /* synthesis lut_function=(!(A)) */ ;
    defparam i49_1_lut.init = 16'h5555;
    LUT4 i52_1_lut (.A(n278[7]), .Z(voltage_c[2])) /* synthesis lut_function=(!(A)) */ ;
    defparam i52_1_lut.init = 16'h5555;
    LUT4 i47_1_lut (.A(n193[7]), .Z(voltage_c[7])) /* synthesis lut_function=(!(A)) */ ;
    defparam i47_1_lut.init = 16'h5555;
    CCU2D add_165_5 (.A0(n193[3]), .B0(n193[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n193[4]), .B1(n193[7]), .C1(GND_net), .D1(GND_net), .CIN(n853), 
          .COUT(n854), .S0(n210[4]), .S1(n210[5]));
    defparam add_165_5.INIT0 = 16'h5666;
    defparam add_165_5.INIT1 = 16'h5999;
    defparam add_165_5.INJECT1_0 = "NO";
    defparam add_165_5.INJECT1_1 = "NO";
    CCU2D add_165_3 (.A0(n193[1]), .B0(n193[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n193[2]), .B1(n193[7]), .C1(GND_net), .D1(GND_net), .CIN(n852), 
          .COUT(n853), .S0(n210[2]), .S1(n210[3]));
    defparam add_165_3.INIT0 = 16'h5999;
    defparam add_165_3.INIT1 = 16'h5666;
    defparam add_165_3.INJECT1_0 = "NO";
    defparam add_165_3.INJECT1_1 = "NO";
    CCU2D add_168_3 (.A0(n244[1]), .B0(n244[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n244[2]), .B1(n244[7]), .C1(GND_net), .D1(GND_net), .CIN(n864), 
          .COUT(n865), .S0(n261[2]), .S1(n261[3]));
    defparam add_168_3.INIT0 = 16'h5999;
    defparam add_168_3.INIT1 = 16'h5666;
    defparam add_168_3.INJECT1_0 = "NO";
    defparam add_168_3.INJECT1_1 = "NO";
    CCU2D add_413_6 (.A0(n795[8]), .B0(ADCData_c[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n795[9]), .B1(ADCData_c[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n874), .COUT(n875), .S0(n765[8]), .S1(n683));
    defparam add_413_6.INIT0 = 16'h5666;
    defparam add_413_6.INIT1 = 16'h5666;
    defparam add_413_6.INJECT1_0 = "NO";
    defparam add_413_6.INJECT1_1 = "NO";
    CCU2D add_413_4 (.A0(n795[6]), .B0(ADCData_c[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n795[7]), .B1(ADCData_c[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n873), .COUT(n874), .S0(n765[6]), .S1(n765[7]));
    defparam add_413_4.INIT0 = 16'h5666;
    defparam add_413_4.INIT1 = 16'h5666;
    defparam add_413_4.INJECT1_0 = "NO";
    defparam add_413_4.INJECT1_1 = "NO";
    CCU2D add_165_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ADCData_c[3]), .B1(n193[7]), .C1(GND_net), .D1(GND_net), 
          .COUT(n852), .S1(n210[1]));
    defparam add_165_1.INIT0 = 16'hF000;
    defparam add_165_1.INIT1 = 16'h5999;
    defparam add_165_1.INJECT1_0 = "NO";
    defparam add_165_1.INJECT1_1 = "NO";
    CCU2D add_164_7 (.A0(n176[5]), .B0(n176[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n176[6]), .B1(n176[7]), .C1(GND_net), .D1(GND_net), .CIN(n850), 
          .S0(n193[6]), .S1(n193[7]));
    defparam add_164_7.INIT0 = 16'h5999;
    defparam add_164_7.INIT1 = 16'h5999;
    defparam add_164_7.INJECT1_0 = "NO";
    defparam add_164_7.INJECT1_1 = "NO";
    CCU2D add_164_5 (.A0(n176[3]), .B0(n176[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n176[4]), .B1(n176[7]), .C1(GND_net), .D1(GND_net), .CIN(n849), 
          .COUT(n850), .S0(n193[4]), .S1(n193[5]));
    defparam add_164_5.INIT0 = 16'h5666;
    defparam add_164_5.INIT1 = 16'h5999;
    defparam add_164_5.INJECT1_0 = "NO";
    defparam add_164_5.INJECT1_1 = "NO";
    CCU2D add_164_3 (.A0(n176[1]), .B0(n176[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n176[2]), .B1(n176[7]), .C1(GND_net), .D1(GND_net), .CIN(n848), 
          .COUT(n849), .S0(n193[2]), .S1(n193[3]));
    defparam add_164_3.INIT0 = 16'h5999;
    defparam add_164_3.INIT1 = 16'h5666;
    defparam add_164_3.INJECT1_0 = "NO";
    defparam add_164_3.INJECT1_1 = "NO";
    CCU2D add_167_3 (.A0(n227[1]), .B0(n227[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n227[2]), .B1(n227[7]), .C1(GND_net), .D1(GND_net), .CIN(n860), 
          .COUT(n861), .S0(n244[2]), .S1(n244[3]));
    defparam add_167_3.INIT0 = 16'h5999;
    defparam add_167_3.INIT1 = 16'h5666;
    defparam add_167_3.INJECT1_0 = "NO";
    defparam add_167_3.INJECT1_1 = "NO";
    IB ADCData_pad_0 (.I(ADCData[0]), .O(ADCData_c[0]));
    IB ADCData_pad_1 (.I(ADCData[1]), .O(ADCData_c[1]));
    IB ADCData_pad_2 (.I(ADCData[2]), .O(ADCData_c[2]));
    IB ADCData_pad_3 (.I(ADCData[3]), .O(ADCData_c[3]));
    IB ADCData_pad_4 (.I(ADCData[4]), .O(ADCData_c[4]));
    CCU2D add_164_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n765[4]), .B1(n176[7]), .C1(GND_net), .D1(GND_net), .COUT(n848), 
          .S1(n193[1]));
    defparam add_164_1.INIT0 = 16'hF000;
    defparam add_164_1.INIT1 = 16'h5999;
    defparam add_164_1.INJECT1_0 = "NO";
    defparam add_164_1.INJECT1_1 = "NO";
    IB ADCData_pad_5 (.I(ADCData[5]), .O(ADCData_c[5]));
    CCU2D add_163_7 (.A0(n159[5]), .B0(n159[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n159[6]), .B1(n159[7]), .C1(GND_net), .D1(GND_net), .CIN(n846), 
          .S0(n176[6]), .S1(n176[7]));
    defparam add_163_7.INIT0 = 16'h5999;
    defparam add_163_7.INIT1 = 16'h5999;
    defparam add_163_7.INJECT1_0 = "NO";
    defparam add_163_7.INJECT1_1 = "NO";
    OB voltage_pad_3 (.I(voltage_c[3]), .O(voltage[3]));
    CCU2D add_158_3 (.A0(n261[2]), .B0(n261[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n261[3]), .B1(n261[7]), .C1(GND_net), .D1(GND_net), .CIN(n837), 
          .COUT(n838));
    defparam add_158_3.INIT0 = 16'h5666;
    defparam add_158_3.INIT1 = 16'h5666;
    defparam add_158_3.INJECT1_0 = "NO";
    defparam add_158_3.INJECT1_1 = "NO";
    OB voltage_pad_6 (.I(voltage_c[6]), .O(voltage[6]));
    CCU2D add_163_5 (.A0(n159[3]), .B0(n159[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n159[4]), .B1(n159[7]), .C1(GND_net), .D1(GND_net), .CIN(n845), 
          .COUT(n846), .S0(n176[4]), .S1(n176[5]));
    defparam add_163_5.INIT0 = 16'h5666;
    defparam add_163_5.INIT1 = 16'h5999;
    defparam add_163_5.INJECT1_0 = "NO";
    defparam add_163_5.INJECT1_1 = "NO";
    OB voltage_pad_7 (.I(voltage_c[7]), .O(voltage[7]));
    CCU2D add_163_3 (.A0(n159[1]), .B0(n159[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n159[2]), .B1(n159[7]), .C1(GND_net), .D1(GND_net), .CIN(n844), 
          .COUT(n845), .S0(n176[2]), .S1(n176[3]));
    defparam add_163_3.INIT0 = 16'h5999;
    defparam add_163_3.INIT1 = 16'h5666;
    defparam add_163_3.INJECT1_0 = "NO";
    defparam add_163_3.INJECT1_1 = "NO";
    CCU2D add_417_2 (.A0(ADCData_c[0]), .B0(ADCData_c[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ADCData_c[1]), .B1(ADCData_c[6]), .C1(GND_net), 
          .D1(GND_net), .COUT(n869), .S1(n795[6]));
    defparam add_417_2.INIT0 = 16'h7000;
    defparam add_417_2.INIT1 = 16'h5666;
    defparam add_417_2.INJECT1_0 = "NO";
    defparam add_417_2.INJECT1_1 = "NO";
    CCU2D add_167_7 (.A0(n227[5]), .B0(n227[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n227[6]), .B1(n227[7]), .C1(GND_net), .D1(GND_net), .CIN(n862), 
          .S0(n244[6]), .S1(n244[7]));
    defparam add_167_7.INIT0 = 16'h5999;
    defparam add_167_7.INIT1 = 16'h5999;
    defparam add_167_7.INJECT1_0 = "NO";
    defparam add_167_7.INJECT1_1 = "NO";
    CCU2D add_162_3 (.A0(n884[13]), .B0(n4), .C0(n765[7]), .D0(GND_net), 
          .A1(n884[13]), .B1(n4), .C1(n765[8]), .D1(GND_net), .CIN(n840), 
          .COUT(n841), .S0(n159[2]), .S1(n159[3]));
    defparam add_162_3.INIT0 = 16'h7878;
    defparam add_162_3.INIT1 = 16'h8787;
    defparam add_162_3.INJECT1_0 = "NO";
    defparam add_162_3.INJECT1_1 = "NO";
    OB voltage_pad_2 (.I(voltage_c[2]), .O(voltage[2]));
    CCU2D add_417_4 (.A0(ADCData_c[2]), .B0(ADCData_c[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ADCData_c[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n869), .COUT(n870), .S0(n795[7]), .S1(n795[8]));
    defparam add_417_4.INIT0 = 16'h5666;
    defparam add_417_4.INIT1 = 16'h5aaa;
    defparam add_417_4.INJECT1_0 = "NO";
    defparam add_417_4.INJECT1_1 = "NO";
    CCU2D add_168_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ADCData_c[0]), .B1(n244[7]), .C1(GND_net), .D1(GND_net), 
          .COUT(n864), .S1(n261[1]));
    defparam add_168_1.INIT0 = 16'hF000;
    defparam add_168_1.INIT1 = 16'h5999;
    defparam add_168_1.INJECT1_0 = "NO";
    defparam add_168_1.INJECT1_1 = "NO";
    OBZ voltage_pad_0 (.I(GND_net), .T(VCC_net), .O(voltage[0]));
    CCU2D add_163_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n765[5]), .B1(n159[7]), .C1(GND_net), .D1(GND_net), .COUT(n844), 
          .S1(n176[1]));
    defparam add_163_1.INIT0 = 16'hF000;
    defparam add_163_1.INIT1 = 16'h5999;
    defparam add_163_1.INJECT1_0 = "NO";
    defparam add_163_1.INJECT1_1 = "NO";
    OBZ voltage_pad_1 (.I(GND_net), .T(VCC_net), .O(voltage[1]));
    CCU2D add_158_5 (.A0(n261[4]), .B0(n261[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n261[5]), .B1(n261[7]), .C1(GND_net), .D1(GND_net), .CIN(n838), 
          .COUT(n839));
    defparam add_158_5.INIT0 = 16'h5999;
    defparam add_158_5.INIT1 = 16'h5999;
    defparam add_158_5.INJECT1_0 = "NO";
    defparam add_158_5.INJECT1_1 = "NO";
    OB voltage_pad_8 (.I(voltage_c[8]), .O(voltage[8]));
    IB ADCData_pad_6 (.I(ADCData[6]), .O(ADCData_c[6]));
    CCU2D add_162_7 (.A0(n884[13]), .B0(n4), .C0(n884[12]), .D0(n822), 
          .A1(n884[13]), .B1(n4), .C1(n877), .D1(GND_net), .CIN(n842), 
          .S0(n159[6]), .S1(n159[7]));
    defparam add_162_7.INIT0 = 16'h7282;
    defparam add_162_7.INIT1 = 16'h7878;
    defparam add_162_7.INJECT1_0 = "NO";
    defparam add_162_7.INJECT1_1 = "NO";
    LUT4 i140_1_lut (.A(n210[7]), .Z(voltage_c[6])) /* synthesis lut_function=(!(A)) */ ;
    defparam i140_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i51_1_lut (.A(n261[7]), .Z(voltage_c[3])) /* synthesis lut_function=(!(A)) */ ;
    defparam i51_1_lut.init = 16'h5555;
    CCU2D add_158_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n261[1]), .B1(n261[7]), .C1(GND_net), .D1(GND_net), .COUT(n837));
    defparam add_158_1.INIT0 = 16'hF000;
    defparam add_158_1.INIT1 = 16'h5999;
    defparam add_158_1.INJECT1_0 = "NO";
    defparam add_158_1.INJECT1_1 = "NO";
    IB ADCData_pad_7 (.I(ADCData[7]), .O(ADCData_c[7]));
    CCU2D add_162_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n884[13]), .B1(n4), .C1(n765[6]), .D1(GND_net), .COUT(n840), 
          .S1(n159[1]));
    defparam add_162_1.INIT0 = 16'hF000;
    defparam add_162_1.INIT1 = 16'h7878;
    defparam add_162_1.INJECT1_0 = "NO";
    defparam add_162_1.INJECT1_1 = "NO";
    OB voltage_pad_4 (.I(voltage_c[4]), .O(voltage[4]));
    CCU2D add_413_8 (.A0(n795[10]), .B0(ADCData_c[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n795[11]), .B1(ADCData_c[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n875), .S0(n884[12]), .S1(n884[13]));
    defparam add_413_8.INIT0 = 16'h5666;
    defparam add_413_8.INIT1 = 16'h5666;
    defparam add_413_8.INJECT1_0 = "NO";
    defparam add_413_8.INJECT1_1 = "NO";
    CCU2D add_413_2 (.A0(ADCData_c[4]), .B0(ADCData_c[0]), .C0(GND_net), 
          .D0(GND_net), .A1(ADCData_c[0]), .B1(ADCData_c[5]), .C1(ADCData_c[1]), 
          .D1(GND_net), .COUT(n873), .S1(n765[5]));
    defparam add_413_2.INIT0 = 16'h7000;
    defparam add_413_2.INIT1 = 16'h9696;
    defparam add_413_2.INJECT1_0 = "NO";
    defparam add_413_2.INJECT1_1 = "NO";
    CCU2D add_417_8 (.A0(ADCData_c[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n871), 
          .S0(n795[11]));
    defparam add_417_8.INIT0 = 16'h5aaa;
    defparam add_417_8.INIT1 = 16'h0000;
    defparam add_417_8.INJECT1_0 = "NO";
    defparam add_417_8.INJECT1_1 = "NO";
    CCU2D add_417_6 (.A0(ADCData_c[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ADCData_c[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n870), .COUT(n871), .S0(n795[9]), .S1(n795[10]));
    defparam add_417_6.INIT0 = 16'h5aaa;
    defparam add_417_6.INIT1 = 16'h5aaa;
    defparam add_417_6.INJECT1_0 = "NO";
    defparam add_417_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

