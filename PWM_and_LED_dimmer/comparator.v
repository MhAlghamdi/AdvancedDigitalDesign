`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:24:27 02/22/2017 
// Design Name: 
// Module Name:    comparator 
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
module comparator
	(
		input wire [3:0] a,
		input wire [3:0] b,
		output wire d_out
	);

	assign d_out = (b < a) ? 1 : ((a == 4'b1111) ? 1 : 0);

endmodule
