module pc(Clock, PCWrite, Address, NextPC, Reset);
	input PCWrite, Clock, Reset;
	input [7:0]NextPC;
	
	output reg [7:0]Address;
	
	always @(posedge Clock) begin
			if(Reset)
				Address <= 0; 
			else
				Address <= NextPC;
				
	end
	
endmodule
