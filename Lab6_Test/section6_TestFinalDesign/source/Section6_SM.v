module Sec6_SM(
	//input [7:0] data,
	input clk_i,
	input reset_n,
	output reg [2:0] sel,
	output reg digit
	//output [6:0] segments
	);
	
	reg [1:0] state;
	reg [1:0] state_next;
	
	//reg [3:0] num_int;  //Internal number storage
	
	parameter S0 = 2'b00;  //Disp Digit 1
	parameter S1 = 2'b01;  //Disp Digit 2
	parameter S2 = 2'b10;  //Disp Digit 3
	parameter S3 = 2'b11;  //Disp Digit 4
	
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
				S0: 	 state_next = S1;
				S1: 	 state_next = S2;
				S2: 	 state_next = S3;
				S3: 	 state_next = S0;
				default: state_next = S0;
			endcase
		end
	
	//"Determine #" Block
	always @ (*)
		begin
			case (state)
				S0:
				begin
					sel = 3'b000;  //Select Digit 1
					digit = 1;
				end
				S1:
				begin
					sel = 3'b001;  //Select Digit 2
					digit = 1;
				end
				S2:
				begin
					sel = 3'b011;  //Select Digit 3
					digit = 0;
				end
				S3:
				begin
					sel = 3'b100;  //Select Digit 4
					digit = 1;
				end
			endcase
		end
	
	
endmodule