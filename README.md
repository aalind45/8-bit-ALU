# 8-bit-ALU

Verilog program for an 8-bit ALU where a 2-bit input, known as Opcode is given and according to that input, two 8-bit numbers, a and b, which are also given as inputs are operated for addition, multiplication, AND or XOR. The ALU conains four different logic blocks, namely adder8bit, mult8bit, and8bit and xor8bit. The operation to be done on a and b given as inputs is decided through Opcode as follows:-

Opcode	        Operation Done
  00	            Addition
  01	              AND
  10	              XOR
  11	          Multiplication


In adder8bit, 8 Full Adders are used for ripple-carry addition of two 8-bit numbers.
In mult8bit, the Booth’s algorithm is used for finding the product of two 8-bit numbers. 
