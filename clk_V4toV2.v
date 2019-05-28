`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:22 12/03/2018 
// Design Name: 
// Module Name:    clk_V4toV2 
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
module clk_V4toV2(input CLK_200MHZ_P,
                input CLK_200MHZ_N,
					 output clk_100mhz
    );
	 
wire CLK_200MHZ;
reg [31:0] clkdiv;

IBUFDS clk_200mhz_buf(
    .O(CLK_200MHZ),
    .I(CLK_200MHZ_P),
    .IB(CLK_200MHZ_N));

always @ (posedge CLK_200MHZ) 
  begin 
	clkdiv <= clkdiv + 32'b1; 
  end
  
assign clk_100mhz = clkdiv[0];
endmodule
