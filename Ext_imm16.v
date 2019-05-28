`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:31:10 06/26/2014 
// Design Name: 
// Module Name:    Ext_imm16 
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
module SignExt (  input      [31:0] inst_in,
				      output reg [31:0] imm   );
	
		always@*
			case(inst_in[6:0])
				7'b1100011: imm = {{20{inst_in[31]}}, inst_in[7], inst_in[30:25], inst_in[11:8], 1'b0};   //branch
				7'b0000011: imm = {{20{inst_in[31]}}, inst_in[31:20]};												//load
				7'b0100011: imm = {{20{inst_in[31]}},{inst_in[31:25]},{inst_in[11:7]}};							//store
				7'b0010011: imm = {{20{inst_in[31]}}, inst_in[31:20]};												//imm
			endcase	
endmodule
