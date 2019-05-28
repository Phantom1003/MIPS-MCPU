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
module ctrl(input  clk,
				input  reset,
				input  [31:0] Inst_in,
				input  zero,
				input  overflow,
				input  MIO_ready,
				
				output reg MemRead,
				output reg MemWrite,
				output reg [3:0]ALU_operation,
				output [4:0]state_out,
				output reg CPU_MIO,
				output reg IorD,
				output reg IRWrite,
				output reg [1:0]RegDst,
				output reg RegWrite,
				output reg [1:0]MemtoReg,
				output reg [1:0]ALUSrcA,
				output reg [1:0]ALUSrcB,
				output reg [2:0]PCSource,
				output reg PCWrite,
				output reg PCWriteCond,
				output reg Branch,
				output reg [1:0] Dout_ctrl,
				output reg [1:0] Din_ctrl,
				output reg cp0_wt,
				output reg [1:0] cp0_wr,
				output reg [1:0] cp0_wd );
				
reg [4:0] state = 0;

assign state_out[4:0] = state[4:0];
//assign OP = Inst_in[31:26];

parameter 	IF     = 5'b00000, ID     = 5'b00001, Exe_Mem= 5'b00010, Mem_RD = 5'b00011, LW_WB  = 5'b00100,
				Mem_WD = 5'b00101, Exe_R  = 5'b00110, R_WB   = 5'b00111, Exe_I  = 5'b01000, I_WB   = 5'b01001,
				Exe_Lui= 5'b01010, Exe_Beq= 5'b01011, Exe_Bne= 5'b01100, Jal    = 5'b01101, Jr     = 5'b01110, 
				J      = 5'b01111, Exe_R_S= 5'b10000, Mem_WD_H=5'b10001, Mem_WD_B=5'b10010, LW_WB_H= 5'b10011,
				LW_WB_B =5'b10100, Jalr   = 5'b10101, mtc0    =5'b10110, mfc0    =5'b10111, Eret   = 5'b11000,
				Syscall_save = 5'b11001, Syscall_jmp = 5'b11010, Error  = 5'b11111;
				
