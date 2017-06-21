module instructionMemory (addy, clock, RAMOuput);
  input [9:0] addy;
  input clock;

  output [31:0] RAMOuput;

  integer firstClock = 0;

  reg [31:0] instructionRAM [1023:0];

  always @ (posedge clock) begin
    if (firstClock == 0) begin
      // Algoritmmo a ser executado pelo processador
		/*instructionRAM[0] = 32'b010111_00000000000000000000000011;
		instructionRAM[1] = 32'b010110_00001_000000000000000000000;
		instructionRAM[2] = 32'b010101_00000_00010_0000000000000011;
		instructionRAM[3] = 32'b010110_00001_000000000000000000000;*/
		instructionRAM[0] = 32'b001111_00000_00010_0000000000000010;
		instructionRAM[1] = 32'b010110_00010_000000000000000000000;

      firstClock <= 0;
    end
  end

  assign RAMOuput = (instructionRAM[addy]);

endmodule // Memória de instrução
