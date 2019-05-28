////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : Org_lab3.vf
// /___/   /\     Timestamp : 05/29/2018 17:47:37
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -sympath C:/Users/89293/Desktop/3160101126/EX8/XJY1126_081/ipcore_dir -intstyle ise -family kintex7 -verilog C:/Users/89293/Desktop/3160101126/EX8/XJY1126_081/Org_lab3.vf -w C:/Users/89293/Desktop/3160101126/EX8/XJY1126_081/Org_lab3.sch
//Design Name: Org_lab3
//Device: kintex7
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Top_OExp09_IP2MCPU(BTN_y, 
                //clk_100mhz, 
					 CLK_200M_P, 
					 CLK_200M_N,
                RSTN, 
                SW, 
                AN, 
                BTN_x, 
                CR, 
                LED, 
                led_clk, 
                led_clrn, 
                LED_PEN, 
                led_sout, 
                RDY, 
                readn, 
                SEGMENT, 
                seg_clk, 
                seg_clrn, 
                SEG_PEN, 
                seg_sout,
					 RXD);

    input [3:0] BTN_y;
    //Here
	 //input clk_100mhz;
	 input CLK_200M_P; 
    inout CLK_200M_N;
    input RSTN;
    input [15:0] SW;
	 input RXD;
   output [3:0] AN;
   output [4:0] BTN_x;
   output CR;
   output [7:0] LED;
   output led_clk;
   output led_clrn;
   output LED_PEN;
   output led_sout;
   output RDY;
   output readn;
   output [7:0] SEGMENT;
   output seg_clk;
   output seg_clrn;
   output SEG_PEN;
   output seg_sout;
   
   wire [9:0] addra;
   wire [31:0] Addr_out;
   wire [31:0] Ai;
   wire [31:0] Bi;
   wire [7:0] blink;
   wire [3:0] BTN_OK;
   wire Clk_CPU;
   wire [31:0] Counter_out;
   wire [31:0] CPU2IO;
   wire [31:0] Data_in;
   wire [31:0] Data_out;
   wire [31:0] dina;
   wire [31:0] Disp_num;
   wire [31:0] Div;
   wire GPIOF0;
   wire [31:0] inst;
   wire IO_clk;
   wire [15:0] LED_out;
   wire [7:0] LE_out;
   wire N0;
   wire [31:0] PC;
   wire [7:0] point_out;
   wire [3:0] Pulse;
   wire rst;
   wire [4:0] State;
   wire [15:0] SW_OK;
   wire V5;
   wire [0:0] wea;
   wire [4:0] Key_out;
   wire [31:0] ram_data_out;
   wire mem_w;
   wire [1:0] counter_set;
   wire counter2_out;
   wire counter1_out;
   wire counter0_out;
   wire counter_we;
   wire PIOe0000000_we;
   wire RDY_branch;
   wire readn_branch;
	wire clk_100mhz;
	clk_V4toV2 convert (
    .CLK_200MHZ_P(CLK_200M_P), 
    .CLK_200MHZ_N(CLK_200M_N), 
    .clk_100mhz(clk_100mhz)
    );
   
   assign RDY = RDY_branch;
   assign readn = readn_branch;
   SEnter_2_32  M4 (.BTN(BTN_OK[2:0]), 
                   .clk(clk_100mhz), 
                   .Ctrl({SW_OK[7:5], SW_OK[15], SW_OK[0]}), 
                   .Din(Key_out[4:0]), 
                   .D_ready(RDY_branch), 
                   .Ai(Ai[31:0]), 
                   .Bi(Bi[31:0]), 
                   .blink(blink[7:0]), 
                   .readn(readn_branch));
   Multi_CPU    U1 (.clk(Clk_CPU), 
                    .Data_in(Data_in[31:0]), 
                    .INT(counter0_out), 
                    .MIO_ready(V5), 
                    .reset(rst), 
                    .Addr_out(Addr_out[31:0]), 
                    .CPU_MIO(), 
                    .Data_out(Data_out[31:0]), 
                    .inst_out(inst[31:0]), 
                    .mem_w(mem_w), 
                    .PC_out(PC[31:0]), 
                    .state(State[4:0]));
   RAM_B  U3 (.addra(addra[9:0]), 
             .clka(clk_100mhz), 
             .dina(dina[31:0]), 
             .wea(wea[0]), 
             .douta(ram_data_out[31:0]));
   MIO_BUS  U4 (.addr_bus(Addr_out[31:0]), 
               .BTN(BTN_OK[3:0]), 
               .clk(clk_100mhz), 
               .counter_out(Counter_out[31:0]), 
               .counter0_out(counter0_out), 
               .counter1_out(counter1_out), 
               .counter2_out(counter2_out), 
               .Cpu_data2bus(Data_out[31:0]), 
               .led_out(LED_out[15:0]), 
               .mem_w(mem_w), 
               .ram_data_out(ram_data_out[31:0]), 
               .rst(rst), 
               .SW(SW_OK[15:0]), 
               .counter_we(counter_we), 
               .Cpu_data4bus(Data_in[31:0]), 
               .data_ram_we(wea[0]), 
               .GPIOe0000000_we(PIOe0000000_we), 
               .GPIOf0000000_we(GPIOF0), 
               .Peripheral_in(CPU2IO[31:0]), 
               .ram_addr(addra[9:0]), 
               .ram_data_in(dina[31:0]));
	wire [31:0] TESTD;
   wire [31:0] TESTQ;	
	wire [7 :0] Rx_Data;
	wire Rx_Ready;
	UART_RX UART_in (
    .clk(clk_100mhz), 
    .rst(rst), 
    .RXD(RXD), 
    .halfPeriod(9'b110110001), 
    .TESTD(TESTD[31:0]), 
    .RX_Ready(Rx_Ready), 
    .Rx_Data(Rx_Data));	

	wire m_valid;
	UARTFiFo Queue (
    .s_clk  (clk_100mhz), 
    .s_rst  (rst), 
    .s_valid(Rx_Ready), 
    .s_ready(), 
    .s_data (Rx_Data), 
    .s_load (), 
    .m_clk  (~clk_100mhz), 
    .m_rst  (rst), 
    .m_valid(m_valid), 
    .m_ready(1'b1), 
    .m_data (TESTQ[31:0]), 
    .m_load ()
    );

	wire [31:0] TESTW;
	BYTE2WORD b2w (
    .clkMem(~clk_100mhz), 
    .progData(TESTQ[7:0]), 
    .progValid(m_valid), 
    .progEn(1'b1), 
    .addrIn(), 
    .dataIn(), 
    .weIn(), 
    .enIn(), 
    .addrOut(), 
    .dataOut(TESTW[31:0]), 
    .weOut(), 
    .enOut()
    );
					
   Multi_8CH32  U5 (.clk(IO_clk), 
                   .Data0(CPU2IO[31:0]), 
                   .data1({N0, N0, PC[31:2]}), 
                   .data2(inst[31:0]), 
                   .data3(Counter_out[31:0]), 
                   .data4(Addr_out[31:0]), 
                   //.data5(Data_out[31:0]), 
                   //.data6(Data_in[31:0]),
						 .data5(TESTQ[31:0]),
						 .data6(TESTD[31:0]),
                   //.data7(PC[31:0]), 
						 .data7(TESTW[31:0]),
                   .EN(PIOe0000000_we), 
                   .LES({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}), 
                   .point_in({Div[31:0], Div[31:13], State[4:0], N0, N0, N0, 
         N0, N0, N0, N0, N0}), 
                   .rst(rst), 
                   .Test(SW_OK[7:5]), 
                   .Disp_num(Disp_num[31:0]), 
                   .LE_out(LE_out[7:0]), 
                   .point_out(point_out[7:0]));
   SSeg7_Dev  U6   (.clk(clk_100mhz), 
                    .flash(Div[25]), 
                    .Hexs(Disp_num[31:0]), 
                    .LES(LE_out[7:0]), 
                    .point(point_out[7:0]), 
                    .rst(rst), 
                    .Start(Div[20]), 
                    .SW0(SW_OK[0]), 
                    .seg_clk(seg_clk), 
                    .seg_clrn(seg_clrn), 
                    .SEG_PEN(SEG_PEN), 
                    .seg_sout(seg_sout));
   SPIO  U7 (.clk(IO_clk), 
            .EN(GPIOF0), 
            .P_Data(CPU2IO[31:0]), 
            .rst(rst), 
            .Start(Div[20]), 
            .counter_set(counter_set[1:0]), 
            .GPIOf0(), 
            .led_clk(led_clk), 
            .led_clrn(led_clrn), 
            .LED_out(LED_out[15:0]), 
            .LED_PEN(LED_PEN), 
            .led_sout(led_sout));
   clk_div  U8 (.clk(clk_100mhz), 
               .rst(rst), 
               .SW2(SW_OK[2]), 
               .clkdiv(Div[31:0]), 
               .Clk_CPU(Clk_CPU));
   SAnti_jitter  U9 (.clk(clk_100mhz), 
                    .Key_y(BTN_y[3:0]), 
                    .readn(readn_branch), 
                    .RSTN(RSTN), 
                    .SW(SW[15:0]), 
                    .BTN_OK(BTN_OK[3:0]), 
                    .CR(CR), 
                    .Key_out(Key_out[4:0]), 
                    .Key_ready(RDY_branch), 
                    .Key_x(BTN_x[4:0]), 
                    .pulse_out(Pulse[3:0]), 
                    .rst(rst), 
                    .SW_OK(SW_OK[15:0]));
   Counter_x  U10 (.clk(IO_clk), 
                  .clk0(Div[8]), 
                  .clk1(Div[9]), 
                  .clk2(Div[11]), 
                  .counter_ch(counter_set[1:0]), 
                  .counter_val(CPU2IO[31:0]), 
                  .counter_we(counter_we), 
                  .rst(rst), 
                  .counter_out(Counter_out[31:0]), 
                  .counter0_OUT(counter0_out), 
                  .counter1_OUT(counter1_out), 
                  .counter2_OUT(counter2_out));
   Seg7_Dev  U61 (.flash(Div[25]), 
                 .Hexs(Disp_num[31:0]), 
                 .LES(LE_out[7:0]), 
                 .point(point_out[7:0]), 
                 .Scan({SW_OK[1], Div[19:18]}), 
                 .SW0(SW_OK[0]), 
                 .AN(AN[3:0]), 
                 .SEGMENT(SEGMENT[7:0]));
   PIO  U71 (.clk(IO_clk), 
            .EN(GPIOF0), 
            .PData_in(CPU2IO[31:0]), 
            .rst(rst), 
            .counter_set(), 
            .GPIOf0(), 
            .LED_out(LED[7:0]));
   VCC  XLXI_14 (.P(V5));
   GND  XLXI_15 (.G(N0));
   INV  XLXI_27 (.I(Clk_CPU), 
                .O(IO_clk));
endmodule
