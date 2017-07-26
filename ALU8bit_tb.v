`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:03:41 11/02/2016
// Design Name:   alu8bit
// Module Name:   C:/Users/Satyam/Desktop/ALU/alu8bit_tb_1.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU8bit_tb;

	// Inputs
	reg [17:0] instr;
	reg clk;
	reg start;

	// Outputs
	wire [7:0] result1;
	wire [7:0] result2;
	wire carry;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	alu8bit uut (
		.instr(instr), 
		.result1(result1), 
		.result2(result2), 
		.carry(carry), 
		.overflow(overflow), 
		.clk(clk), 
		.start(start)
	);

	initial begin
		// Initialize Inputs
		instr = 0;
		clk = 1;
		start = 0;

		// Wait 100 ns for global reset to finish
	#50;
			
	#10 instr=18'b000000001000000001;
	#10 instr=18'b000000011000000010;
	#10 instr=18'b001111111111111111;
	#10 instr=18'b010000001000000001;
	#10 instr=18'b010000011000000010;
	#10 instr=18'b011111111100000101;
	#10 instr=18'b100000001000000001;
	#10 instr=18'b100000100000000010;
	#10 instr=18'b101111111100000101;
	#80; instr=18'b110000001000000001;
	start = 1; #40 start = 0;
	#80 instr=18'b110000100000000010;
	start = 1; #40 start = 0;
	#80 instr=18'b111111111100000101;
	start = 1; #40 start = 0;
	#80 instr=18'b111111111111111111;
	start = 1; #40 start = 0;
        
	end
	
	always #5 clk=~clk; 
	endmodule

