`timescale 1ns / 1ps

module M_datapath(ALUSrcA, 
                  ALUSrcB, 
                  ALU_operation, 
                  Branch, 
                  clk, 
                  data2CPU, 
                  IorD, 
                  IRWrite, 
                  MemtoReg, 
                  MIO_ready, 
                  PCSource, 
                  PCWrite, 
                  PCWriteCond, 
                  RegDst, 
                  RegWrite, 
                  reset, 
                  data_out, 
                  Inst, 
                  M_addr, 
                  overflow, 
                  PC_Current, 
                  zero);

    input ALUSrcA;
    input [1:0] ALUSrcB;
    input [2:0] ALU_operation;
    input Branch;
    input clk;
    input [31:0] data2CPU;
    input IorD;
    input IRWrite;
    input [1:0] MemtoReg;
    input MIO_ready;
    input [1:0] PCSource;
    input PCWrite;
    input PCWriteCond;
    input [1:0] RegDst;
    input RegWrite;
    input reset;
   output [31:0] data_out;
   output [31:0] Inst;
   output [31:0] M_addr;
   output overflow;
   output [31:0] PC_Current;
   output zero;
   
   wire [31:0] ALU_Out;
   wire [31:0] imm_32;
	wire [31:0] Jump_addr;
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
   wire [31:0] PC_Current_DUMMY;
   wire zero_DUMMY;
   wire [31:0] Inst_DUMMY;
   wire [31:0] rdata_B;
   
   assign data_out[31:0] = rdata_B[31:0];
   assign Inst[31:0] = Inst_DUMMY[31:0];
   assign PC_Current[31:0] = PC_Current_DUMMY[31:0];
   assign zero = zero_DUMMY;
	
	assign CE = MIO_ready & (PCWrite|(PCWriteCond&zero&Branch));
   REG32  PC (.CE(CE), 
                 .clk(clk), 
                 .D(PC_next[31:0]), 
                 .rst(reset), 
                 .Q(PC_Current_DUMMY[31:0]));

   assign Jump_addr =  {PC_Current[31:28], Inst[25:0], 2'b0};				 	  
   MUX4T1_32  PCMUX (.s(PCSource[1:0]), 
							.I0(res[31:0]), 
                     .I1(ALU_Out[31:0]), 
                     .I2(Jump_addr), 
                     .I3(), 
                     .o(PC_next[31:0]));	
	
   MUX2T1_32  MMUX (.s(IorD),
						  .I0(PC_Current[31:0]),
 						  .I1(ALU_Out[31:0]), 
                    .o(M_addr[31:0]));	
						  
   alu  U1 (.A(A[31:0]), .B(B[31:0]), 
            .ALU_operation(ALU_operation[2:0]), 
            .overflow(overflow), 
            .res(res[31:0]), 
            .zero(zero_DUMMY));						  
						  
   REG32  ALUOut (.CE(1'b1), 
                  .rst(1'b0), 
					   .clk(clk), 
                  .D(res[31:0]), 
                  .Q(ALU_Out[31:0]));	
						
   MUX2T1_32  ALUMUXA (.I0(PC_Current[31:0]), 
                      .I1(rdata_A[31:0]), 
                      .s(ALUSrcA), 
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
              .Q(Inst_DUMMY[31:0]));
   REG32  MDR (.CE(1'b1), 
               .clk(clk), 
               .D(data2CPU[31:0]), 
               .rst(1'b0), 
               .Q(MD[31:0]));

   MUX4T1_5  WAddMUX (.I0(Inst_DUMMY[20:16]), 
                    .I1(Inst_DUMMY[15:11]), 
                    .I2(), 
                    .I3(), 
                    .s(RegDst[1:0]), 
                    .o(Wt_addr[4:0]));
   MUX4T1_32  WDataMUX (.I0(ALU_Out[31:0]), 
                     .I1(MD[31:0]), 
                     .I2(), 
                     .I3(), 
                     .s(MemtoReg[1:0]), 
                     .o(Wt_data[31:0]));
   Ext_32  Ext (.imm_16(Inst_DUMMY[15:0]), .Imm_32(imm_32[31:0]));


endmodule
