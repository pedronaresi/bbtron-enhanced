module muxPCScr (extenderOutputA, outAddy, out, pcScr);
  input pcScr;
  input [15:0] outAddy;
  input [31:0] extenderOutputA;

  output reg [31:0] out;

  always @ ( * ) begin
    if(pcScr)
      out = extenderOutputA;
    else
      out = outAddy +1;
  end

endmodule // muxPCScr
