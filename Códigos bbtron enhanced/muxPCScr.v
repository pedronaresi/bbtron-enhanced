module muxPCScr (aluOut,/*pc+1*/ ,out, pcScr);
  input pcScr;
  input [31:0] //pc+1;
  input [31:0] extenderOutputA;

  output reg [31:0] out;

  always @ ( * ) begin
    if(pcScr)
      out = extenderOutputA;
    else
      out = //vai receber PC+1;
  end

endmodule // muxPCScr
