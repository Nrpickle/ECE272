module state_machine( //example of a Moore type state machine
	input clk_i,
	input reset_n,
	
	output reg [7:0] LEDs
		);
		
		//state and next state registers
		reg [1:0] state;
		reg [1:0] state_n;
		
		//each possible value of the state register is given a unique name for easier use later
		parameter S0 = 2'b00;
		parameter S1 = 2'b01;
		parameter S2 = 2'b10;
		parameter S3 = 2'b11;

		//asynchronous reset will set the state to the start, S0, otherwise, the state is changed on the positive edge of the clock signal
		always @ (posedge clk_i, negedge reset_n)
			begin
				if(!reset_n)
					state = S0;
				else
					state = state_n;

			end

		//this section defines what the next state should be for each possible state. in this implementation, it simply rotates through each state automatically
		always @ (*)
			begin
				case(state)
					S0: state_n = S1;
					S1: state_n = S2;
					S2: state_n = S3;
					S3:	state_n = S0;
					
					default: state_n = S0;
				endcase
			end
		
		//this is the output definition section of the state machine. outputs are based on which state the state machine is currently on
		//hex values are used for the LEDs since there are 8 of them and hex values are an effective way of represiting this size
		//numbers are represented by the number of bits (not digits!), an apostrophe, the base system, then the value
		//common bases are binary, b, octal, o, decimal, d, hexadecimal, h
		always @ (*)
			begin
				if(state == S0)
					LEDs = 8'h88;
				else if(state == S1)
					LEDs = 8'h44;
				else if(state == S2)
					LEDs = 8'h22;
				else
					LEDs = 8'h11;
			end
		
		
endmodule