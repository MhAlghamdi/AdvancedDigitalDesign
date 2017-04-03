`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:36 02/27/2017 
// Design Name: 
// Module Name:    fsm 
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
module fsm(
    input wire clk, reset,
    input wire a, b,
    output reg inc, dec
    );

	// State declaration.
	localparam [2:0] idle 		= 3'b000;
	localparam [2:0] enter0 	= 3'b001;
	localparam [2:0] enter1 	= 3'b010;
	localparam [2:0] enter2 	= 3'b011;
	localparam [2:0] exit0 		= 3'b100;
	localparam [2:0] exit1 		= 3'b101;
	localparam [2:0] exit2 		= 3'b110;
	localparam [2:0] invalid 	= 3'b111;

	// Signal declaration.
	reg [2:0] state_reg;
	reg [2:0] state_next;

	// Initialize signal.
	initial begin
		state_reg = 0;
	end

	// State register.
	always @(posedge clk, posedge reset) begin
		if (reset)
			state_reg <= idle;
		else
			state_reg <= state_next;
	end

	// Next state logic and output logic.
	always @(*) begin
		state_next <= state_reg;
		inc <= 0;
		dec <= 0;
		case (state_reg)
			idle:
				// Car go to enter0.
				if ({a,b} == 2'b10)
					state_next <= enter0;
				// Car go to exit0.
				else if ({a,b} == 2'b01)
					state_next <= exit0;
				// Car remain.
				else if ({a,b} == 2'b00)
					state_next <= idle;
				// Invalid state.
				else if ({a,b} == 2'b11)
					state_next <= invalid;
			enter0:
				// Car go to enter1.
				if ({a,b} == 2'b11)
					state_next <= enter1;
				// Car remain.
				else if ({a,b} == 2'b10)
					state_next <= enter0;
				// Car return to idle.
				else if ({a,b} == 2'b00)
					state_next <= idle;
			enter1:
				// Car go to enter2.
				if ({a,b} == 2'b01)
					state_next <= enter2;
				// Car remain.
				else if ({a,b} == 2'b11)
					state_next <= enter1;
				// Car return to enter0.
				else if ({a,b} == 2'b10)
					state_next <= enter0;
			enter2:
				// Car enter and go to idle.
				if ({a,b} == 2'b00) begin
					inc <= 1;
					state_next <= idle;
				end
				// Car remain.
				else if ({a,b} == 2'b01)
					state_next <= enter2;
				// Car return to enter1.
				else if ({a,b} == 2'b11)
					state_next <= enter1;
			exit0:
				// Car go to exit1.
				if ({a,b} == 2'b11)
					state_next <= exit1;
				// Car remain.
				else if ({a,b} == 2'b01)
					state_next <= exit0;
				// Car return to idle.
				else if ({a,b} == 2'b00)
					state_next <= idle;
			exit1:
				// Car go to exit2.
				if ({a,b} == 2'b10)
					state_next <= exit2;
				// Car remain.
				else if ({a,b} == 2'b11)
					state_next <= exit1;
				// Car return to exit0.
				else if ({a,b} == 2'b01)
					state_next <= exit0;
			exit2:
				// Cae exit and go to idle.
				if ({a,b} == 2'b00) begin
					dec <= 1;
					state_next <= idle;
				end
				// Car remain.
				 else if ({a,b} == 2'b10)
					state_next <= exit2;
				// Car return to exit1.
				else if ({a,b} == 2'b11)
					state_next <= exit1;
			invalid:
				state_next <= idle;
			default: state_next <= idle;
		endcase
	end

endmodule
