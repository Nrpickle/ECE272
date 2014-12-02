module Sec5_SM(
	input DigitalLDir,
	input DigitalRDir,
	input clk_i,
	input reset_n,
	output reg [3:0] outputs
//	output reg Len,
//	output reg Ldir,
//	output reg Ren,
//	output reg Rdir
	);
	
	reg [2:0] state;
	reg [2:0] state_next;
	
	parameter S0 = 3'b000;  //Moving forward
	parameter S1 = 3'b001;  //Moving backward (right bumper)
	parameter S2 = 3'b010;  //Moving backward (right bumper)
	parameter S3 = 3'b011;  //Spinning left   (right bumper)
	parameter S4 = 3'b100;  //Moving backward (left bumper)
	parameter S5 = 3'b101;  //Moving backward (left bumper)
	parameter S6 = 3'b110;  //Spinning right  (left bumper)
	
	
	//Async reset
	always @ (posedge clk_i, negedge reset_n)
		begin
			if(!reset_n)
				state <= S0;
			else
				state <= state_next;
				
		end
	
	
	//Next state logic
	always @ (*)
		begin
			case(state)
				S0: 
				begin
					if( !DigitalLDir )		state_next <= S4;
					else if( !DigitalRDir )	state_next <= S1;
					else 					state_next <= S0;
				end
				S1:							state_next = S2;
				S2:							state_next = S3;
				S3:							state_next = S0;
				S4:							state_next = S5;
				S5:							state_next = S6;
				S6:							state_next = S0;

				default: state_next = S0;
			endcase
		end
	
	
	//Output status logic
	always @ (*)
		begin
			case (state)
				S0:
				begin
					outputs = 4'b0101;
//					Len <= 0; Ldir <= 1; Ren <= 0; Rdir <= 1;
				end
				S1:
				begin
					outputs = 4'b0000;
//					Len <= 0; Ldir <= 0; Ren <= 0; Rdir <= 0;
				end
				S2:
				begin
					outputs = 4'b0000;
//					Len <= 0; Ldir <= 1; Ren <= 0; Rdir <= 0;
				end
				S3:
				begin
					outputs = 4'b0100;
//					Len <= 0; Ldir <= 1; Ren <= 0; Rdir <= 0;
				end
				S4:
				begin
					outputs = 4'b0000;
//					Len <= 0; Ldir <= 0; Ren <= 0; Rdir <= 0;
				end
				S5:
				begin
					outputs = 4'b0000;
//					Len <= 0; Ldir <= 0; Ren <= 0; Rdir <= 1;
				end
				S6:
				begin
					outputs = 4'b0001;
//					Len <= 0; Ldir <= 0; Ren <= 0; Rdir <= 1;
				end
				default:
				begin
					outputs = 4'b0101;
				end
			endcase
		end
				
	
endmodule


/*
module mux2(
			input d0, 
			input d1,  
			input s, 
			output y);

	assign y = (s) ? d1 : d0;

endmodule


module inv (input A,
			output Z);
	assign Z = ~A;
	
endmodule

*/