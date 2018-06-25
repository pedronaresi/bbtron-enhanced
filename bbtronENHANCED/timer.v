module timer(autoClock, clock);
	input autoClock;
	output reg clock;
	reg[24:0] cont;
	
	always@(posedge autoClock)
		begin
			if(cont==1_000_0) //25'b1011111010111100001000000//1s
				begin
					cont <= 0; //registrador usa nao bloqueante (<=)
					clock = ~clock;
				end
			else
				cont <= cont + 1; //1'b1
		end

endmodule