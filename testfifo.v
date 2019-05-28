`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:33 03/14/2019
// Design Name:   UARTFiFo
// Module Name:   C:/Users/89293/Desktop/SWORDSoC/UART_Queue/Lab1_V4_final/testfifo.v
// Project Name:  XJY1126_09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UARTFiFo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testfifo;

	// Inputs
	reg s_clk;
	reg s_rst;
	reg s_valid;
	reg [7:0] s_data;
	reg m_clk;
	reg m_rst;
	reg m_ready;

	// Outputs
	wire s_ready;
	wire [6:0] s_load;
	wire m_valid;
	wire [7:0] m_data;
	wire [6:0] m_load;

	// Instantiate the Unit Under Test (UUT)
	UARTFiFo uut (
		.s_clk(s_clk), 
		.s_rst(s_rst), 
		.s_valid(s_valid), 
		.s_ready(s_ready), 
		.s_data(s_data), 
		.s_load(s_load), 
		.m_clk(m_clk), 
		.m_rst(m_rst), 
		.m_valid(m_valid), 
		.m_ready(m_ready), 
		.m_data(m_data), 
		.m_load(m_load)
	);

	initial begin
		// Initialize Inputs
		s_clk = 0;
		s_rst = 0;
		s_valid = 0;
		s_data = 8'hFF;
		m_clk = 0;
		m_rst = 0;
		m_ready = 1;

		// Wait 100 ns for global reset to finish
		s_valid = ~s_valid;
		#20;
		s_valid = ~s_valid;
		#20;
		s_valid = ~s_valid;
		#20;
		s_valid = ~s_valid;
		

        
		// Add stimulus here

	end
	always begin
		#10 s_clk = s_clk + 1;
	end
		always begin
		#10 m_clk = m_clk + 1;
	end
      
endmodule

