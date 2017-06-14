module dataMemory (memoryAddy, writeData, cu_writeEnable, clock, dataRAMOutput, cu_readEnable);
  input [9:0] memoryAddy;
  input [31:0] writeData;
  input cu_writeEnable, clock, cu_readEnable;

  output [31:0] dataRAMOutput;

  reg [31:0] RAM[1023:0];
  reg [9:0] regAddy;

  always @ (posedge clock) begin
    if (cu_writeEnable == 1) begin
      RAM[memoryAddy] = writeData;
    end
    if(cu_readEnable == 1) begin //Adicionado duas flags de controle para leitura e escrita
      regAddy = memoryAddy;
    end
  end

  assign dataRAMOutput = RAM[regAddy];


endmodule // Memória de dados.
