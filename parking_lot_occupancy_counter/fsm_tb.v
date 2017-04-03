`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:04:37 02/27/2017
// Design Name:   fsm
// Module Name:   D:/Users/algha/Desktop/lab_3/parking_lot_occupancy_counter/fsm_tb.v
// Project Name:  parking_lot_occupancy_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_tb;

	// Inputs
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire inc;
	wire dec;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b),
		.inc(inc),
		.dec(dec)
	);
	
	initial begin
		// Start a clock
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

		// Wait 100 ns for global reset to finish
		#100;
		
		// Car enter
		a = 1'b1;
		#50;
		b = 1'b1;
		#50;
		a = 1'b0;
		#50;
		b = 1'b0;
		
		// Reset
		#50;
		reset = 1'b1;
		#5;
		reset = 1'b0;
		
		// Car exit
		#50;
		b = 1'b1;
		#50;
		a = 1'b1;
		#50;
		b = 1'b0;
		#50;
		a = 1'b0;
	end
      
endmodule
