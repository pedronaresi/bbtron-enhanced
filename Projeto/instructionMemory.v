module instructionMemory (addy, clock, RAMOuput);
  input [9:0] addy;
  input clock;

  output [31:0] RAMOuput;

  integer firstClock = 0;

  reg [31:0] instructionRAM [30:0];

  always @ (posedge clock) begin
    if (firstClock == 0) begin
      // Algoritmmo a ser executado pelo processador

		/*instructionRAM[0] = 32'b010000_00000_00010_0000000000000010; //Store Word do REG[2] no MEM[2].
		instructionRAM[1] = 32'b010100_00000_00100_0000000000000011; //Load Word do MEM[2] no REG[4].
		instructionRAM[2] = 32'b010110_00100_000000000000000000000; // OUT no REG[4].*/
		/*instructionRAM[0] = 32'b010110_00001_000000000000000000000; // out reg[1]
		instructionRAM[1] = 32'b010110_00010_000000000000000000000;	// out reg[2]
		instructionRAM[2] = 32'b001000_00001_00010_00011_00000000000; // add reg[1] reg[2] reg[3]
		instructionRAM[3] = 32'b010110_00011_000000000000000000000; //out reg[3]*/
		
		/*instructionRAM[0] = 32'b000000_00001_00010_00011_00000000000;
		instructionRAM[1] = 32'b010110_00011_000000000000000000000;
		instructionRAM[2] = 32'b001110_00000_00011_0000000000000011;
		instructionRAM[3] = 32'b010110_00011_000000000000000000000;*/
		
		/*instructionRAM[0] = 32'b010110_00010_000000000000000000000;
		instructionRAM[1] = 32'b010000_00000_00010_0000000000000010; //Store Word do REG[2] no MEM[2].
		instructionRAM[2] = 32'b001111_00000_00100_0000000000000010; //Load Word do MEM[2] no REG[4].
		instructionRAM[3] = 32'b010110_00100_000000000000000000000;*/
		
		/*instructionRAM[0] = 32'b010110_00010_000000000000000000000;
		instructionRAM[1] = 32'b010001_00010_00011_0000000000000000;
		instructionRAM[2] = 32'b010110_00011_000000000000000000000;*/
		
		instructionRAM[0] = 32'b010110_00001_000000000000000000000;
		instructionRAM[1] = 32'b010110_00010_000000000000000000000;
		instructionRAM[2] = 32'b001010_00001_00010_0000000000000101;
		instructionRAM[5] = 32'b010110_00001_000000000000000000000;
		
		
      firstClock <= 0;
    end
  end

  assign RAMOuput = (instructionRAM[addy]);

endmodule // Memória de instrução
