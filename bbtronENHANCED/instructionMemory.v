module instructionMemory (addy, clock, RAMOuput, reset);
  input [9:0] addy;
  input clock;
  input reset;

  output [31:0] RAMOuput;

  integer firstClock = 0;

  reg [31:0] instructionRAM [14:0];

  always @ (addy or reset) begin
    if (reset) begin
      // Algoritmmo a ser executado pelo processador
		
		instructionRAM[0] = 32'b010111_00000000000000000000000001; 	// Jump to Main
		instructionRAM[1] = 32'b001011_00011_00011_0000000000000000; 	// addi
		instructionRAM[2] = 32'b011101_00000000000000000000000000; 	// halt
		instructionRAM[3] = 32'b010101_00000_10101_0000000000000000; 	// in
		instructionRAM[4] = 32'b010000_00011_10101_0000000000000000; 	// sw
		instructionRAM[5] = 32'b001111_00011_01011_0000000000000000; 	// lw
		instructionRAM[6] = 32'b100000_01011_00111_0000000000000000; 	// mov
		instructionRAM[7] = 32'b010110_00111_000000000000000000000; 	// out
		instructionRAM[8] = 32'b011101_00000000000000000000000000; 	// halt

		
		/*
		instructionRAM[0] = 32'b010110_00000_000000000000000000000; //out R[0]
		instructionRAM[1] = 32'b010101_00000_00010_0000000000000000; //in R[2] <- X
		instructionRAM[2] = 32'b010110_00010_000000000000000000000;	//out R[2]
		instructionRAM[3] = 32'b010101_00000_00001_0000000000000000; //in R[1] <- 0
		instructionRAM[4] = 32'b010110_00001_000000000000000000000; //out R[1]
		instructionRAM[5] = 32'b010101_00000_00011_0000000000000000; //in R[3] <- 2
		instructionRAM[6] = 32'b010110_00011_000000000000000000000; //out R[3]
		instructionRAM[7] = 32'b010101_00000_00110_0000000000000000; //in R[6] <- 5
		instructionRAM[8] = 32'b010110_00110_000000000000000000000; //out R[6]
		
		instructionRAM[9] = 32'b010000_00000_00010_0000000000000001; //sw do R[2] no MEM[1]
		
		instructionRAM[10] = 32'b001001_00001_00110_0000000000010000; // beq R[1] e R[6]
		instructionRAM[11] = 32'b001101_00000_00010_0000000000000000; //inc R[2]
		instructionRAM[12] = 32'b000110_00011_00010_00010_00000000000; //mul R[2] = R[2] * R[3]
		instructionRAM[13] = 32'b010110_00010_000000000000000000000; //out R[2]
		instructionRAM[14] = 32'b001101_00000_00001_0000000000000000; //inc R[1]
		instructionRAM[15] = 32'b010111_00000000000000000000001010; //j INS[10]
		instructionRAM[16] = 32'b001111_00000_00100_0000000000000001; //lw do MEM[1] no R[4]
		
		instructionRAM[17] = 32'b000001_00100_00010_00101_00000000000; //sub R[5] = R[4] - R[2]
		instructionRAM[18] = 32'b010110_00101_000000000000000000000; //out R[5]
		instructionRAM[19] = 32'b011000_00101_000000000000000000000; // hlt
		*/
    end
  end

  assign RAMOuput = (instructionRAM[addy]);

endmodule // Memória de instrução
