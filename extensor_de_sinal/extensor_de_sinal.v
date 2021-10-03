module extensor_de_sinal(instruction_received, immediate);
	input [7:0] instruction_received;
	output [7:0] immediate;
	
	wire [2:0] opcode = instruction_received [7:5];
	
	assign immediate = 
	(opcode == 3'b000) ?  instruction_received[2:0] : // store
	(opcode == 3'b010) ?  instruction_received[2:0] : // load
	(opcode == 3'b001) ?  instruction_received[3:0] ://  la
	(opcode == 3'b100) ?  instruction_received[3:0] ://  addi
	(opcode == 3'b101) ?  instruction_received[4:0] ://  beq
	(opcode == 3'b110) ?	 instruction_received[4:0] : 8'b00000000; // j

endmodule
