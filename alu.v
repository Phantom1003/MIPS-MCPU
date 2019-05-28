`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:54 12/03/2018 
// Design Name: 
// Module Name:    alu 
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
module alu(input wire [31:0]A, 
	input wire [31:0]B, 
	input wire [3:0]ALU_operation,
	output reg [31:0]res, 
	output wire zero, 
	output wire overflow);

	wire  [31:0] res_and ,res_or,  res_nor, res_slt, res_xor, res_mul;
   wire [31:0]	res_srl, res_sll, res_sra, res_sllv, res_srlv, res_srav, res_addu, res_subu;
	wire [32:0] res_add, res_sub;

	parameter one = 32'h00000001, zero_0=32'h00000000;
	assign res_and= A&B;												//储存and操作结果
	assign res_or= A|B;												//储存or操作结果
	assign res_add= A+B;												//储存add操作结果
	assign res_sub= A-B;												//储存sub操作结果
	assign res_nor= ~(A|B);											//储存nor操作结果
	assign res_sltu= (A<B)?one:zero_0;							//储存slt操作结果
	assign res_slt= ($signed(A)<$signed(B))?one:zero_0;	//储存slt操作结果
	assign res_xor= A^B;												//储存xor操作结果
	assign res_sll= B<<A[4:0];										//储存sll操作结果
	assign res_srl= B>>A[4:0];										//储存srl操作结果
	assign res_sra= $signed(B)>>>A[4:0];						//储存sra操作结果
	assign res_mul= A[15:0]*B[15:0];	

   assign res_addu= A+B;												//储存add操作结果
	assign res_subu= A-B;												//储存sub操作结果	//储存add操作结果
	
	
always @* 
	case (ALU_operation)												//根据ALU_operation将相应结果储存至res
		4'b0000:res=res_and;
		4'b0001:res=res_or;
		4'b0010:res=res_add;
		4'b0011:res=res_xor;
		4'b0100:res=res_nor;
		4'b0101:res=res_slt;
		4'b0110:res=res_sub;
		4'b0111:res=res_sltu;
		
		4'b1000:res=res_srl;
		4'b1001:res=res_sll;
		4'b1010:res=res_sra;
		
		4'b1011:res=res_mul;	
      4'b1100:res=res_addu;
		4'b1101:res=res_subu;
		default: res =res_add;
	endcase
	
assign zero=(res==0)?1:0;											//当res为0时，zero为1，否则为0
assign overflow=((ALU_operation==4'b0010 && res_add[32]) || (ALU_operation==4'b0110&& res_sub[32]))?1:0;	//当ALU做加法且产生溢出时，overflow为1，否则为0
endmodule
