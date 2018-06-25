module muxRegDest (readAddy2, writeAddy, out, cu_regDest);
  input cu_regDest;
  input [4:0] readAddy2;
  input [4:0] writeAddy;

  output reg [4:0] out;

  always @ ( * ) begin
    if(cu_regDest)
      out = readAddy2;
    else
      out = writeAddy;
  end
endmodule // muxRegDest
