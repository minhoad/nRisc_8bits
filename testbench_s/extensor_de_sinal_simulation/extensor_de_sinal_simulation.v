module extensor_de_sinal_simulation(input a, output b);
	reg [7:0] instruction_received;
	wire [7:0] immediate;
	
	wire [7:0] INSTRUCTION_RECEIVED;
	
	assign INSTRUCTION_RECEIVED =  instruction_received;
	
	extensor_de_sinal es(INSTRUCTION_RECEIVED, immediate);
	
	reg clock;
	
	always #10 clock = ~clock;
	initial begin 
	#0 instruction_received = 8'b00001101;
	#10 instruction_received = 8'b01001100;
	#10 instruction_received = 8'b00101000;
	#10 instruction_received = 8'b10011010;
	#10 instruction_received = 8'b10111111;
	#10 instruction_received = 8'b11011000;
	#10 $finish;
	end 
endmodule
