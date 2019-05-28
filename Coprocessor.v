`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:34 12/10/2018 
// Design Name: 
// Module Name:    Coprocessor 
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
module Coprocessor(  input clk, rst, L_S, 
							input [4:0]addr, 
							input [31:0]Wt_data,
							output [31:0] rdata,
							output [31:0] EPC);
	reg [31:0] register [0:29]; 		// r1 - r31
	integer i;
	initial register[14] = 0;

	assign rdata = register[addr];	    // read
	assign EPC   = register[14];	       // read
	
	always @(posedge clk or posedge rst) 
          begin if (rst==1)  for (i=0; i<30; i=i+1)  register[i] <= 0; 		// reset
		    else if (L_S == 1) 
				register[addr] <= Wt_data;      			// write
	end

endmodule
