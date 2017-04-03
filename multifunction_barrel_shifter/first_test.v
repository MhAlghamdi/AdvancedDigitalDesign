`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:55:46 01/20/2017
// Design Name:   first_module
// Module Name:   D:/algha/Dropbox/CSUSB/CSE 311/Labs/lab_1/first_test.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: first_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module first_test;

	// Inputs
	reg [7:0] a_in;
	reg [2:0] amt_in;
	reg sel_in;

	// Outputs
	wire [7:0] out_out;

	// Instantiate the Unit Under Test (UUT)
	first_module uut (
		.a_in(a_in), 
		.amt_in(amt_in), 
		.sel_in(sel_in), 
		.out_out(out_out)
	);

	initial begin
		// test vector 1
		a_in = 'b11110000;
		amt_in = 2;
		sel_in = 0;
		#500;
		// test vector 2
		a_in = 'b11110000;
		amt_in = 2;
		sel_in = 1;
		#500;
	end
      
endmodule

