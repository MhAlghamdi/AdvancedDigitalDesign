`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:40:25 03/15/2017
// Design Name:   nor_two
// Module Name:   C:/Users/algha/Desktop/New folder/nand/nor_two_tb.v
// Project Name:  nand
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nor_two
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nor_two_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	nor_two uut (
		.A(A), 
		.B(B), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#100;
		
		A = 0;
		B = 1;
		#100;
		
		A = 1;
		B = 0;
		#100;
		
		A = 1;
		B = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

