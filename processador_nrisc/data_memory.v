module data_memory(Clock, Address, WriteData, Data, MemWrite, Reset);
    input Clock, MemWrite, Reset;
    input [7:0]Address;
    input [7:0]WriteData; // Endereço Escrever dado

    output wire[7:0]Data; // Dado lido

    reg [7:0]Memory[0:255]; 

	 reg [7:0]data; 
	 
	 assign Data = Memory[Address];
	 
    always @(posedge Clock) begin
            if (Reset) begin
                Memory[Address] <= 0;
            end
            else if(MemWrite)//Escreve na memória
                Memory[Address] <= WriteData;
            else 
                data <= Memory[Address];
								
				
    end
	 initial begin
		$readmemh("datameminitialization.hex", Memory);
	 end

endmodule


	
	
	