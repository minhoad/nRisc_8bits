module ula(
//Dado 2 é a saida do mux, pode ser imediato ou conteudo de um reg
	input wire [2:0]ULAOp,
	input wire[7:0]Dado1,
	input wire[7:0]Dado2,
	output wire zero,
	output wire [7:0] Resultado
);


	assign zero = (Dado1 ^ Dado2 == 8'b0 & ULAOp == 3'b101) ? 1'b1 : 1'b0;

	assign Resultado = 
		(ULAOp == 3'b000) ? Dado1+Dado2 : // LOAD 
		(ULAOp == 3'b001)	? Dado2: // LA
		(ULAOp == 3'b010) ? Dado1+Dado2: // STORE
		(ULAOp == 3'b011 & ULAOp != 3'b101)	? Dado1 + Dado2 : Dado1 + Dado2 ;	// ADD E ADDI
	
endmodule
