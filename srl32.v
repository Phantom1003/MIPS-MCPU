`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:24 03/19/2014 
// Design Name: 
// Module Name:    and32 
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
module srl32(input [31:0] A,
				 input [31:0] B,
				 output [31:0] res
				);

	assign res = B >> A;
	//reg [31:0]shift;

	//reg[31:0] i ;
	//always @(*) begin
	//    shift <= B;
	//    for(i = 0; i < A; i=i+1)
   //      	shift = shift >> 1;
   // end
	//assign res = shift;
endmodule
