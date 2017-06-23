module controlUnity (opcode, cu_writeReg, cu_regDest, cu_memtoReg, cu_Jump, cu_inSignal, cu_aluScr, cu_writeEnable, cu_readEnable, cu_Branch, cu_aluOp, cu_hlt, cu_reset, cu_showDisplay);
  input [5:0] opcode;
  output reg cu_writeReg, cu_regDest, cu_memtoReg, cu_Jump, cu_inSignal, cu_aluScr, cu_writeEnable, cu_readEnable, cu_Branch, cu_hlt, cu_reset, cu_showDisplay;
  output reg [3:0] cu_aluOp;

  always @ (opcode) begin
    case(opcode)
    6'b000000: begin //Add_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;	
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000001: begin //Subtract_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
	 cu_aluOp = 4'b0010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000010: begin //And_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0101;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000011: begin //Or_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0110;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000100: begin //Xor_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0111;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000101: begin //Set on less than_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1011;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000110: begin //Multiply_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1100;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000111: begin //Devide_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1101;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001000: begin //Rest_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1110;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001001: begin //Branch on Equal
    cu_writeReg = 1'b0;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b1;
    cu_aluOp = 4'b0010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001010: begin //Branch on not Equal
    cu_writeReg = 1'b0;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001011: begin //Add Immediate
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001100: begin //Sub Immediate
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001101: begin //Incremment
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0011;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001110: begin //Decremment
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0100;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001111: begin // Load Word
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b1;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b1;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1111;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010000: begin //Store Word
    cu_writeReg = 1'b0;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b1;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'bxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010001: begin //Not
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1000;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010010: begin //Shift Left Logical
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010011: begin //Shift Right Logical
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010100: begin //Load Word Immediate
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1111;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010101: begin //In
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b1;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b1111;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010110: begin //Out
    cu_writeReg = 1'b0;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 1'b0;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 4'b0000;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b1;
    end

    6'b010111: begin //Jump
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 1'b1;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 4'bxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b011000: begin //No Operation
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 1'bx;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'bx;
    cu_aluOp = 4'bxxxx;
    cu_hlt = 1'b1;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b011001: begin //Reset
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 1'bx;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'bx;
    cu_aluOp = 4'bxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b1;
	 cu_showDisplay = 1'b0;
    end

  endcase
 end
endmodule // controlUnityopcode,
