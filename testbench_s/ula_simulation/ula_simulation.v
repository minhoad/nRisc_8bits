module ula_simulation(input a, output b);
// entrada a e saida b são inúteis, apenas servem para podermos fazer o design do test
	reg [2:0]ULAOp;
	reg [7:0]Dado1;
	reg [7:0]Dado2;
	wire zero;
	wire [7:0] Resultado;
	
	wire [2:0]ulaop;
	wire [7:0] dado1;
	wire [7:0] dado2;
		
	assign ulaop = ULAOp;
	assign dado1 = Dado1;
	assign dado2 = Dado2;
	reg clock;
	ula ula1(ulaop,dado1,dado2,zero,Resultado);
	
	always#10 clock = ~clock;
	initial begin
		#0 Dado1 = 8'b00000010;
		#0 Dado2 = 8'b00000001;
		#10 ULAOp = 3'b000;
		#10 ULAOp = 3'b001;
		#10 ULAOp = 3'b010;
		#10 ULAOp = 3'b011;
		#10 ULAOp = 3'b100;
		#10 ULAOp = 3'b101;
		#10 Dado2 = 8'b00000010;
		#10 ULAOp = 3'b101;
		#10 $finish;
	end
endmodule
