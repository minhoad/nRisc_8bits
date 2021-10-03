module registers_bank_simulation(a,b);
	reg Clock, RegWrite, Reset;
	reg [1:0]Reg1_read;
	reg [1:0]Reg2_read;
	reg [1:0]Address; // Reg 1(read) Reg 2(read) Reg 1(write)
	reg [7:0]WriteData; // Escreve dado
	
	wire [7:0]Data1;
	wire [7:0]Data2; // Dado 1 Dado 2
	wire clock, regwrite, reset;
	wire [1:0] reg1_read;
	wire [1:0]reg2_read;
	wire [1:0]address;
	wire [7:0]writedata;
	
	assign clock = Clock;
	assign regwrite = RegWrite;
	assign reset = Reset;
	assign reg1_read = Reg1_read;
	assign reg2_read = Reg2_read;
	assign address = Address;
	assign writedata = WriteData;
	
	input a,b;// inutil, só para escrever o testbench e o quartus deixar eu fazer o design do modulo
	registers_bank rb(clock, regwrite,reg1_read, reg2_read, address, writedata, Data1, Data2, reset);
	always #10 Clock = ~Clock;
	initial begin
		#0 Reset = 1;
		#0 Clock = 0; // a partir de agora espere 0 e faça isso
		#0 RegWrite = 0;
		#20 Reset = 0; 
		#0 Address = 0;
		#0 WriteData = 8'b10101010;
		#10 RegWrite = 1;
		#10 RegWrite = 0; 
		#0 Address = 1;
		#0 WriteData = 8'b01010101;
		#10 RegWrite = 1;
		#10 RegWrite = 0;
		#0 Reg1_read = 0;
		#10 Reg1_read = 1;
		#0 Reg2_read = 0;
		#10 Reg2_read = 1;
		#10 $finish;
	end
endmodule
