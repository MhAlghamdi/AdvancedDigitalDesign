`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:06 02/27/2017 
// Design Name: 
// Module Name:    fsm_test 
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
module fsm_test(
    input wire clk, reset,
    input wire a, b,
	output wire [3:0] occupancy
    );

	// State declaration.
	localparam [2:0] idle = 3'b000;
	localparam [2:0] enter0 = 3'b001;
	localparam [2:0] enter1 = 3'b010;
	localparam [2:0] enter2 = 3'b011;
	localparam [2:0] exit0 = 3'b100;
	localparam [2:0] exit1 = 3'b101;
	localparam [2:0] exit2 = 3'b110;
	localparam [2:0] invalid = 3'b111;

	// Signal declaration.
	reg [2:0] state;
	reg inc, dec;
	reg [3:0] count = 0;

	// Initialize signals.
	initial begin
		state = 0;
		inc = 0;
		dec = 0;
	end

	always@(posedge clk, posedge reset) begin
		if (reset)
			state <= idle;
		else begin
			inc <= 0;
			dec <= 0;
			case (state)
				idle:
					// Car go to enter0.
					if ({a,b} == 2'b10)
						state <= enter0;
					// Car go to exit0.
					else if ({a,b} == 2'b01)
						state <= exit0;
					// Car remain.
					else if ({a,b} == 2'b00)
						state <= idle;
					// Invalid state.
					else if ({a,b} == 2'b11)
						state <= invalid;
				enter0:
					// Car go to enter1.
					if ({a,b} == 2'b11)
						state <= enter1;
					// Car remain.
					else if ({a,b} == 2'b10)
						state <= enter0;
					// Car return to idle.
					else if ({a,b} == 2'b00)
						state <= idle;
				enter1:
					// Car go to enter2.
					if ({a,b} == 2'b01)
						state <= enter2;
					// Car remain.
					else if ({a,b} == 2'b11)
						state <= enter1;
					// Car return to enter0.
					else if ({a,b} == 2'b10)
						state <= enter0;
				enter2:
					// Car enter and go to idle.
					if ({a,b} == 2'b00) begin
						inc <= 1;
						state <= idle;
					end
					// Car remain.
					else if ({a,b} == 2'b01)
						state <= enter2;
					// Car return to enter1.
					else if ({a,b} == 2'b11)
						state <= enter1;
				exit0:
					// Car go to exit1.
					if ({a,b} == 2'b11)
						state <= exit1;
					// Car remain.
					else if ({a,b} == 2'b01)
						state <= exit0;
					// Car return to idle.
					else if ({a,b} == 2'b00)
						state <= idle;
				exit1:
					// Car go to exit2.
					if ({a,b} == 2'b10)
						state <= exit2;
					// Car remain.
					else if ({a,b} == 2'b11)
						state <= exit1;
					// Car return to exit0.
					else if ({a,b} == 2'b01)
						state <= exit0;
				exit2:
					// Cae exit and go to idle.
					if ({a,b} == 2'b00) begin
						dec <= 1;
						state <= idle;
					end
					// Car remain.
					 else if ({a,b} == 2'b10)
						state <= exit2;
					// Car return to exit1.
					else if ({a,b} == 2'b11)
						state <= exit1;
				invalid:
					state <= idle;
				default: state <= idle;
			endcase
			
			if(inc)
				count <= count + 1'b1; //increment the total counter
			else if(dec)
				count <= count - 1'b1; //decrement the total counter
		end
	end
	
	assign occupancy = count;
endmodule
