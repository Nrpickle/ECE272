module Lolhi(
	input A,
	input B,
	input C,
	input AnalogLDir,
	input AnalogRDir,
	output Len,
	output Ldir,
	output Ren,
	output Rdir
	);
	
	wire Z_A;
	wire Z_B;
	wire Z_C;
	wire Ldir_int;
	wire Len_int;
	wire Rdir_int;
	wire Ren_int;
	wire Analog_select;
	supply0 GND;
	
	assign Analog_select = AnalogLDir & AnalogRDir;
	
	inverter_nick_yay invA(.A(A), .Z(Z_A));
	inverter_nick_yay invB(.A(B), .Z(Z_B));
	inverter_nick_yay invC(.A(C), .Z(Z_C));
	
	section2_schematic lab2Logic(.A(Z_A),
									  .B(Z_B),
									  .C(Z_C),
									  .Ld(Ldir_int),
									  .Le(Len_int),
									  .Rd(Rdir_int),
									  .Re(Ren_int)
									  );
	
	mux2 mux_1(.d0(AnalogLDir), .d1(Ldir_int), .s(Analog_select), .y(Ldir));
	mux2 mux_2(.d0(GND), 		.d1(Len_int),  .s(Analog_select), .y(Len));
	mux2 mux_3(.d0(AnalogRDir), .d1(Rdir_int), .s(Analog_select), .y(Rdir));
	mux2 mux_4(.d0(GND), 		.d1(Ren_int),  .s(Analog_select), .y(Ren));
	
	
endmodule



module mux2(
			input d0, 
			input d1,  
			input s, 
			output y);

	assign y = (s) ? d1 : d0;

endmodule


module inverter_nick_yay (input A,
						  output Z);
	assign Z = ~A;
	
endmodule

