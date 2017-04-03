`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:54:33 03/15/2017
// Design Name:   nor_three
// Module Name:   C:/Users/algha/Desktop/New folder/nand/nor_three_tb.v
// Project Name:  nand
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nor_three
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nor_three_tb;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	nor_three uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
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
		
		A = 0;
		B = 0;
		C = 0;
        #100;
		// Add stimulus here

	end
      
endmodule

