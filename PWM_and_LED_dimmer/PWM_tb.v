`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:56:58 02/27/2017
// Design Name:   PMW
// Module Name:   D:/Users/algha/Desktop/Lab2/PMW/pwm_tb.v
// Project Name:  PMW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PMW
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwm_tb;

	// Inputs
	reg clk;
	//reg reset;
	reg [3:0] duty_cycle;

	// Outputs
	//wire [7:0] sevenSegData;
	wire pwm;
	//wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	PMW uut (
		.clk(clk), 
		//.reset(reset), 
		.duty_cycle(duty_cycle), 
		//.sevenSegData(sevenSegData), 
		.pwm(pwm), 
		//.an(an)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		//reset = 0;
		duty_cycle = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

