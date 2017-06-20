module outModule(in, out1, out2, out3, negative);
	input [32:0] in;
	wire [3:0] centena, dezena, unidade;
	
	output wire negative;
	output wire [6:0] out1, out2, out3;
	
	binToBCD(.in(in [7:0]), .centena(centena), .dezena(dezena), .unidade(unidade), .negative(negative));
	
	display d1(.Entrada(centena), .Saida(out1));
	display d2(.Entrada(dezena), .Saida(out2));
	display d3(.Entrada(unidade), .Saida(out3));

endmodule
