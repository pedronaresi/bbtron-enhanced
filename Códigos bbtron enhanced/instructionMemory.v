module instructionMemory (addy, clock, RAMOuput);
  input [9:0] addy;
  input clock;

  output [31:0] RAMOuput;

  integer firstClock = 0;

  reg [31:0] instructionRAM [1023:0];

  always @ (posedge clock) begin
    if (firstClock == 0) begin
      // Algoritmmo a ser executado pelo processador
      firstClock <= 0;
    end
  end

  assign RAMOuput = (instructionRAM[addy]);

endmodule // Memória de instrução
