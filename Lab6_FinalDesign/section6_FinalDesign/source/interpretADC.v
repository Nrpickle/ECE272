module interpretADC(
	input [7:0] ADCData,
	output reg [8:0] voltage
	);
	
	always @ (*)
		voltage = (((ADCData) * 196) /100);

endmodule