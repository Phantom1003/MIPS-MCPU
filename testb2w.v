`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:40:17 03/14/2019
// Design Name:   BYTE2WORD
// Module Name:   C:/Users/89293/Desktop/SWORDSoC/UART_Queue/Lab1_V4_final/testb2w.v
// Project Name:  XJY1126_09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BYTE2WORD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testb2w;

	// Inputs
	reg clkMem;
	reg [7:0] progData;
	reg progValid;
	reg progEn;
	reg [9:0] addrIn;
	reg [31:0] dataIn;
	reg [3:0] weIn;
	reg enIn;

	// Outputs
	wire [9:0] addrOut;
	wire [31:0] dataOut;
	wire [3:0] weOut;
	wire enOut;

	// Instantiate the Unit Under Test (UUT)
	BYTE2WORD uut (
		.clkMem(clkMem), 
		.progData(progData), 
		.progValid(progValid), 
		.progEn(progEn), 
		.addrIn(addrIn), 
		.dataIn(dataIn), 
		.weIn(weIn), 
		.enIn(enIn), 
		.addrOut(addrOut), 
		.dataOut(dataOut), 
		.weOut(weOut), 
		.enOut(enOut)
	);

	initial begin
		// Initialize Inputs
		clkMem = 0;
		progData = 8'h02;
		progValid = 0;
		progEn = 1;
		addrIn = 0;
		dataIn = 0;
		weIn = 0;
		enIn = 0;

		// Wait 100 ns for global reset to finish
	end
	always begin
		#10 clkMem = clkMem + 1;
	end
   
	always begin
		#20 progValid = progValid + 1;
	end
endmodule