`define Datapath_signals{cp0_wt, cp0_wr, cp0_wd, PCWrite, PCWriteCond,IorD, MemRead, MemWrite,IRWrite, MemtoReg, PCSource, ALUSrcA, ALUSrcB, RegWrite, RegDst, Branch, CPU_MIO, Dout_ctrl, Din_ctrl}
							                         //	1				2			3			4		  5			6	   7 8	   + 9 10	   	+11      12 13		14		 15 16	 17       18 
							                          //  1           0        0        1       0         1     0 0       0 0        0 0       0  1     0      0  0     0        0  	
					//jr                 1          0         0        0       0         0     0 0       1 1        0 1       0  0     0      0  0 00_00_00
               //jal        		   1          0         0        0       0         0     1 1       1 0        0  0      0  0     1      1  0 00_00_00
					//jalr    			   1          0         0        0       0         0     1 1       1 1        0  1      0  0     1      0  1 00_00_00			
parameter 	value0 = 29'b00000_10_0101_00000_00010_0000_00_00, value1 = 29'b00000_00_0000_00000_00110_0000_00_00, value2 = 29'b00000_00_0000_00000_01100_0000_00_00,
				value3 = 29'b00000_00_1100_00000_00000_0001_00_00, value4 = 29'b00000_00_0000_01000_00001_0000_00_00, value5 = 29'b00000_00_1010_00000_00000_0001_00_00,
				value6 = 29'b00000_00_0000_00000_01000_0000_00_00, value7 = 29'b00000_00_0000_00000_00001_0100_00_00, value8 = 29'b00000_00_0000_00000_01100_0000_00_00,
				value9 = 29'b00000_00_0000_00000_00001_0000_00_00, valueA = 29'b00000_00_0000_10000_01101_0000_00_00, valueB = 29'b00000_01_0000_00001_01000_0010_00_00,
				valueC = 29'b00000_01_0000_00001_01000_0000_00_00, valueD = 29'b00000_10_0000_11010_00001_1000_00_00, valueE = 29'b00000_10_0000_00011_01000_0000_00_00,
				valueF = 29'b00000_10_0000_00010_00000_0000_00_00, valueG = 29'b00000_00_0000_00000_10000_0000_00_00, valueH = 29'b00000_00_1010_00000_00000_0001_01_00,
				valueI = 29'b00000_00_1010_00000_00000_0001_10_00, valueJ = 29'b00000_00_0000_01000_00001_0000_00_01, valueK = 29'b00000_00_0000_01000_00001_0000_00_10,
				valueL = 29'b00000_10_0000_11011_01001_0100_00_00, valueM = 29'b10000_00_0000_00000_01000_0000_00_00, valueN = 29'b00000_00_0000_01000_00001_0000_00_11,
				valueO = 29'b00000_10_0000_00100_00000_0000_00_00, valueP = 29'b10101_00_0000_00000_01000_0000_00_00, valueQ = 29'b00000_10_0000_00101_00000_0000_00_00;
				
parameter 	AND =4'b0000, OR =4'b0001, ADD =4'b0010, XOR =4'b0011,
				NOR =4'b0100, SLT=4'b0101, SUB =4'b0110, SLTU=4'b0111,
				SRL =4'b1000, SLL=4'b1001, SRA =4'b1010, MUL =4'b1011,
				ADDU=4'b1100,SUBU=4'b1101;

always @ (posedge clk or posedge reset) 
	if (reset==1) state <= IF;
	else case (state)
		IF: if(MIO_ready) state <= ID;
				else state <= IF;
		ID: case (Inst_in[31:26])
				6'b000000:  begin state <= Exe_R; //R 
								if (Inst_in[5:0] == 6'b001000) state <= Jr;  //jr
								else if(Inst_in[5:0] == 6'b001001) state <= Jalr;
								else if(Inst_in[5:0] == 6'b000010) state <= Exe_R_S;
								else if(Inst_in[5:0] == 6'b000000) state <= Exe_R_S;
								else if(Inst_in[5:0] == 6'b000011) state <= Exe_R_S;
								else if(Inst_in[5:0] == 6'b001100) state <= Syscall_save;
								//else if(Inst_in == 0) state <= IF;
								end
				6'b010000:  begin 
								if     (Inst_in[25:21] == 5'b000100) state <= mtc0; 
								else if(Inst_in[25:21] == 5'b000000) state <= mfc0;
								else if(Inst_in[25] == 1'b1 && Inst_in[5:0] == 6'b011000) state <= Eret;
								end
				6'b100011: state <= Exe_Mem; //lw
				6'b100001: state <= Exe_Mem; //lh
				6'b100000: state <= Exe_Mem; //lb
				6'b101011: state <= Exe_Mem; //sw
				6'b101001: state <= Exe_Mem; //sh
				6'b101000: state <= Exe_Mem; //sb
				
				6'b001000: state <= Exe_I; //addi
				6'b001100: state <= Exe_I; //andi
				6'b001101: state <= Exe_I; //ori
				6'b001110: state <= Exe_I; //xori
				6'b001111: state <= Exe_Lui; //lui
		      6'b001010: state <= Exe_I; //slti
				
				
				6'b001001: state <= Exe_I; //addiu
				6'b001011: state <= Exe_I; //sltiu
				
				6'b000010: state <= J; //j
				6'b000011: state <= Jal; //jal
				6'b000100: state <= Exe_Beq; //beq
				6'b000101: state <= Exe_Bne; //bne
				
				6'b011100: state <= Exe_R;   //mul
				default: state <= Error;
			endcase
		Exe_Mem: case (Inst_in[31:26])
				6'b100011: state <= Mem_RD; //lw
				6'b100001: state <= Mem_RD; //lh
				6'b100000: state <= Mem_RD; //lb
				6'b101011: state <= Mem_WD; //sw
				6'b101001: state <= Mem_WD_H; //sh
				6'b101000: state <= Mem_WD_B; //sb
				default: state <= Error;
			endcase
		Exe_R: begin state <= R_WB; end
		Exe_R_S: begin state <= R_WB; end
		Exe_I: begin state <= I_WB; end
		Exe_Beq: begin state <= IF; end
		Exe_Bne: begin state <= IF; end
		J: begin state <= IF; end
		Jr: begin state <= IF; end
		Jal: begin state <= IF; end
		Jalr: begin state <= IF; end
		Mem_RD: begin
					if (MIO_ready) begin
						case (Inst_in[31:26])
							6'b100011: state <= LW_WB;    //lw
							6'b100001: state <= LW_WB_H;  //lh
							6'b100000:state <= LW_WB_B;   //lb
							default: state <= Error;
						endcase
					end
					else state <= Mem_WD;
				end
		Mem_WD: begin
					if (MIO_ready) state <= IF;
					else state <= Mem_WD;
				end
		Mem_WD_H: begin
					if (MIO_ready) state <= IF;
					else state <= Mem_WD_H;
		end
		Mem_WD_B: begin
					if (MIO_ready) state <= IF;
					else state <= Mem_WD_B;
		end
		Exe_Lui: begin state <= IF; end
		R_WB: begin state <= IF; end
		I_WB: begin state <= IF; end
		LW_WB: begin state <= IF; end
		LW_WB_H: begin state <= IF; end
		LW_WB_B: begin state <= IF; end
		mtc0: begin state <= IF; end
		mfc0: begin state <= IF; end
		Eret: begin state <= IF; end
		Syscall_save: begin state <= Syscall_jmp; end
		Syscall_jmp: begin state <= IF; end
		Error: state <= Error;
		default: state <= Error;
	endcase

	always@ * begin
		case(state)//state
		      IF:		begin `Datapath_signals = value0; ALU_operation = ADD; end
				ID:		begin `Datapath_signals = value1; ALU_operation = ADD; end
				Exe_Mem: begin `Datapath_signals = value2; ALU_operation = ADD; end
				Mem_RD:  begin `Datapath_signals = value3; ALU_operation = ADD; end
				LW_WB:   begin `Datapath_signals = value4; ALU_operation = ADD; end
				LW_WB_H:   begin `Datapath_signals = valueJ; ALU_operation = ADD; end
				LW_WB_B:   begin `Datapath_signals = valueK; ALU_operation = ADD; end
				Mem_WD:  begin `Datapath_signals = value5; ALU_operation = ADD; end
				Mem_WD_H:  begin `Datapath_signals = valueH; ALU_operation = ADD; end
				Mem_WD_B:  begin `Datapath_signals = valueI; ALU_operation = ADD; end
				Exe_R:   begin `Datapath_signals = value6;
					if (Inst_in[31:26] == 6'h1c) ALU_operation= MUL;
					else
					case (Inst_in[5:0])
						6'b100000: ALU_operation= ADD;
						6'b100010: ALU_operation= SUB;
						6'b100100: ALU_operation= AND;
						6'b100101: ALU_operation= OR;
						6'b100111: ALU_operation= NOR;
						6'b101010: ALU_operation= SLT;
						6'b101011: ALU_operation= SLTU;
						6'b100110: ALU_operation= XOR;
						
						6'b000100: ALU_operation= SLL;
						6'b000110: ALU_operation= SRL;
						6'b000111: ALU_operation= SRA;
						6'b100001: ALU_operation= ADDU;
						6'b100010: ALU_operation= SUBU;
						
						default: ALU_operation= ADD;
					endcase
					end
				Exe_R_S: begin `Datapath_signals = valueG;
					case (Inst_in[5:0])
						6'b000010: ALU_operation= SRL; 
						6'b000000: ALU_operation= SLL; 
						6'b000011: ALU_operation= SRA;
						default: ALU_operation= ADD;
					endcase
					end						
				R_WB:    begin `Datapath_signals = value7; ALU_operation = ADD; end
		//--------------------------------------------------------------------------
				Exe_I: 	begin `Datapath_signals = value8;  
					case (Inst_in[31:26])
						6'b001000: ALU_operation= ADD; //addi
						6'b001100: ALU_operation= AND; //andi
						6'b001101: ALU_operation= OR; //ori
						6'b001110: ALU_operation= XOR; //xori
						6'b001111: ALU_operation= SRL; //lui
						6'b001010: ALU_operation= SLT; //slti
						
						6'b001001: ALU_operation= ADDU; //addiu
				      6'b001011: ALU_operation= SLTU; //sltiu
						default:ALU_operation= ADD;
					endcase
					end
				I_WB:		begin `Datapath_signals = value9; ALU_operation = ADD; end
				Exe_Lui:	begin `Datapath_signals = valueA; ALU_operation = ADD; end
		//--------------------------------------------------------------------------
				Exe_Beq: begin `Datapath_signals = valueB; ALU_operation = SUB; end	
		//--------------------------------------------------------------------------
				Exe_Bne: begin `Datapath_signals = valueC; ALU_operation = SUB; end	
				Jal:	   begin `Datapath_signals = valueD; ALU_operation = ADD; end
				Jr:		begin `Datapath_signals = valueE; ALU_operation = ADD; end
		//--------------------------------------------------------------------------
				J:      begin `Datapath_signals = valueF; ALU_operation = ADD; end
				Jalr:	  begin `Datapath_signals = valueL; ALU_operation = ADD; end
				mtc0:	  begin `Datapath_signals = valueM; ALU_operation = ADD; end
				mfc0:	  begin `Datapath_signals = valueN; ALU_operation = ADD; end
				Eret:	  begin `Datapath_signals = valueO; ALU_operation = ADD; end
				Syscall_save:	  begin `Datapath_signals = valueP; ALU_operation = ADD; end
				Syscall_jmp:	  begin `Datapath_signals = valueQ; ALU_operation = ADD; end
            default:begin `Datapath_signals = value0; ALU_operation = ADD; end
		endcase
	end
				
endmodule
