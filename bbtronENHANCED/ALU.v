module ALU (data1, data2, cu_aluOp, zero, /*negative,*/ shamt, aluOut);
  input [31:0] data1, data2; //Dados para operação da ALU
  input [4:0] cu_aluOp;  //Sinal vindo da unidade de controle para seleção da operação
  input [4:0] shamt; //Sinal para descolocamento.

  output reg [31:0] aluOut; //Dados de saída da ALU;
  //output negative;
  output zero;

  always @ (cu_aluOp or data1 or data2) begin
    case(cu_aluOp[4:0])
      5'b00000: aluOut = data1; //Mantem
      5'b00001: aluOut = data1 + data2; //Soma
      5'b00010: aluOut = data1 - data2; // Subtrai
      5'b00011: aluOut = data2 + 1; //Soma 1
      5'b00100: aluOut = data2 - 1; //Subtrai 1
      5'b00101: aluOut = data1 & data2; //And
      5'b00110: aluOut = data1 | data2; //Or
      5'b00111: aluOut = data1 ^ data2; //Xor
      5'b01000: aluOut = ~ data1; //Not
      5'b01001: aluOut = data1 << shamt; //Desloca para esquerda
      5'b01010: aluOut = data1 >> shamt; //Desloca para direita
      5'b01011: aluOut = data1 < data2 ? 1 : 0; //Set on less than
      5'b01100: aluOut = data1 * data2; //Multiplica
      5'b01101: aluOut = data1 / data2; //Divide
      5'b01110: aluOut = data1 % data2; //Resto
		5'b01111: aluOut = data2 + 0; //Mantem quando valor vem do segundo "slot" de registradores
		5'b10000: aluOut = data1 < data2 ? 1 : 0; //Set on less than
		5'b10001: aluOut = data1 <= data2 ? 1 : 0; //Set on less than or equal
		5'b10010: aluOut = data1 > data2 ? 1 : 0; //Set on greater than
		5'b10011: aluOut = data1 >= data2 ? 1 : 0; //Set on greater than or equal
		
	endcase
  end

  assign zero = (aluOut == 0); //Se o aluOut for zero, flag "zero" é ativada.
  //assign negative = ($signed(aluOut) < 0); //Se o aluOut for negativo, flag "negative" é ativada.

endmodule // Unidade lógica e aritimética.
