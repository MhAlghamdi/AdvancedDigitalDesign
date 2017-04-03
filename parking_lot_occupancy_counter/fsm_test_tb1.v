`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:01 02/27/2017
// Design Name:   fsm_test
// Module Name:   X:/CSUSB/CSE 311/Labs/lab_3/lab_3/parking_lot_occupancy_counter/fsm_test_tb1.v
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

module fsm_test_tb1;

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
		//start a clock
		forever begin 
			#5 clk = ~clk;
		end 
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 0;
		b = 0;
		
		// Cycle through sensor inputs that should result in car add
		#100;
		a = 1'b1;
		#100;
		b = 1'b1;
		#100;
		a = 1'b0;
		#100;
		b = 1'b0;
		
		// Wait 100 ns for global reset to finish
		#100;
		reset = 1'b1;
		#10;
		reset = 1'b0;
		
		// Cycle through sensor inputs that should result in car subtract
		#100;
		b = 1'b1;
		#100;
		a = 1'b1;
		#100;
		b = 1'b0;
		#100;
		a = 1'b0;
	end
      
endmodule

