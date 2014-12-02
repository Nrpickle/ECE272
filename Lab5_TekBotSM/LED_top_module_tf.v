

// TOOL:     vlog2tf
// DATE:     Wed May 28 10:20:52 2014
 
// TITLE:    Lattice Semiconductor Corporation
// MODULE:   LED_top_module
// DESIGN:   LED_top_module
// FILENAME: LED_top_module_tf.v
// PROJECT:  Unknown
// VERSION:  2.0
// This file is auto generated by the Diamond


`timescale 1 ns / 1 ns

// Define Module for Test Fixture
module LED_top_module_tf();

// Inputs
    reg DigitalLDir;
    reg DigitalRDir;
    reg reset_n;


// Outputs
    wire Len;
    wire Ldir;
    wire Ren;
    wire Rdir;


// Bidirs


// Instantiate the UUT
// Please check and add your parameters manually
    LED_top_module UUT (
        .DigitalLDir(DigitalLDir), 
        .DigitalRDir(DigitalRDir), 
        .reset_n(reset_n), 
        .Len(Len), 
        .Ldir(Ldir), 
        .Ren(Ren), 
        .Rdir(Rdir)
        );


// Initialize Inputs
// You can add your stimulus here
    initial begin
            DigitalLDir = 0;
            DigitalRDir = 0;
            reset_n = 0;
    end

endmodule // LED_top_module_tf