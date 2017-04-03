`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:39:41 03/15/2017 
// Design Name: 
// Module Name:    nor_two 
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
module nor_two( 
	input A , B,
	output y
	);

	wire P_0_1, P_n;
	supply1 PWR_;
	supply0 GND_;
	
	// pull_up network
	pmos P0 (P_0_1, PWR_, A);
	pmos P1 (P_n, P_0_1, B);
	
	//pull_down network
	nmos n0 (P_n, GND_, A);
	nmos n1 (P_n, GND_, B);
	
	assign y = P_n;
	
endmodule