/* Verilog model created from schematic section2_schematic.sch -- May 12, 2014 23:54 */

module section2_schematic( A, B, C, Ld, Le, Rd, Re );
 input A;
 input B;
 input C;
output Ld;
output Le;
output Rd;
output Re;
wire N_8;
wire N_1;
wire N_3;
wire N_4;



AND3 I1 ( .A(Ld), .B(N_8), .C(Rd), .Z(N_4) );
AND2 I2 ( .A(A), .B(B), .Z(N_1) );
AND2 I3 ( .A(B), .B(C), .Z(N_3) );
OR2 I4 ( .A(N_1), .B(N_4), .Z(Le) );
OR2 I5 ( .A(N_4), .B(N_3), .Z(Re) );
INV I6 ( .A(C), .Z(Rd) );
INV I8 ( .A(A), .Z(Ld) );
INV I7 ( .A(B), .Z(N_8) );

endmodule // section2_schematic
