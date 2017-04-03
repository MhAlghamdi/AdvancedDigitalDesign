`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:42:46 02/27/2017
// Design Name:   top
// Module Name:   D:/Users/algha/Desktop/lab_3/parking_lot_occupancy_counter/topTestBench.v
// Project Name:  parking_lot_occupancy_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module topTestBench;

	// Inputs
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire db_a;
	wire db_b;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.db_a(db_a), 
		.db_b(db_b), 
	);
	

      
endmodule
