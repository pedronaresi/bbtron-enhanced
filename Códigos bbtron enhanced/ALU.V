module ALU (data1, data2, cu_aluOp, zero, negative, shamt, aluOut);
  input [31:0] data1, data2; //Dados para operação da ALU
  input [3:0] cu_aluOp;  //Sinal vindo da unidade de controle para seleção da operação
  input [4:0] shamt; //Sinal para descolocamento.

  output reg [31:0] aluOut; //Dados de saída da ALU;
  output negative;
  output zero;

  always @ (cu_aluOp or data1 or data2) begin
    case(aluOp[3:0])
      4'b0000: aluOut = data1; //Mantem
      4'b0001: aluOut = data1 + data2; //Soma
      4'b0010: aluOut = data1 - data2; // Subtrai
      4'b0011: aluOut = data1 + 1; //Soma 1
      4'b0100: aluOut = data1 - 1; //Subtrai 1
      4'b0101: aluOut = data1 & data2; //And
      4'b0110: aluOut = data1 | data2; //Or
      4'b0111: aluOut = data1 ^ data2; //Xor
      4'b1000: aluOut = ~ data1; //Not
      4'b1001: aluOut = data1 << shamt; //Desloca para esquerda
      4'b1010: aluOut = data1 >> shamt; //Desloca para direita
      4'b1011: aluOut = data1 < data2 ? 1 : 0; //Set on less than
      4'b1100: aluOut = data1 * data2; //Multiplica
      4'b1101: aluOut = data1 / data2; //Divide
      4'b1110: aluOut = data1 % data2; //Resto
	endcase
  end

  assign zero = (aluOut == 0); //Se o aluOut for zero, flag "zero" é ativada.
  assign negative = ($signed(aluOut) < 0); //Se o aluOut for negativo, flag "negative" é ativada.

endmodule // Unidade lógica e aritimética.
