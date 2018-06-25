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
    if(hlt)begin
    end //Não faz nada.
    else if(reset)
      outAddy = 0;
    else
      outAddy = novo;
  end

endmodule // programCounter
