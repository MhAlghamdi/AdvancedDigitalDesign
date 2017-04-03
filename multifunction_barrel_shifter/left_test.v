`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:40 01/17/2017
// Design Name:   left_shifter
// Module Name:   C:/Users/005133254/Desktop/cse311_labs/lab_1/left_test.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: left_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module left_test;

	// Inputs
	reg [7:0] a;
	reg [2:0] amt;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	left_shifter uut (
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

