module controlUnity (opcode, cu_writeReg, cu_regDest, cu_memtoReg, cu_Jump, cu_inSignal, cu_aluScr, cu_writeEnable, cu_readEnable, cu_Branch, cu_aluOp, cu_hlt, cu_reset, cu_showDisplay, enterFlag);
  input [5:0] opcode;
  input enterFlag;
  output reg cu_writeReg, cu_regDest, cu_memtoReg, cu_inSignal, cu_aluScr, cu_writeEnable, cu_readEnable, cu_Branch, cu_hlt, cu_reset, cu_showDisplay;
  output reg [4:0] cu_aluOp;
  output reg [1:0] cu_Jump;

  always @ (opcode) begin
    case(opcode)
    6'b000000: begin //Add_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;	
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000001: begin //Subtract_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
	 cu_aluOp = 5'b00010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000010: begin //And_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00101;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000011: begin //Or_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00110;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000100: begin //Xor_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00111;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000101: begin //Set on less than_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01011;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000110: begin //Multiply_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01100;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b000111: begin //Divide_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01101;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001000: begin //Rest_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01110;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001001: begin //Branch on Equal
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b1;
    cu_aluOp = 5'b00010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001010: begin //Branch on not Equal
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'bx;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b1;
    cu_aluOp = 5'b00010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001011: begin //Add Immediate
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001100: begin //Sub Immediate
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001101: begin //Incremment
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00011;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001110: begin //Decremment
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00100;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b001111: begin // Load Word_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b1;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b1;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010000: begin //Store Word_OK
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b1;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010001: begin //Not
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01000;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010010: begin //Shift Left Logical_NOK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010011: begin //Shift Right Logical_NOK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b01010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010100: begin //Load Word Immediate_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010101: begin //In_OK
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b1;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00001;
	 if (enterFlag)
			cu_hlt = 1'b1;
		else
			cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b010110: begin // Out_OK
    cu_writeReg = 1'b0;
    cu_regDest = 1'b0;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00000;
	 if (enterFlag)
			cu_hlt = 1'b1;
		else
			cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b1;
    end

    6'b010111: begin //Jump
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 2'b01;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 5'bxxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b011000: begin //No Operation
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 2'bxx;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'bx;
    cu_aluOp = 5'bxxxxx;
    cu_hlt = 1'b1;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

    6'b011001: begin //Reset
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 2'bxx;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'bx;
    cu_aluOp = 5'bxxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b1;
	 cu_showDisplay = 1'b0;
    end
	 
	 6'b011010: begin //Jump and link
    cu_writeReg = 1'b1;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 2'b01;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 5'bxxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end
	
	 6'b011011: begin //Jump to register
    cu_writeReg = 1'bx;
    cu_regDest = 1'bx;
    cu_memtoReg = 1'bx;
    cu_Jump = 2'b10;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'bx;
    cu_writeEnable = 1'bx;
    cu_readEnable = 1'bx;
    cu_Branch = 1'b0;
    cu_aluOp = 5'bxxxxx;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end
	 
	  6'b011100: begin //Branch on less than
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b1;
    cu_aluOp = 5'b10000;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end
	 
	 6'b011101: begin //Branch on less than or equal
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b1;
    cu_aluOp = 5'b10001;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end
	 
	 6'b011110: begin //Branch on greater than
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b1;
    cu_aluOp = 5'b10010;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end
	 
	 6'b011111: begin //Branch on greater than or equal
    cu_writeReg = 1'b0;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b0;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b1;
    cu_aluOp = 5'b10011;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end
	 
	 6'b100000: begin //Move
    cu_writeReg = 1'b1;
    cu_regDest = 1'b1;
    cu_memtoReg = 1'b0;
    cu_Jump = 2'b00;
    cu_inSignal = 1'b0;
    cu_aluScr = 1'b1;
    cu_writeEnable = 1'b0;
    cu_readEnable = 1'b0;
    cu_Branch = 1'b0;
    cu_aluOp = 5'b00000;
    cu_hlt = 1'b0;
    cu_reset = 1'b0;
	 cu_showDisplay = 1'b0;
    end

  endcase
 end
endmodule // controlUnityopcode,
