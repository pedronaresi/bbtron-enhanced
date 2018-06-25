module muxMemtoReg (aluOut, dataRAMOutput, out, cu_memtoReg);
  input cu_memtoReg;
  input [31:0] aluOut;
  input [31:0] dataRAMOutput;

  output reg [31:0] out;

  always @ ( * ) begin
    if(cu_memtoReg)
      out = dataRAMOutput;
    else
      out = aluOut;
  end
endmodule // muxMemtoReg
