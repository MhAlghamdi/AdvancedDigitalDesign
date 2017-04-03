`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:47 02/27/2017 
// Design Name: 
// Module Name:    top 
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
module top(
    input wire clk, reset,
	input wire a, b,
	output wire [7:0] occupancy,
	output wire [3:0] an,
	output wire [7:0] sseg
    );
	
	wire db_a;
	wire db_b;
	wire inc_2;
	wire dec_2;
	
	// debouncer a.
	debouncer debouncer_1 (
		.clk(clk),
		.reset(reset),
		.sw(a),
		.db(db_a)
	);
	
	// debouncer b.
	debouncer debouncer_2 (
		.clk(clk),
		.reset(reset),
		.sw(b),
		.db(db_b)
	);
	
	// FSM.
	fsm fsm_1 (
		.clk(clk), 
		.reset(reset),
		.a(a),
		.b(b),
		.inc(inc_2),
		.dec(dec_2)
	);
	
	// Counter,
	counter counter_1 (
		.clk(clk),
		.reset(reset),
		.inc(inc_2), 
		.dec(dec_2),
		.occupancy(occupancy)
	);
	
	// Display segments
	displaySegments displaySegments_1 (
	    .clk(clk), 
		.reset(reset), 
		.hex3(0), 
		.hex2(0), 
		.hex1(0), 
		.hex0(occupancy), 
		.dp_in(0), 
		.an(an), 
		.sseg(sseg)
	);

endmodule
