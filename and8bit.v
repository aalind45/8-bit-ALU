`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:09 10/28/2016 
// Design Name: 
// Module Name:    and8bit 
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
module and8bit(a,b,out);
	input [7:0] a;
	input [7:0] b;
	output [7:0] out;
	assign out=a&b;

endmodule
