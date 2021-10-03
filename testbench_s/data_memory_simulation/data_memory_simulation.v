module data_memory_simulation(a,b);
	reg Clock, MemWrite,  Reset;
	reg [7:0]Address;
	reg [7:0]WriteData; // Endereço Escrever dado
	
	wire[7:0]Data; // Dado lido
	wire clock, memwrite, reset;
	wire [7:0]address;
	wire [7:0]writedata;
	
	input a,b; // inutil, estou usando apenas para conseguir fazer o testbench
	
	assign clock = Clock;
	assign memwrite = MemWrite;

	assign reset = Reset;
	assign address = Address;
	assign writedata = WriteData;
	
	data_memory dm(clock, address, writedata, Data, memwrite, reset);
	
	always #10 Clock = ~Clock;
	initial begin 
		#0 Reset = 1;
		#0 Clock = 0;
		#20 Reset = 0;
		#0 MemWrite = 0;
		#0 Address = 8'b00000000;
		#0 WriteData = 8'b00000010;
		#10 MemWrite = 1;
		#10 MemWrite = 0;
		#0 Address = 8'b00000001;
		#0 WriteData = 8'b00001010;
		#10 MemWrite = 1;
		#10 MemWrite = 0;
		#0 Address = 8'b00000000;
		#20 Address = 8'b00000001;
		#30 $finish;
	end
	
endmodule
