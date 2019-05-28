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
						
localparam DEPTH = 1 << DEPTH_BITS;			//缺省左移7位
reg [WIDTH-1:0] data[DEPTH-1:0];				//缺省=128单元8位FiFo

	
	//s_clk(write) domain logic
reg [DEPTH_BITS-1:0] wrPtr = 0;				//写指针缺省7位
reg [DEPTH_BITS-1:0] rdPtrSync = 0;				//读指针同步缺省7位

	always @ (posedge s_clk)
		if(s_rst)
			wrPtr <= {DEPTH_BITS{1'b0}};		//复位wrPtr=0
		else if(s_valid & s_ready)				//UART数据有效且FiFo未满
		begin
			wrPtr <= wrPtr + 1'b1;				//写指针+1
			data[wrPtr] <= s_data;				//写数据入队列
		end
		
	wire [DEPTH_BITS-1:0] wrPtr_add1 = wrPtr + 1;//wrPtr_add1=写指针+1
	assign s_ready = wrPtr_add1 != rdPtrSync;	//FiFo未满？
	assign s_load = wrPtr - rdPtrSync;			//写有效？
	
	//m_clk(read) domain logic
reg [DEPTH_BITS-1:0] rdPtr = 0;				//读指针缺省7位	
reg [DEPTH_BITS-1:0] wrPtrSync = 0;				//写指针同步缺省7位

	always @ (posedge m_clk) begin
		if(m_rst)
			rdPtr <= {DEPTH_BITS{1'b0}};		//复位rdPtr=0
		else if((rdPtr != wrPtrSync) & m_ready)				//？且队列非空
		begin
			rdPtr <= rdPtr + 1'b1;				//读指针+1
			m_data <= data[rdPtr];				//读队列
		end
		m_valid <= (rdPtr != wrPtrSync);
	end
	
	//assign m_valid = (rdPtr != wrPtrSync);//队列非空
	assign m_load = wrPtrSync - rdPtr;
	
	always @ (posedge s_clk) rdPtrSync <= rdPtr;
	always @ (posedge m_clk) wrPtrSync <= wrPtr;
	
endmodule

