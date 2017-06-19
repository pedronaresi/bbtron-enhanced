module bbtron_enhancedCPU (clock, switches, outputA, outputB, outputC);
  //Entradas: Clock e Switches
  input clock;
  input [15:0] switches;
  
  // Saídas para os displays.
  output wire [6:0] outputA;
  output wire [6:0] outputB;
  output wire [6:0] outputC;
  
  //Wires para a Control Unity.
  wire wire_cu_writeReg;
  wire wire_cu_regDest;
  wire wire_cu_memtoReg;
  wire wire_cu_Jump;
  wire wire_cu_inSignal;
  wire wire_cu_aluScr;
  wire wire_cu_writeEnable;
  wire wire_cu_readEnable;
  wire wire_cu_Branch;
  wire [3:0] wire_cu_aluOp;
  wire wire_cu_hlt;
  wire wire_cu_reset;
  
  //Wires para "Program Counter".
  wire [15:0] wire_outAddy;
  
  //wires para "Instruction Memory".
  wire [31:0] wire_RAMOuput
  
  //Wires para "Signal Extender R".
  
  //Wires para "Signal Extender J".
  
  //Wires para "Register Bench".
  
  //Wires para "Data Memory".
  
  //Wires para "ALU".
  
  //Wires para "Register Destination MUX".
  
  //Wires para "Memory to Register MUX".
  
  //Wires para "Jump MUX".
  
  //Wires para "In Signal MUX".
  
  //Wires para "ALU Source MUX".
  
  //Wires para "And MUX".
  
  //Wires para "PC Source MUX".
  
  //Instancia dos módulos.
  
  //Program Counter
  programCounter inst_programCounter(.inAddy(), .outAddy(), .hlt(wire_cu_hlt), .clock(clock), .reset(wire_cu_reset);
  
  //Instruction Memory
  instructionMemory inst_instructionMemory(.addy(), .clock(clock), .RAMOuput());
  
  //Signal Extender R
  signExtenderR inst_signExtenderR(.inputA(), .extenderOutputA());
  
  //Signal Extender J
  signExtenderJ inst_signExtenderJ(.inputB(), .extenderOutputB());
  
  //Register Bench
  registerBench inst_registerBench(.readAddy1(), .readAddy2(), .writeAddy(), .writeData(), .data1(), .data2(), .data3(), .clock(clock), .cu_writeReg(wire_cu_writeReg));
  
  //Control Unity
  controlUnity inst_controlUnity(.opcode(), .cu_writeReg(wire_cu_writeReg), .cu_regDest(wire_cu_regDest), .cu_memtoReg(wire_cu_memtoReg), .cu_Jump(wire_cu_Jump), .cu_inSignal(wire_cu_inSignal), .cu_aluScr(wire_cu_aluScr), .cu_writeEnable(wire_cu_writeEnable), .cu_readEnable(wire_cu_readEnable), .cu_Branch(wire_cu_Branch), .cu_aluOp(wire_cu_aluOp [3:0]), .cu_hlt(wire_cu_hlt), .cu_reset(wire_cu_reset));
  
  //Data Memory
  dataMemory inst_dataMemory(.memoryAddy(), .writeData(), .cu_writeEnable(wire_cu_writeEnable), .clock(clock), .dataRAMOutput(), .cu_readEnable(wire_cu_readEnable));
  
  //ALU
  ALU inst_ALU(.data1(), .data2(), .cu_aluOp(wire_cu_aluOp [3:0]), .zero(), .negative(), .shamt(), .aluOut());
  
  
  //MUXs
  //Register Destination MUX
  muxRegDest inst_muxRegDest(.readAddy2(), .writeAddy(), .out(), .cu_regDest(wire_cu_regDest));
  
  //Memory to Register MUX
  muxMemtoReg inst_muxMemtoReg(.aluOut(), .dataRAMOutput(), .out(), .cu_memtoReg(wire_cu_memtoReg));
  
  //Jump MUX
  muxJump inst_muxJump(.muxPCScr(), .signExtenderJ(), .out(), .cu._Jump(wire_cu_Jump));
  
  //In Signal MUX
  muxInSignal inst_muxInSignal(.immediate(), .switches(switches), .out(), .cu_inSignal(wire_cu_inSignal));
  
  //ALU Source MUX
  muxALUScr inst_muxALUScr(.data2(), .extenderOutputA(), .out(), .cu_aluScr(wire_cu_aluScr));
  
  //And MUX
  andmux inst_andmux(.zero(), .cu_Branch(wire_cu_Branch), .pcScr());
  
  //PC Source MUX
  muxPCScr inst_muxPCScr(.extenderOutputA(), .outAddy(), .out(), .pcScr());
  
endmodule // bbtron_enhanced