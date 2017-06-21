module outModule(in, out1, out2, out3, negative, cu_showDisplay);
	input [32:0] in;
	input cu_showDisplay;
	wire [3:0] centena, dezena, unidade;
	
	output wire negative;
	output wire [6:0] out1, out2, out3;
	
	
		binToBCD(.in(in [7:0]), .centena(centena), .dezena(dezena), .unidade(unidade), .negative(negative));
	
		display d1(.Entrada(centena), .Saida(out1), .cu_showDisplay(cu_showDisplay));
		display d2(.Entrada(dezena), .Saida(out2), .cu_showDisplay(cu_showDisplay));
		display d3(.Entrada(unidade), .Saida(out3), .cu_showDisplay(cu_showDisplay));
		

endmodule
