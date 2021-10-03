module processador_nrisc(input wire clock, input wire reset, output wire [7:0] instruction_out);
	wire pcwrite, jump, memwrite, ulasrc, beq, regsrc, regwrite_;
	wire [2:0] ulaop;
	wire [7:0] address;
	wire [7:0] instruction;
	wire [7:0] dummy_data_in;
	
	assign dummy_data_in = 8'b0;
	
	wire rd, rs, rs2;
	wire [7:0] escrevedado;
	wire [7:0] data1;
	wire [7:0] data2;
	
	wire [2:0]opcode;
	wire [7:0]dado2;
	wire [7:0] immediate;
	wire zero;
	wire [7:0] resultado;
	wire [7:0] dadolido;
	wire[7:0] address_mais_immediate;
	wire[7:0] address_mais_um;
	//wire [7:0] resultadoMUX1;
	wire [7:0] resultadoMUX2;
	wire beq_and_zero;
	wire [9:0] decoded_instruction;
	assign ulaop = decoded_instruction[9:7];
	assign jump = decoded_instruction[6];
	assign memwrite = decoded_instruction[5];
	assign ulasrc = decoded_instruction[4];
	assign beq = decoded_instruction[3];
	assign regsrc = decoded_instruction[2];
	assign regwrite_ = decoded_instruction[1];
	assign pcwrite = decoded_instruction[0];
	
	
	
	assign rd = instruction[4];
	assign rs = (opcode == 3'b101) ? 1'b0 : instruction[3]; // forçar que os rs sejam diferentes no beq
	assign rs2 = (opcode==3'b011) ? instruction[2] : (opcode==3'b101) ? 1'b1 : 1'b0;
	assign opcode = instruction[7:5];
	assign address_mais_immediate = address + immediate;
	assign address_mais_um = address+1'b1;
	assign beq_and_zero = beq & zero;
	assign instruction_out = instruction; // evitar warning 21074
	
	pc PC(clock, pcwrite, address , resultadoMUX2 ,reset); // nextPC ou resultado MUX2
	
	memory_of_instruction MEM_OF_INSTRUCTION(clock, address, instruction, 0, dummy_data_in, 0); // WE é 0 porque eu nunca vou escrever, já vai estar escrito
	
	registers_bank REG_BANK(clock, regwrite_, rs, rs2, rd, escrevedado, data1, data2, reset);
	
	extensor_de_sinal EXT_DE_SINAL(instruction, immediate);
	
	mux MUX_ULA(immediate,data2,ulasrc,dado2);
	ula ULA(ulaop, data1,dado2, zero, resultado);
	
	data_memory DATA_MEMORY(clock, resultado, data2, dadolido, memwrite, reset);
	mux MUX_DATA_MEM(resultado, dadolido, regsrc, escrevedado); 
	
	unidade_de_controle UNIDADE_DE_CONTROLE(opcode, decoded_instruction);
	
	//mux MUX1(address_mais_immediate, address_mais_um, jump, resultadoMUX1);
	assign resultadoMUX2 = (jump==1'b1 & opcode == 3'b110) ? address_mais_immediate : 
								  (jump==1'b1 & beq_and_zero == 1'b1 & opcode == 3'b101) ? address_mais_immediate : address_mais_um;
	//mux MUX2(resultadoMUX1, address_mais_um, beq_and_zero, resultadoMUX2);
	
	
endmodule
