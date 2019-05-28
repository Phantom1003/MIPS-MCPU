`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:51 03/07/2019 
// Design Name: 
// Module Name:    UART 
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
module UART_RX #(parameter COUNTER_MSB = 9) 				//传入移位寄存器参数
			     (input clk, 										//计数同步时钟100MHz
				   input rst,
					input RXD,										//串行接收信号
				   input [COUNTER_MSB-1:0] halfPeriod,		//常数9'd434
					output reg [31:0]TESTD,
					output reg RX_Ready = 0, 						//接收数据有效
					output reg [7:0] Rx_Data					//接收数据缓冲器
					);

localparam Idle = 2'b00, Rece = 2'b01, Even = 2'b10, Stop = 2'b11;
//halfPeriod = 波特率半周期
reg [COUNTER_MSB:0] counter = 0;
reg [8:0] Rx_shift = 9'h0;							//接收移位寄存器
reg [1:0]state = 0;									//状态变量

	always @ (posedge clk or posedge rst)begin
		if(rst)begin 
			counter <= 0;
			state <= Idle;	
			TESTD <= 32'hFFFFFFFF;
		end
		else case(state)
		Idle: begin
				RX_Ready <= 1'b0;								//接收数据无效
				Rx_shift <= 9'b100000000;					//移位寄存器初始化
				if(RXD)begin 									
					counter <= 0;								//RXD=1计数清零
					state <= Idle;								//等待起始位
				end
				else begin
					counter <= counter + 1'b1;
					if(counter == {1'b0, halfPeriod})	begin		//同步半个数据位
						state <= Rece;										//进入接收状态
						counter <= 0;										//计数清零
					end
					else state <= Idle;									//继续同步起始位
				end
		end

		Rece: begin
			if(counter == {halfPeriod, 1'b1})	begin				//	计数结束，采样RXD
				counter  <= 0;
				Rx_shift <= {RXD, Rx_shift[8:1]};					//送入移位寄存器（低位在前右移）
				if(Rx_shift[1]) state <= Stop;						//数据接收完毕转奇偶或停止状态
				else state <= Rece;										//数据未接收完毕，继续Rece状态
			end else
			counter <= counter + 1'b1;									//计数加一
		end
		
		Stop: begin
			if(counter == {halfPeriod, 1'b1})	begin				//计数结束采样停止位
				RX_Ready <= Rx_shift[0] & RXD;						//Check stop bit,接收数据有效
				Rx_Data  <= Rx_shift[8:1];								//接收数据送接收缓冲器
				TESTD    <= {TESTD[23:0],Rx_shift[8:1]};			//调试输出
				state    <= Idle;											//转入等待状态
			end else 
				counter <= counter + 1'b1;	
		end
		
		Even: state <= Idle;												//无奇偶校验
		
		endcase																//状态描述结束
		
	end

endmodule
