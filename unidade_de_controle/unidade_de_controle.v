module unidade_de_controle(Clock, Jump, Opcode, WE, ULASrc, ULAOp, BEQ, RegSrc, Reset, PCWrite, RegWrite);
	input [2:0] Opcode;
	input Clock;
	output reg [2:0] ULAOp;
	output reg WE, ULASrc, BEQ, RegSrc, PCWrite, Jump, RegWrite, Reset;
	// WE = Write Enable -> MemWrite
	always @(posedge Clock)
		begin 
			case(Opcode)
				3'b000: // LOAD
					begin 
						ULAOp <= 3'b000;
						Jump <= 0;
						WE <= 0;
						ULASrc <= 1;
						BEQ <= 0;
						RegSrc <= 1;
						RegWrite <= 1;
						PCWrite <= 1;
						Reset <=0;
					end
				3'b001: // LA
					begin 
						ULAOp <= 3'b001;
						Jump <= 0;
						WE <= 0;
						ULASrc <= 1;
						BEQ <= 0;
						RegSrc <= 1; 
						RegWrite <= 1;
						PCWrite <= 1;
					end
				3'b010: // STORE
					begin 
						ULAOp <= 3'b010;
						Jump <= 0;
						WE <= 1;
						ULASrc <= 1;
						BEQ <= 0;
						RegSrc <= 1; // X
						RegWrite <= 0;
						PCWrite <= 1;
						Reset <=0;
					end
				3'b011: // ADD
					begin 
						ULAOp <= 3'b011;
						Jump <= 0;
						WE <= 0;
						ULASrc <= 0;
						BEQ <= 0;
						RegSrc <= 0; 
						RegWrite <= 1;
						PCWrite <= 1;
						Reset <=0;
					end
				3'b100: // ADDI
					begin 
						ULAOp <= 3'b100;
						Jump <= 0;
						WE <= 0;
						ULASrc <= 1;
						BEQ <= 0;
						RegSrc <= 0; 
						RegWrite <= 1;
						PCWrite <= 1;
						Reset <=0;
					end
				3'b101: // BEQ
					begin 
						ULAOp <= 3'b101;
						Jump <= 0;
						WE <= 0;
						ULASrc <= 0; // X
						BEQ <= 1;
						RegSrc <= 0; // X
						RegWrite <= 0;
						PCWrite <= 1;
						Reset <=0;
					end
				3'b110: // J
					begin 
						ULAOp <= 3'b110;
						Jump <= 1;
						WE <= 0;
						ULASrc <= 0; // X
						BEQ <= 1;
						RegSrc <= 0; // X
						RegWrite <= 0;
						PCWrite <= 1;
						Reset <=0;
					end
				3'b111: // HALT
					begin 
						ULAOp <= 3'b111;
						Jump <= 0;
						WE <= 0;
						ULASrc <= 0; // X
						BEQ <= 0;
						RegSrc <= 0; 
						RegWrite <= 0;
						PCWrite <= 0;
						Reset <=0;
					end
			endcase
		end
		
endmodule
