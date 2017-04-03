`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:50:03 03/15/2017
// Design Name:   nand_three
// Module Name:   C:/Users/algha/Desktop/New folder/nand/nand_three_tb.v
// Project Name:  nand
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nand_three
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nand_three_tb;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	nand_three uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		$monitor("[A = %b, B = %b, C = %b, Y = %b];", A, B, C, Y);
        
		// Add stimulus here
		A = 1;
		B = 0;
		C = 0;
		#100;
		
		A = 0;
		B = 0;
		C = 0;
		#100;
		
		A = 0;
		B = 1;
		C = 0;
		#100;
		
		A = 0;
		B = 0;
		C = 1;
		#100;
		
		A = 1;
		B = 1;
		C = 1;
		#100;
		
		
		A = 0;
		B = 1;
		C = 1;
		#100;
	end
      
endmodule

