module determineNum(
	input [2:0] sel,
	input [7:0] ADCData,
	input reset_n,
	output reg [3:0] dispNum
	);

	parameter D1 = 3'b000;
	parameter D2 = 3'b001;
	parameter D3 = 3'b011;
	parameter D4 = 3'b100;
	
	
	always @ (*)
		begin
			case(sel)
				D1:		 dispNum = ADCData % 10;
				D2:		 dispNum = ADCData / 10 - (ADCData/100)*10;
				D3: 	 dispNum = ADCData / 100 - (ADCData/1000)*10;
				D4:		 dispNum = ADCData / 1000;
				default: dispNum = 4'b1110;
			endcase
			/*
			case(sel)
				D1:		 dispNum = ADCData - (ADCData/10)*10;
				D2:		 dispNum = ADCData / 10 - (ADCData/100)*10;
				D3: 	 dispNum = ADCData / 100 - (ADCData/1000)*10;
				D4:		 dispNum = ADCData / 1000;
				default: dispNum = 4'b1110;
			endcase
			*/
		end
		
 

endmodule 