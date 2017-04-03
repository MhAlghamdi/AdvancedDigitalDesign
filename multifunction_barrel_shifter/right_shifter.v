`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:26 01/17/2017 
// Design Name: 
// Module Name:    right_shifter 
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
module right_shifter
	(
	input wire [7:0] a,
	input wire [2:0] amt,
	output wire [7:0] y
	);
	
	wire [7:0] s0, s1;
	
	// shift 0 or 1 bit
	assign s0 = amt[0] ? {a[0], a[7:1]} : a;
	// shift 0 or 2 bits
	assign s1 = amt[1] ? {a[1:0], a[7:2]} : s0;
	// shift 0 or 4 bits
	assign y  = amt[2] ? {a[3:0], a[7:4]} : s1;
	
endmodule
