`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:22:46 02/22/2017 
// Design Name: 
// Module Name:    fourBitCounter 
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
module fourBitCounter(
	input wire clk,
	input wire reset,
	output reg [3:0] counter_out
	);

	always @(posedge clk) begin
		if (reset) begin
			counter_out <= 4'b0 ;
		end else if (enable) begin
			counter_out <= counter_out + 1;
		end
	end

endmodule
