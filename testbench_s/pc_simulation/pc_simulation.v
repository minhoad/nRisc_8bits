module pc_simulation(a,b);
	reg PCWrite, Clock, Reset;
	reg [7:0]NextPC;
	
	wire [7:0]Address;
	wire pcwrite, clock, reset;
	wire [7:0]nextpc;
	
	input a,b; // só para o quartus me deixar fazer o design do módulo
	
	assign clock = Clock;
	assign pcwrite = PCWrite;
	assign reset = Reset;
	assign nextpc = NextPC;
	
	pc pc_aux(clock, pcwrite, Address, nextpc, reset);
	
	always #10 Clock = ~Clock;
	initial begin
		#0 Reset = 1;
		#0 Clock = 0;
		#0 PCWrite = 0;
		#20 Reset = 0;
		#0 NextPC = 8'b00000001;
		#10 PCWrite = 1;
		#10 PCWrite = 0;
		#0 NextPC = 8'b00000010;
		#10 PCWrite = 1;
		#10 PCWrite = 0;
		#10 $finish;
	end
	
endmodule
