module memory_of_instruction(Clock ,Address, Instruction, Reset, Data_in, WE);
	input Clock, Reset, WE;
	input [7:0]Data_in;
	input [7:0]Address;
	
	output wire [7:0]Instruction; 
	
	reg [7:0]Memory[63:0];
	
	assign Instruction = Memory[Address];
	
	always @(posedge Clock) begin
		if(WE) begin
			Memory[Address] <= Data_in; // para ser uma memória tem Data_in
		end else begin
			if(Reset) begin
					Memory[Address] <= 0;
			end
		end
	end
	
	initial begin
		$readmemh("instructionsinhex.hex", Memory);
	end
	
endmodule
