`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:12:58 01/17/2017
// Design Name:   right_shifter
// Module Name:   C:/Users/005133254/Desktop/cse311_labs/lab_1/right_testBench.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: right_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module right_testBench;

	// Inputs
	reg [7:0] a;
	reg [2:0] amt;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	// Instantiate the Unit Under Test (UUT)
	right_shifter uut (
		.a(a), 
		.amt(amt), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 6;
		amt = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      
endmodule

