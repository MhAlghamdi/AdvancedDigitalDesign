`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:27:39 03/08/2017
// Design Name:   babbage
// Module Name:   D:/Users/algha/Desktop/lab_4/babbage/babbage_tb.v
// Project Name:  babbage
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: babbage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module babbage_tb;

	// Inputs
	reg clk;
	reg reset;
	reg start;
	reg [3:0] i;

	// Outputs
	wire done_tick;
	wire [7:0] f;

	// Instantiate the Unit Under Test (UUT)
	babbage uut (
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.i(i), 
		.done_tick(done_tick), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		start = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		start = 1;
		i = 0;
		
		#100;
		start = 1;
		i = 1;
		
		#100;
		start = 1;
		i = 2;
		
		#100;
		start = 1;
		i = 3; 
		
		#100;
		start = 0;
		i = 0; 
	end
      
	  always #10 clk <= ~clk;
	  
endmodule

