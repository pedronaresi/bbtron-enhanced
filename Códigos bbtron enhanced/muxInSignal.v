module muxInSignal (immediate, switches, out, cu_inSignal);
  input cu_inSignal;
  input [15:0] immediate;
  input [15:0] switches;

  output reg [15:0] out;

  always @ ( * ) begin
    if(cu_inSignal)
      out = switches;
    else
      out = immediate;
  end
endmodule // muxInSignal
