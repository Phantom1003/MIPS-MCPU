`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:54:35 12/04/2018
// Design Name:   Multi_CPU
// Module Name:   C:/Users/89293/Desktop/Lab1_V2/test_MCPU.v
// Project Name:  XJY1126_09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multi_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MCPU;

	// Inputs
	reg clk;
	reg [31:0] Data_in;
	reg INT;
	reg MIO_ready;
	reg reset;

	// Outputs
	wire [31:0] Addr_out;
	wire CPU_MIO;
	wire [31:0] Data_out;
	wire [31:0] inst_out;
	wire mem_w;
	wire [31:0] PC_out;
	wire [4:0] state;

	// Instantiate the Unit Under Test (UUT)
	Multi_CPU uut (
		.clk(clk), 
		.Data_in(Data_in), 
		.INT(INT), 
		.MIO_ready(MIO_ready), 
		.reset(reset), 
		.Addr_out(Addr_out), 
		.CPU_MIO(CPU_MIO), 
		.Data_out(Data_out), 
		.inst_out(inst_out), 
		.mem_w(mem_w), 
		.PC_out(PC_out), 
		.state(state)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Data_in = 32'h42000018;
		INT = 0;
		MIO_ready = 1;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#50;
		clk = 1;
		#50;
		clk = 0;
		#50;
		clk = 1;
		#50;
		clk = 0;
		#50;
		clk = 1;
		#50;
		clk = 0;
		#50;
		clk = 1;
		#50;
		clk = 0;
		#50;
		clk = 1;
		#50;
        
		// Add stimulus here

	end
      
endmodule

