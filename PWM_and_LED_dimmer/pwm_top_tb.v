`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:53:43 03/10/2017
// Design Name:   pwm_top
// Module Name:   D:/Users/algha/Desktop/PMW/pwm_top_tb.v
// Project Name:  PMW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwm_top_tb; 

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] duty_cycle;

	// Outputs
	wire pwm;
	wire [3:0] an;
	wire [7:0] sevenSegData;

	// Instantiate the Unit Under Test (UUT)
	pwm_top uut (
		.clk(clk), 
		.reset(reset), 
		.duty_cycle(duty_cycle), 
		.pwm(pwm), 
		.an(an), 
		.sevenSegData(sevenSegData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		duty_cycle = 0;

		// Start clock
		forever begin
			#5 clk=~clk;
		end
	end
	
	initial begin
		#1000 duty_cycle = 4'b0011;
		#1000 duty_cycle = 4'b0111;
		#1000 duty_cycle = 4'b1110;
		#1000 duty_cycle = 4'b1111;
		#1000 duty_cycle = 4'b0000;
	end
	
      
endmodule

