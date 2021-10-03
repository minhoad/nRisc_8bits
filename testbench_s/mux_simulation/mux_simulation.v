module mux_simulation(input a, input b);
	reg [7:0] input1;
	reg [7:0] input2;
	reg signalchoice;
	wire [7:0] out_put;
	
	wire [7:0] INPUT1;
	wire [7:0] INPUT2;
	wire SIGNALCHOICE;
	
	assign INPUT1 = input1;
	assign INPUT2 = input2;
	assign SIGNALCHOICE = signalchoice;
	
	mux mux_test(INPUT1, INPUT2, SIGNALCHOICE, out_put);
	
	initial
	begin
		#0 signalchoice = 0;
		#0 input1 = 0;
		#0 input2 = 1;
		#20 signalchoice = 0;
		#0 input1 = 1;
		#0 input2 = 0;
		#20 signalchoice = 0;
		#0 input1 = 0;
		#0 input2 = 0;
		#20 signalchoice = 0;
		#0 input1 = 1;
		#0 input2 = 1;
		#20 signalchoice = 1;
		#0 input1 = 0;
		#0 input2 = 1;
		#20 signalchoice = 1;
		#0 input1 = 1;
		#0 input2 = 0;
		#20 signalchoice = 1;
		#0 input1 = 0;
		#0 input2 = 0;
		#20 signalchoice = 1;
		#0 input1 = 1;
		#0 input2 = 1;
		#10 $finish;
	end
	
endmodule
