module programCounter (inAddy, outAddy, hlt, clock, reset);
  input clock, reset;
  input [15:0] inAddy;
  input hlt;
  reg[15:0] novo;
  output reg [15:0] outAddy;

  always @ ( * ) begin
    novo = inAddy;
  end

  always @ (posedge clock) begin
    if(reset)begin
		outAddy = 0;
    end //Não faz nada.
    else if(hlt) begin
		 //Não faz nada
		 end 
    else
      outAddy = novo;
  end

endmodule // programCounter
