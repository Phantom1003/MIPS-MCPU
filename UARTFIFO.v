`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:45 12/04/2018 
// Design Name: 
// Module Name:    UARTFiFo 
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
module UARTFiFo #(parameter WIDTH = 8,
						parameter DEPTH_BITS = 7)
			  (input s_clk, 
				input s_rst, 
				input s_valid, 
				output s_ready,
				input [WIDTH-1:0] s_data, 
				output[DEPTH_BITS-1:0] s_load,
				input m_clk, 
				input m_rst, 
				output reg m_valid, 
				input m_ready,
				output reg [WIDTH-1:0] m_data, 
				output [DEPTH_BITS-1:0] m_load
				);
						
localparam DEPTH = 1 << DEPTH_BITS;			//ȱʡ����7λ
reg [WIDTH-1:0] data[DEPTH-1:0];				//ȱʡ=128��Ԫ8λFiFo

	
	//s_clk(write) domain logic
reg [DEPTH_BITS-1:0] wrPtr = 0;				//дָ��ȱʡ7λ
reg [DEPTH_BITS-1:0] rdPtrSync = 0;				//��ָ��ͬ��ȱʡ7λ

	always @ (posedge s_clk)
		if(s_rst)
			wrPtr <= {DEPTH_BITS{1'b0}};		//��λwrPtr=0
		else if(s_valid & s_ready)				//UART������Ч��FiFoδ��
		begin
			wrPtr <= wrPtr + 1'b1;				//дָ��+1
			data[wrPtr] <= s_data;				//д���������
		end
		
	wire [DEPTH_BITS-1:0] wrPtr_add1 = wrPtr + 1;//wrPtr_add1=дָ��+1
	assign s_ready = wrPtr_add1 != rdPtrSync;	//FiFoδ����
	assign s_load = wrPtr - rdPtrSync;			//д��Ч��
	
	//m_clk(read) domain logic
reg [DEPTH_BITS-1:0] rdPtr = 0;				//��ָ��ȱʡ7λ	
reg [DEPTH_BITS-1:0] wrPtrSync = 0;				//дָ��ͬ��ȱʡ7λ

	always @ (posedge m_clk) begin
		if(m_rst)
			rdPtr <= {DEPTH_BITS{1'b0}};		//��λrdPtr=0
		else if((rdPtr != wrPtrSync) & m_ready)				//���Ҷ��зǿ�
		begin
			rdPtr <= rdPtr + 1'b1;				//��ָ��+1
			m_data <= data[rdPtr];				//������
		end
		m_valid <= (rdPtr != wrPtrSync);
	end
	
	//assign m_valid = (rdPtr != wrPtrSync);//���зǿ�
	assign m_load = wrPtrSync - rdPtr;
	
	always @ (posedge s_clk) rdPtrSync <= rdPtr;
	always @ (posedge m_clk) wrPtrSync <= wrPtr;
	
endmodule

