`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:41 03/15/2018 
// Design Name: 
// Module Name:    Seg7_Dev 
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
module Seg7_Dev (
         input wire [31:0] Hexs,	
			input wire SW0,
			input wire flash,
			input wire [2:0] Scan,	
			input wire [7:0] point,
			input wire [7:0] LES,
			output wire [3:0] AN,        
			output wire [7:0] SEGMENT);  
wire [3:0] digit;
wire [7:0] SEG_MAP, SEG_TXT;
wire LE,p;
assign SEGMENT = SW0 ? SEG_TXT : SEG_MAP;	
	 ScanSync M2 (.Hexs(Hexs), .Scan(Scan), .point(point), 
    .LES(LES), .Hexo(digit), .p(p), .LE(LE), .AN(AN));	
Seg_map M3 (.Hexs(Hexs), .Scan(Scan), .Seg_map(SEG_MAP));
	 MC14495_ZJU M1 (.D3(digit[3]),.D2(digit[2]), .D1(digit[1]), .D0(digit[0]), 
		.LE(LE&flash), .point(p),
		.a(SEG_TXT[0]), .b(SEG_TXT[1]), .c(SEG_TXT[2]), .d(SEG_TXT[3]), .e(SEG_TXT[4]), 
		.f(SEG_TXT[5]), .g(SEG_TXT[6]), .p(SEG_TXT[7]));
	
endmodule
