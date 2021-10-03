module mux(input1, input2, signalchoice, out_put);
	input wire [7:0] input1;
	input wire [7:0] input2;
	input wire signalchoice;
	output wire [7:0] out_put;
	
	assign out_put = (signalchoice) ? input1 : input2;
	
endmodule
