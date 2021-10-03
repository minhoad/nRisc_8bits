module registers_bank(Clock, RegWrite,Reg1_read, Reg2_read, Address, WriteData, Data1, Data2, Reset);
	input Clock, RegWrite, Reset;
	input Reg1_read;
	input Reg2_read;
	input Address; // Reg 1(read) Reg 2(read) Reg 1(write)
	input [7:0]WriteData; // Escreve dado
	
	output [7:0]Data1;
	output [7:0]Data2; // Dado 1 Dado 2
	
	reg [7:0]Memory[1:0]; // só possuo dois registradores
	
	assign Data1 = Memory[Reg1_read];
	assign Data2 = Memory[Reg2_read];
	
	integer i;
	
	always @(posedge Clock) begin
			if(Reset) begin //Quando resetar coloca os regs igual a zero
				for(i=0;i<2;i=i+1)
					Memory[i] = 0;
			end
			else if(RegWrite)
				Memory[Address] <= WriteData;
			else begin //Quando não estiver fazendo nada
				for(i=0;i<2;i=i+1)
					Memory[i] <= Memory[i];
			end
			
	end
		
endmodule
