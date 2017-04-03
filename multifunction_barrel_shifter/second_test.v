`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:30:56 01/17/2017
// Design Name:   second_module
// Module Name:   C:/Users/algha/Desktop/lab_1/second_test.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: second_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module second_test;

	// Inputs
	reg [7:0] a_in;
	reg [2:0] amt_in;
	reg sel_in;

	// Outputs
	wire [7:0] out_out;

	// Instantiate the Unit Under Test (UUT)
	second_module uut (
		.a_in(a_in), 
		.amt_in(amt_in), 
		.sel_in(sel_in), 
		.out_out(out_out)
	);

	initial begin
		// Initialize Inputs
		a_in = 8'b00001111;
		amt_in = 2;
		sel_in = 0;
		#100;
		
		a_in = 8'b00001111;
		amt_in = 2;
		sel_in = 1;
		#100;
	end
      
endmodule

