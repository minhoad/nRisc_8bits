module data_memory(Clock, Address, WriteData, Data, MemWrite, Reset);
    input Clock, MemWrite, Reset;
    input [7:0]Address;
    input [7:0]WriteData; // Endereço Escrever dado

    output reg[7:0]Data; // Dado lido

    reg [7:0]Memory[0:255]; 

    integer i;

    always @(posedge Clock) begin
            if (Reset) begin
                Memory[Address] <= 0;
            end
            else if(MemWrite)//Escreve na memória
                Memory[Address] <= WriteData;
            else 
                Data <= Memory[Address];
    end

endmodule


	
	
	