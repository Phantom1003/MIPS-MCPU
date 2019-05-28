`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:53 12/03/2018
// Design Name:   alu
// Module Name:   C:/Users/89293/Desktop/XJY1126_12/test_alu.v
// Project Name:  XJY1126_09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALU_operation;

	// Outputs
	wire [31:0] res;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	alu uut ( 
		.A(A), 
		.B(B), 
		.ALU_operation(ALU_operation), 
		.res(res), 
		.zero(zero), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		A = 32'h4;
		B = 32'hFFFF0000;
		ALU_operation = 4'b1000;
		#100;
		A = 32'h4;
		B = 32'hFFFF0000;
		ALU_operation = 4'b1001;
		#100;
		A = 32'h4;
		B = 32'hFFFF0000;
		ALU_operation = 4'b1010;
		#100;
		// Wait 100 ns for global reset to finish

        
		// Add stimulus here

	end
      
endmodule

