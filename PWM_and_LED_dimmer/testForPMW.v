`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:59:32 02/27/2017
// Design Name:   PMW
// Module Name:   D:/Users/algha/Desktop/Lab2/PMW/testForPMW.v
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

module testForPMW;

	// Inputs
	reg clk;
	reg [3:0] duty_cycle;

	// Outputs
	wire pwm;

	// Instantiate the Unit Under Test (UUT)
	pwm_top uut (
		.clk(clk),
		.duty_cycle(duty_cycle), 
		.pwm(pwm)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		duty_cycle = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Start clock
		forever begin
			#5 clk=~clk;
		end
	end
	
	initial begin
		#1000;
		// 25% Duty-cycle
		duty_cycle = 4'b0011;
		#1000;
		duty_cycle = 4'b0111;
	end
      
endmodule

