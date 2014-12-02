

// TOOL:     vlog2tf
// DATE:     Wed May 28 10:38:34 2014
 
// TITLE:    Lattice Semiconductor Corporation
// MODULE:   Section5_Top
// DESIGN:   Section5_Top
// FILENAME: Section5_Top_tf.v
// PROJECT:  Unknown
// VERSION:  2.0
// This file is auto generated by the Diamond


`timescale 1 ms / 1 ms

// Define Module for Test Fixture
module Section5_Top_tf();

// Inputs
    reg DigitalLDir;
    reg DigitalRDir;
    reg reset_n;


// Outputs
    wire [3:0] outputs;


// Bidirs


// Instantiate the UUT
// Please check and add your parameters manually
    Section5_Top UUT (
        .DigitalLDir(DigitalLDir), 
        .DigitalRDir(DigitalRDir), 
        .reset_n(reset_n), 
        .outputs(outputs)
        );


// Initialize Inputs
// You can add your stimulus here
    initial begin
            DigitalLDir = 1; DigitalRDir = 1; reset_n = 1;
	#1      DigitalLDir = 1; DigitalRDir = 1; reset_n = 0;
	#1      DigitalLDir = 1; DigitalRDir = 1; reset_n = 1;
	#100     DigitalLDir = 1; DigitalRDir = 0; reset_n = 1;
	#500     DigitalLDir = 1; DigitalRDir = 1; reset_n = 1;
    end

endmodule // Section5_Top_tf