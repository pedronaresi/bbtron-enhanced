module andmux (zero, cu_Branch, pcScr, opcode);
  input zero;
  input cu_Branch;
  input [5:0] opcode;
  output reg pcScr;
  
  always @ (*) begin

  if(zero && cu_Branch)
    pcScr = 1;
	else if((zero == 0) && (cu_Branch == 1) && (opcode == 6'b001010))
	 pcScr = 1;
	else
	 pcScr = 0;
	 
  end
endmodule // and
