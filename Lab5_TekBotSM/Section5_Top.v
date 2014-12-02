module Section5_Top(
	input DigitalLDir,
	input DigitalRDir,
	input reset_n,	
	output [3:0] outputs
	/*output Len,
	output Ldir,
	output Ren,
	output Rdir */
		);
		
		wire clk;		//used for the oscillator's 2.08 MHz clock
		wire clk_2;		//used for slowed down, 5 Hz clock
			
			
		//This is an instance of a special, built in module that accesses our chip's oscillator
		OSCH #("2.08") osc_int (					//"2.03" specifies the operating frequency, 2.03 MHz. Other clock frequencies can be found in the MachX02's documentation
			.STDBY(1'b0),							//Specifies active state
			.OSC(clk),								//Outputs clock signal to 'clk' net
			.SEDSTDBY());							//Leaves SEDSTDBY pin unconnected
		
		
		//This module is instantiated from another file, 'Clock_Counter.v'
		//It will take an input clock, slow it down based on parameters set inside of the module, and output the new clock. Reset functionality is also built-in
		clock_counter counter_1(
			.clk_i(clk),
			.reset_n(reset_n),
			.clk_o(clk_2));
			
		//This module is instantiated from another file, 'State_Machine.v'
		//It contains a Moore state machine that will take a clock and reset, and output LED combinations
		Sec5_SM FSM_1( 
			.DigitalLDir(DigitalLDir),
			.DigitalRDir(DigitalRDir),
			.clk_i(clk_2),
			.reset_n(reset_n),
			.outputs(outputs)
			/*.Len(Len),
			.Ldir(Ldir),
			.Ren(Ren),
			.Rdir(Rdir)*/
			);
		

endmodule