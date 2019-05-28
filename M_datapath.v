`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:32 06/05/2018 
// Design Name: 
// Module Name:    Mctrl 
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
module M_datapath(
    input [1:0] ALUSrcA,
    input [1:0] ALUSrcB,
    input [3:0] ALU_operation,
    input Branch,
    input clk,
    input [31:0] data2CPU,
    input IorD,
    input IRWrite,
    input [1:0] MemtoReg,
    input MIO_ready,
    input [2:0] PCSource,
    input PCWrite,
    input PCWriteCond,
    input [1:0] RegDst,
    input RegWrite,
    input reset,
	 input [1:0] Dout_ctrl,
	 input [1:0] Din_ctrl,
	 input cp0_wt,
	 input [1:0] cp0_wr,
	 input [1:0] cp0_wd,
   output [31:0] data_out,
   output [31:0] Inst,
   output [31:0] M_addr,
   output overflow,
   output [31:0] PC_Current,
   output zero );
   
   wire [31:0] ALU_Out;
   wire [31:0] imm_32;
	wire [31:0] Jump_addr;
	wire [31:0] lui;
	wire [31:0] Branch_pc;
   wire [4:0] Wt_addr;
   wire [31:0] Wt_data;
   wire [31:0] MD;
   wire [31:0] rdata_A;
   wire [31:0] A;
   wire [31:0] B;
   wire [31:0] PC_next;
   wire CE;
   wire [31:0] res;
   wire [31:0] rdata_B;
	
	wire [31:0] cp0_out;
	wire [31:0] EPC;
	wire [31:0] adress2cp0;
	wire [31:0] data2cp0;
	
	MUX4T1_32  DATA2CP0MUX (.I0(data_out), 
                       .I1(PC_Current), 
                       .I2(), 
                       .I3(), 
                       .s(cp0_wd), 
                       .o(data2cp0[31:0]));	
	MUX4T1_32  ADRESSTOCP0MUX (.I0(Inst[15:11]), 
                       .I1(5'b01110), 
                       .I2(), 
                       .I3(), 
                       .s(cp0_wr), 
                       .o(adress2cp0[31:0]));	
	
	Coprocessor CP0 (
    .clk(clk), 
    .rst(reset), 
    .L_S(cp0_wt), 
    .addr(adress2cp0), 
    .Wt_data(data2cp0), 
    .rdata(cp0_out),
	 .EPC(EPC)
    );
   
  // assign data_out[31:0] = rdata_B[31:0];
	MUX4T1_32  DATAOUTMUX (.I0(rdata_B[31:0]), 
                       .I1({16'h0,rdata_B[15:0]}), 
                       .I2({24'h0,rdata_B[7:0]}), 
                       .I3(), 
                       .s(Dout_ctrl[1:0]), 
                       .o(data_out[31:0]));

	assign CE = MIO_ready & (PCWrite|(PCWriteCond& ((zero&Branch)|((~zero)&(~Branch))) ));
	//assign CE = MIO_ready & (PCWrite|(PCWriteCond&((zero&Branch)|(~zero&Branch))));
   REG32  PC (.CE(CE), 
              .clk(clk), 
              .D(PC_next[31:0]), 
              .rst(reset), 
              .Q(PC_Current[31:0]));

   assign Jump_addr =  {PC_Current[31:28], Inst[25:0], 2'b0};				 	  
	MUX8T1_32 PCMUX ( .s(PCSource[2:0]), 
							.I0(res[31:0]), 
							.I1(ALU_Out[31:0]), 
							.I2(Jump_addr), 
							.I3(rdata_A[31:0]), 
							.I4(EPC[31:0]), 
							.I5(32'h0000002C),
							.I6(), .I7(), 
							.o(PC_next[31:0]));
	
   MUX2T1_32  MMUX (.s(IorD),
						  .I0(PC_Current[31:0]),
 						  .I1(ALU_Out[31:0]), 
                    .o(M_addr[31:0]));	
						  
   alu  U1 (.A(A[31:0]), .B(B[31:0]), 
            .ALU_operation(ALU_operation[3:0]), 
            .overflow(overflow), 
            .res(res[31:0]), 
            .zero(zero));						  
						  
   REG32  ALUOut (.CE(1'b1), 
                  .rst(1'b0), 
					   .clk(clk), 
                  .D(res[31:0]), 
                  .Q(ALU_Out[31:0]));	
						
   //MUX2T1_32  ALUMUXA (.I0(PC_Current[31:0]), 
   //                    .I1(rdata_A[31:0]), 
   //                    .s(ALUSrcA), 
   //                    .o(A[31:0]));
	MUX4T1_32  ALUMUXA (.I0(PC_Current[31:0]), 
                       .I1(rdata_A[31:0]), 
                       .I2({27'h0,Inst[10:6]}), 
                       .I3(), 
                       .s(ALUSrcA[1:0]), 
                       .o(A[31:0]));
							 
   MUX4T1_32  ALUMUXB (.I0(rdata_B[31:0]), 
                       .I1({32'h4}), 
                       .I2(imm_32[31:0]), 
                       .I3({imm_32[29:0],2'b0}), 
                       .s(ALUSrcB[1:0]), 
                       .o(B[31:0]));
							 
   Regs  Regs (.clk(clk), 
               .L_S(RegWrite), 
               .rst(reset), 
               .R_addr_A(Inst[25:21]), 
               .R_addr_B(Inst[20:16]), 
               .Wt_addr(Wt_addr[4:0]), 
               .Wt_data(Wt_data[31:0]), 
               .rdata_A(rdata_A[31:0]), 
               .rdata_B(rdata_B[31:0]));
							 
   REG32  IR (.CE(IRWrite), 
              .clk(clk), 
              .D(data2CPU[31:0]), 
              .rst(reset), 
              .Q(Inst[31:0]));
   REG32  MDR (.CE(1'b1), 
               .clk(clk), 
               .D(data2CPU[31:0]), 
               .rst(1'b0), 
               .Q(MD[31:0]));

   MUX4T1_5  WAddMUX (.I0(Inst[20:16]), 
                     .I1(Inst[15:11]), 
                     .I2(5'b11111), 
                     .I3(), 
                     .s(RegDst[1:0]), 
                     .o(Wt_addr[4:0]));
	assign lui = {Inst[15:0],16'h0};
	wire [31:0] data_in;
	MUX4T1_32  DATAINMUX (.I0(MD[31:0]), 
                       .I1({16'h0,MD[15:0]}), 
                       .I2({24'h0,MD[7:0]}), 
                       .I3(cp0_out), 
                       .s(Din_ctrl[1:0]), 
                       .o(data_in[31:0]));
							  
   MUX4T1_32  WDataMUX (.I0(ALU_Out[31:0]), 
                      .I1(data_in[31:0]), 
                      .I2(lui), 
                      .I3(PC_Current), 
                      .s(MemtoReg[1:0]), 
                      .o(Wt_data[31:0]));
   Ext_32  Ext (.imm_16(Inst[15:0]), .Imm_32(imm_32[31:0]));


endmodule
