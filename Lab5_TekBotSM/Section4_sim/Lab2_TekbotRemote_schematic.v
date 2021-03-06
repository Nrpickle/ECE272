/* Verilog model created from schematic Lab2_TekbotRemote_schematic.sch -- May 12, 2014 23:30 */

module Lab2_TekbotRemote_schematic( A, B, C, Ld, Le, Rd, Re );
 input A;
 input B;
 input C;
output Ld;
output Le;
output Rd;
output Re;
wire N_16;
wire N_17;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_10;



OR3 I13 ( .A(N_13), .B(N_14), .C(B), .Z(Ld) );
AND2 I14 ( .A(N_16), .B(C), .Z(N_15) );
AND2 I15 ( .A(N_16), .B(Rd), .Z(N_13) );
AND2 I16 ( .A(A), .B(C), .Z(N_14) );
OR2 I17 ( .A(N_15), .B(N_17), .Z(N_11) );
OR2 I18 ( .A(N_17), .B(N_13), .Z(N_12) );
INV I21 ( .A(A), .Z(N_16) );
INV I23 ( .A(N_11), .Z(Le) );
INV I24 ( .A(N_12), .Z(Re) );
INV I19 ( .A(B), .Z(N_17) );
INV I20 ( .A(C), .Z(Rd) );

endmodule // Lab2_TekbotRemote_schematic
