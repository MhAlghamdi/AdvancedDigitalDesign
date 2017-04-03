`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:16 03/15/2017 
// Design Name: 
// Module Name:    nand_three 
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
module nand_three(
	input A , B, C,
	output Y
	);

	wire P_0_1, p_0_2, P_n;
	supply1 PWR_;
	supply0 GND_;


	// pull_up network
	pmos P0 (P_n, PWR_, A);
	pmos P1 (P_n, PWR_, B);
	pmos P2 (P_n, PWR_, C);

	//pull_down network
	nmos n0 (P_n, P_0_1, A);
	nmos n1 (P_0_1, P_0_2, B);
	nmos n2 (P_0_2, GND_, C);
	
	assign Y = P_n;
	
endmodule