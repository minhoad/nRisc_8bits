module memory_of_instruction_simulation(input a, output b, input clock);
	reg Clock, Reset, WE;
	reg [7:0]Address;
	reg [7:0]Data_in;
	
	//input a,b; //inutil, isso só serve para o quartus me deixar criar o modulo de testbench
	
	wire [7:0]Instruction; 
	
	//wire clock;
	wire reset,we;
	wire [7:0]address;
	wire [7:0]data_in;
	
	assign we = WE;
	assign data_in = Data_in;
	assign reset = Reset;
	//assign clock = Clock;
	assign address = Address;
	
	memory_of_instruction mi(clock,address,Instruction, reset, data_in, we);
	
	integer i;
	
	always #10 Clock = ~Clock;
	initial begin
		#0 Clock = 0;
		#0 Address = 0;
		for(i=0;i<64;i=i+1)
			#20 Address = Address + 1;
	
	end
endmodule
