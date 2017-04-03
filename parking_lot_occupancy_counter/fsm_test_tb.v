`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:20 02/27/2017
// Design Name:   fsm_test
// Module Name:   X:/CSUSB/CSE 311/Labs/lab_3/lab_3/parking_lot_occupancy_counter/fsm_test_tb.v
// Project Name:  parking_lot_occupancy_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm_test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_test_tb;

	// Inputs
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire [3:0] occupancy;

	// Instantiate the Unit Under Test (UUT)
	fsm_test uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.occupancy(occupancy)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

