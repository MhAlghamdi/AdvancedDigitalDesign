`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:22 01/20/2017 
// Design Name: 
// Module Name:    first_module 
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
module first_module
	(
	input wire [7:0] a_in,
	input wire [2:0] amt_in,
	input wire sel_in,
	output wire [7:0] out_out
	);

	wire [7:0] y0, y1;
	 
	// instantiate left_shifter
	left_shifter left
		(.a(a_in), .amt(amt_in), .y(y0));
	// instantiate right_shifter
	right_shifter right
		(.a(a_in), .amt(amt_in), .y(y1));
	//instantiate multiplexer
	 multiplexer mux
		(.left(y0), .right(y1), .sel(sel_in), .out(out_out));
	 
endmodule
