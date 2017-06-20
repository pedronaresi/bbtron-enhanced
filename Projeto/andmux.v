module andmux (zero, cu_Branch, pcScr);
  input zero;
  input cu_Branch;
  output reg pcScr;
  
  always @ (*) begin

  if(zero && cu_Branch)
    pcScr = 1;
	else
	 pcScr = 0;
	 
  end
endmodule // and
