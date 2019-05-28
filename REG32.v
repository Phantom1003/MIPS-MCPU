`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:20 04/19/2018 
// Design Name: 
// Module Name:    REG32 
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
module REG32(
    input clk,
    input rst,
    input CE,
    input [31:0]D,
    output [31:0]Q
    );
    
    reg [31:0] data=32'b0;

    always @(posedge clk or posedge rst) begin
        if(rst) data <= 32'h0;       
        else if(CE) data <= D;        
    end
    
    assign Q = data;
    
endmodule