module enterButton(clock, DB_Out, enterFlag);

	input clock, DB_Out;
	output reg enterFlag;
	reg state = 0;
	
	always @(posedge clock)
	begin
		if(state == 0)
		begin
			enterFlag = DB_Out;
			if(DB_Out == 0)
				state = 1;
		end
		else
		begin
			enterFlag = 1;
			if(DB_Out == 1)
				state = 0;
		end
	end

endmodule