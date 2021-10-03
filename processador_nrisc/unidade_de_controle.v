module unidade_de_controle(Opcode, decoded_instruction);
	input wire[2:0] Opcode;
	output wire [9:0] decoded_instruction;
														//ulaop[2:0], jump, memwrite, ulasrc, beq, regsrc, regwrite,pcwrite 
	assign decoded_instruction = (Opcode==3'b000) ? 10'b0000010011 : 
										  (Opcode==3'b001) ? 10'b0010010111 :
										  (Opcode==3'b010) ? 10'b0100110101 :
										  (Opcode==3'b011) ? 10'b0110000111 :
										  (Opcode==3'b100) ? 10'b1000010111 :
										  (Opcode==3'b101) ? 10'b1011001001 :
										  (Opcode==3'b110) ? 10'b1101001001 :
										  (Opcode==3'b111) ? 10'b1110000000 : 10'b1111111111;
										  
	// WE = Write Enable -> MemWrite	
endmodule
