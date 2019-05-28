////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : Multi_CPU.vf
// /___/   /\     Timestamp : 05/17/2018 23:24:09
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -sympath C:/Users/89293/Desktop/3160101126/EX8/XJY1126_081/ipcore_dir -intstyle ise -family kintex7 -verilog C:/Users/89293/Desktop/3160101126/EX8/XJY1126_081/Multi_CPU.vf -w C:/Users/89293/Desktop/3160101126/EX8/XJY1126_081/Multi_CPU.sch
//Design Name: Multi_CPU
//Device: kintex7
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Multi_CPU(clk, 
                 Data_in, 
                 INT, 
                 MIO_ready, 
                 reset, 
                 Addr_out, 
                 CPU_MIO, 
                 Data_out, 
                 inst_out, 
                 mem_w, 
                 PC_out, 
                 state);

    input clk;
    input [31:0] Data_in;
    input INT;
    input MIO_ready;
    input reset;
   output [31:0] Addr_out;
   output CPU_MIO;
   output [31:0] Data_out;
   output [31:0] inst_out;
   output mem_w;
   output [31:0] PC_out;
   output [4:0] state;
   
   wire IorD;
   wire IRWrite;
   wire RegWrite;
   wire [1:0] ALUSrcA;
   wire PCWrite;
   wire PCWriteCond;
   wire Branch;
   wire [1:0] RegDst;
   wire [1:0] MemtoReg;
   wire [1:0] ALUSrcB;
   wire [2:0] PCSource;
   wire [3:0] ALU_operation;
   wire zero;
   wire MemRead;
   wire NMemRead;
   wire MemWrite;
   wire overflow;
   wire [31:0] inst_out_branch;
	wire [1:0] data_out_ctl;
   wire [1:0] data_in_ctl;
	wire cp0_wt;
	wire [1:0]cp0_wr;
	wire [1:0]cp0_wd;
   
   assign inst_out[31:0] = inst_out_branch[31:0];
 ctrl  U1_1 (.clk(clk), 
             .Inst_in(inst_out_branch[31:0]), 
             .MIO_ready(MIO_ready), 
             .overflow(overflow), 
             .reset(reset), 
             .zero(zero), 
             .ALUSrcA(ALUSrcA[1:0]), 
             .ALUSrcB(ALUSrcB[1:0]), 
             .ALU_operation(ALU_operation[3:0]), 
             .Branch(Branch), 
             .CPU_MIO(CPU_MIO), 
             .IorD(IorD), 
             .IRWrite(IRWrite), 
             .MemRead(MemRead), 
             .MemtoReg(MemtoReg[1:0]), 
             .MemWrite(MemWrite), 
             .PCSource(PCSource[2:0]), 
             .PCWrite(PCWrite), 
             .PCWriteCond(PCWriteCond), 
             .RegDst(RegDst[1:0]), 
             .RegWrite(RegWrite), 
             .state_out(state[4:0]),
				 .Din_ctrl(data_in_ctl),
				 .Dout_ctrl(data_out_ctl),
				 .cp0_wt(cp0_wt),
				 .cp0_wr(cp0_wr),
				 .cp0_wd(cp0_wd));
				 
 M_datapath  U1_2 (.ALUSrcA(ALUSrcA[1:0]), 
                   .ALUSrcB(ALUSrcB[1:0]), 
                   .ALU_operation(ALU_operation[3:0]), 
                   .Branch(Branch), 
                   .clk(clk), 
                   .data2CPU(Data_in[31:0]), 
                   .IorD(IorD), 
                   .IRWrite(IRWrite), 
                   .MemtoReg(MemtoReg[1:0]), 
                   .MIO_ready(MIO_ready), 
                   .PCSource(PCSource[2:0]), 
                   .PCWrite(PCWrite), 
                   .PCWriteCond(PCWriteCond), 
                   .RegDst(RegDst[1:0]), 
                   .RegWrite(RegWrite), 
                   .reset(reset), 
                   .data_out(Data_out[31:0]), 
                   .Inst(inst_out_branch[31:0]), 
                   .M_addr(Addr_out[31:0]), 
                   .overflow(overflow), 
                   .PC_Current(PC_out[31:0]), 
                   .zero(zero),
						 .Din_ctrl(data_in_ctl),
						 .Dout_ctrl(data_out_ctl),
						 .cp0_wt(cp0_wt),
						 .cp0_wr(cp0_wr),
						 .cp0_wd(cp0_wd));
   INV  XLXI_3 (.I(MemRead), 
               .O(NMemRead));
   AND2  XLXI_4 (.I0(MemWrite), 
                .I1(NMemRead), 
                .O(mem_w));
endmodule
