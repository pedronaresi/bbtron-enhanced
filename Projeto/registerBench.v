module registerBench (readAddy1, readAddy2, writeAddy, writeData, data1, data2, data3, clock, cu_writeReg);
  input [4:0] readAddy1;  //Endereço de Leitura 1
  input [4:0] readAddy2;  //Endereço de Leitura 2
  input [4:0] writeAddy;  //Endereço de Escrita - cu_writeReg virou cu_regWrite

  input [31:0] writeData; //Dados a ser escrito
  input clock, cu_writeReg; //Clock e Sinal de controle para escrita no Registrador

  output [31:0] data1;  //Dado de saída 1
  output [31:0] data2;  //Dado de saída 2
  output [31:0] data3;  //Dado de saída 3

  reg [31:0] regBench [31:0];

  always @ (posedge clock) begin
    if(cu_writeReg)begin
      regBench[writeAddy] = writeData;
	end
	 regBench[0] = 32'b0;
  end

  assign data1 = (regBench[readAddy1]);
  assign data2 = (regBench[readAddy2]);
  assign data3 = (regBench[writeAddy]);



endmodule // Banco de registradores
