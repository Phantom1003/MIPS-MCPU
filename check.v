`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:38:37 03/28/2018 
// Design Name: 
// Module Name:    check 
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
module check(
    input [2:0]ALU_operation,
    input A_MST,
    input B_MST,
    input R_MST,
    output reg overflow
    );
always@* begin
 case(ALU_operation)
      3'b010:begin 
		if(A_MST == 0 && B_MST == 0 && R_MST == 1)
		overflow = 1;
		else if(A_MST == 1 && B_MST == 1 && R_MST == 0)
		overflow = 1;
		else
		overflow = 0;
		end
		
		3'b110:begin 
		if(A_MST == 0 && B_MST == 1 && R_MST == 1)
		overflow = 1;
		else if(A_MST == 1 && B_MST == 0 && R_MST == 0)
		overflow = 1;
		else
		overflow = 0;
		end
		
      default: overflow = 0;
  endcase
end

endmodule
