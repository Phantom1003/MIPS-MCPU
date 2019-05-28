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
module UART_RX #(parameter COUNTER_MSB = 9) 				//������λ�Ĵ�������
			     (input clk, 										//����ͬ��ʱ��100MHz
				   input rst,
					input RXD,										//���н����ź�
				   input [COUNTER_MSB-1:0] halfPeriod,		//����9'd434
					output reg [31:0]TESTD,
					output reg RX_Ready = 0, 						//����������Ч
					output reg [7:0] Rx_Data					//�������ݻ�����
					);

localparam Idle = 2'b00, Rece = 2'b01, Even = 2'b10, Stop = 2'b11;
//halfPeriod = �����ʰ�����
reg [COUNTER_MSB:0] counter = 0;
reg [8:0] Rx_shift = 9'h0;							//������λ�Ĵ���
reg [1:0]state = 0;									//״̬����

	always @ (posedge clk or posedge rst)begin
		if(rst)begin 
			counter <= 0;
			state <= Idle;	
			TESTD <= 32'hFFFFFFFF;
		end
		else case(state)
		Idle: begin
				RX_Ready <= 1'b0;								//����������Ч
				Rx_shift <= 9'b100000000;					//��λ�Ĵ�����ʼ��
				if(RXD)begin 									
					counter <= 0;								//RXD=1��������
					state <= Idle;								//�ȴ���ʼλ
				end
				else begin
					counter <= counter + 1'b1;
					if(counter == {1'b0, halfPeriod})	begin		//ͬ���������λ
						state <= Rece;										//�������״̬
						counter <= 0;										//��������
					end
					else state <= Idle;									//����ͬ����ʼλ
				end
		end

		Rece: begin
			if(counter == {halfPeriod, 1'b1})	begin				//	��������������RXD
				counter  <= 0;
				Rx_shift <= {RXD, Rx_shift[8:1]};					//������λ�Ĵ�������λ��ǰ���ƣ�
				if(Rx_shift[1]) state <= Stop;						//���ݽ������ת��ż��ֹͣ״̬
				else state <= Rece;										//����δ������ϣ�����Rece״̬
			end else
			counter <= counter + 1'b1;									//������һ
		end
		
		Stop: begin
			if(counter == {halfPeriod, 1'b1})	begin				//������������ֹͣλ
				RX_Ready <= Rx_shift[0] & RXD;						//Check stop bit,����������Ч
				Rx_Data  <= Rx_shift[8:1];								//���������ͽ��ջ�����
				TESTD    <= {TESTD[23:0],Rx_shift[8:1]};			//�������
				state    <= Idle;											//ת��ȴ�״̬
			end else 
				counter <= counter + 1'b1;	
		end
		
		Even: state <= Idle;												//����żУ��
		
		endcase																//״̬��������
		
	end

endmodule
