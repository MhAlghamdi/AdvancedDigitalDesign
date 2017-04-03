`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:50:41 03/08/2017 
// Design Name: 
// Module Name:    babbage_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module babbage_top(
	input wire clk, reset,
	input wire start,
	input wire [3:0] i,
	output wire done_tick,
	output wire [3:0] an,
	output wire [3:0] f,
	output wire [7:0] sseg
    );
	
	babbage babbage1(
		.clk(clk),
		.reset(reset),
		.start(start),
		.i(i),
		.done_tick(done_tick),
		.f(f)
	);
	
	displaySegments displaySegments_1 (
	    .clk(clk), 
		.reset(reset), 
		.hex0(f), 
		.dp_in(0), 
		.an(an), 
		.sseg(sseg)
	);

endmodule
