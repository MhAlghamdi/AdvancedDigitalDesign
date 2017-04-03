`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:38:26 03/10/2017
// Design Name:   freq_divider
// Module Name:   D:/Users/algha/Desktop/PMW/freq_divider_tb.v
// Project Name:  PMW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: freq_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module freq_divider_tb;

	// Inputs
	reg clk;

	// Outputs
	wire new_clk;

	// Instantiate the Unit Under Test (UUT)
	freq_divider uut (
		.clk(clk), 
		.new_clk(new_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		forever
		#5 clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

