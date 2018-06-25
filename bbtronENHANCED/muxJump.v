module muxJump (muxPCScr, signExtenderJ, out, cu_Jump, data1);
  input [1:0] cu_Jump;
  input [31:0] muxPCScr;
  input [31:0] signExtenderJ;
  input [31:0] data1;
  output reg [31:0] out;

  always @ ( * ) begin
    if(cu_Jump == 2'b01)
      out = signExtenderJ;
    else if(cu_Jump == 2'b10)
      out = data1;
		else
			 out = muxPCScr;
  end
endmodule // muxJumpcu_jump
