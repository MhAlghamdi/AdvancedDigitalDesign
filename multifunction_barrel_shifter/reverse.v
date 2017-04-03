`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:43 01/17/2017 
// Design Name: 
// Module Name:    reverse 
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
module reverse
	(
	input wire [7:0] a,
	output reg [7:0] y
	);
	
	always @*
	begin
		y[0] = a[7];
		y[1] = a[6];
		y[2] = a[5];
		y[3] = a[4];
		y[4] = a[3];
		y[5] = a[2];
		y[6] = a[1];
		y[7] = a[0];
	end
	
endmodule
