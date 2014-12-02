module Sec6_Top(
	input [7:0] ADCData,
	input reset_n,
	output [2:0] sel,
	output [6:0] segments
	);
	
	
	wire clk;
	wire clk_slow;
	wire [3:0] dispNum;
	
	//This is an instance of a special, built in module that accesses our chip's oscillator
	OSCH #("2.08") osc_int (					//"2.03" specifies the operating frequency, 2.03 MHz. Other clock frequencies can be found in the MachX02's documentation
		.STDBY(1'b0),							//Specifies active state
		.OSC(clk),								//Outputs clock signal to 'clk' net
		.SEDSTDBY());							//Leaves SEDSTDBY pin unconnected
			
	clock_counter counter_1(
		.clk_i(clk),
		.reset_n(reset_n),
		.clk_o(clk_slow)
		);
	
	Sec6_SM FSM_1(
		.clk_i(clk_slow),
		.reset_n(reset_n),
		.sel(sel)
		);
	
	determineNum det(
		.sel(sel),
		.ADCData(ADCData), 
		.reset_n(reset_n),
		.dispNum(dispNum)
		);
	
	sevenSeg segDecoder(
		.data(dispNum),
		.segments(segments)
		);
		
endmodule