`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:31 01/17/2017 
// Design Name: 
// Module Name:    second_module 
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
module second_module
	(
	input wire [7:0] a_in,
	input wire [2:0] amt_in,
	input wire sel_in,
	output wire [7:0] out_out
	);
	 
	wire [7:0] r0, r1;
	wire [7:0] y0, y1;
	 
	// instantiate reverse
	reverse rev1
		(.a(a_in), .y(r0));
	// instantiate multiplexer
	multiplexer mux1
		(.left(a_in), .right(r0), .sel(sel_in), .out(y0));
	// instantiate left_shifter
	left_shifter left
		(.a(y0), .amt(amt_in), .y(y1));
	// instantiate reverse
	reverse rev2
		(.a(y1), .y(r1));
	// instantiate multiplexer
	multiplexer mux2
		(.left(y1), .right(r1), .sel(sel_in), .out(out_out));

endmodule
