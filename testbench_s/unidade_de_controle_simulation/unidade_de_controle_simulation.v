module unidade_de_controle_simulation(input a, output b);
//entrada a e saida b são inúteis, só foram criadas para poder programar o design do test
	reg [2:0] Opcode;
	reg Clock;
	wire [2:0] ULAOp;
	wire WE, ULASrc, BEQ, RegSrc, PCWrite, Jump, RegWrite, Reset;
	// WE = Write Enable -> MemWrite
	
	wire [2:0] opcode;
	wire clock;
	
	assign opcode = Opcode;
	assign clock = Clock;
	
	unidade_de_controle uc(clock,Jump, opcode, WE, ULASrc, ULAOp, BEQ, RegSrc, Reset, PCWrite, RegWrite);
	
	always #10 Clock = ~Clock;
	initial begin
		#0 Clock = 0;
		#10 Opcode = 3'b000;
		#20 Opcode = 3'b001;
		#20 Opcode = 3'b010;
		#20 Opcode = 3'b011;
		#20 Opcode = 3'b100;
		#20 Opcode = 3'b101;
		#20 Opcode = 3'b110;
		#20 Opcode = 3'b111;
		#10 $finish;
	end

endmodule
 