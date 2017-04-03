`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:23:16 02/22/2017 
// Design Name: 
// Module Name:    PMW 
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
module pwm_top(
	input wire clk, reset,
	input wire [3:0] duty_cycle,
	output pwm
	);

	wire new_clock;
	wire [3:0] count;
	
	freq_divider freq1 (
		.clk (clk),
		.new_clk (new_clock)
	);
	
	counter counter1 (
		.clk (clk),
		.count (count)
	);
	
	comparator comp1 (
		.a (duty_cycle),
		.b (count),
		.d_out (pwm)
	);

endmodule
