`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:57:37 02/27/2017
// Design Name:   top
// Module Name:   D:/Users/algha/Desktop/lab_3/parking_lot_occupancy_counter/top_tb.v
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

module top_tb;

	// Inputs
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire [3:0] occupancy;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.occupancy(occupancy)
	);
	
	initial begin
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
		 
		// Car enter
		#100;
		a = 1'b1;
		#50;
		b = 1'b1;
		#50;
		a = 1'b0;
		#50;
		b = 1'b0;
		
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

