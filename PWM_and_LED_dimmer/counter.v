`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:24:51 02/22/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(
	input wire clk,
	output reg [3:0] count
	);

	initial begin
		count = 4'b0000;
	end

	always @(posedge clk) begin
		count = (count == 4'b1111) ? 0 : (count + 1);
	end

endmodule
