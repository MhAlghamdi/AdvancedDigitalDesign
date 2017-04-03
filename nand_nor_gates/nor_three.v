`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:51 03/15/2017 
// Design Name: 
// Module Name:    nor_three 
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
module nor_three(
	input A , B, C,
	output y
	);

	wire P_0_1, p_0_2, P_n;
	supply1 PWR_;
	supply0 GND_;
	
	// pull_up network
	pmos P0 (P_0_1, PWR_, A);
	pmos P1 (P_0_1, P_0_2, B);
	pmos P2 (P_n, P_0_2, C);
	
	//pull_down network
	nmos n0 (P_n, GND_, A);
	nmos n1 (P_n, GND_, B);
	nmos n2 (P_n, GND_, C);
	
	assign y = P_n;
	
endmodule