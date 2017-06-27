module bbtronenhancedCPU (clock, switches, wire_out1, wire_out2, wire_out3, wire_negative, wire_out_pcsrc, wire_aluOut, wire_RAMOutput, wire_out_memtoreg, wire_data1, wire_out_aluscr, wire_cu_aluOp);
  //Entradas: Clock e Switches
  input clock;
  input [15:0] switches;

  // Saídas para os displays.
  //output wire [6:0] outputA;
  //output wire [6:0] outputB;
  //output wire [6:0] outputC;

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
  output wire [3:0] wire_cu_aluOp;
  wire wire_cu_hlt;
  wire wire_cu_reset;
  wire wire_cu_showDisplay;

  //Wires para "Program Counter".
  wire [15:0] wire_outAddy;

  //wires para "Instruction Memory".
  output wire [31:0] wire_RAMOutput;

  //Wires para "Signal Extender R".
  wire [31:0] wire_extenderOutputA;

  //Wires para "Signal Extender J".
  wire [31:0] wire_extenderOutputB;

  //Wires para "Register Bench".
  output wire [31:0] wire_data1;
  wire [31:0] wire_data2;
  wire [31:0] wire_data3;

  //Wires para "Data Memory".
  wire [31:0] wire_dataRAMOutput;

  //Wires para "ALU".
  output wire [31:0] wire_aluOut;
  wire wire_negative;
  wire wire_zero;
  
  //Wires para "Out Module"
  output wire [6:0] wire_out1;
  output wire [6:0] wire_out2;
  output wire [6:0] wire_out3;
  output wire wire_negative;

  //Wires para "Register Destination MUX".
  wire [4:0] wire_out_regdest;

  //Wires para "Memory to Register MUX".
  output wire [31:0] wire_out_memtoreg;

  //Wires para "Jump MUX".
  wire [31:0] wire_out_jump;

  //Wires para "In Signal MUX".
  wire [15:0] wire_out_insignal;

  //Wires para "ALU Source MUX".
  output wire [31:0] wire_out_aluscr;

  //Wires para "And MUX".
  wire wire_out_andmux;

  //Wires para "PC Source MUX".
  output wire [31:0] wire_out_pcsrc;

  //Instancia dos módulos.

  //Program Counter_OK_VERIFICAR SE ESTA CORRETO
  programCounter inst_programCounter(.inAddy(wire_out_jump [15:0]), .outAddy(wire_outAddy [15:0]), .hlt(wire_cu_hlt), .clock(clock), .reset(wire_cu_reset));

  //Instruction Memory_OK_TESTAR SE ESTA CORRETO
  instructionMemory inst_instructionMemory(.addy(wire_outAddy [15:0]), .clock(clock), .RAMOuput(wire_RAMOutput [31:0]));

  //Signal Extender R_OK
  signExtenderR inst_signExtenderR(.inputA(wire_out_insignal [15:0]), .extenderOutputA(wire_extenderOutputA [31:0]));

  //Signal Extender J_OK
  signExtenderJ inst_signExtenderJ(.inputB(wire_RAMOutput [25:0]), .extenderOutputB(wire_extenderOutputB [31:0]));

  //Register Bench_OK
  registerBench inst_registerBench(.readAddy1(wire_RAMOutput [25:21]), .readAddy2(wire_RAMOutput [20:16]), .writeAddy(wire_out_regdest [4:0]), .writeData(wire_out_memtoreg [31:0]), .data1(wire_data1 [31:0]), .data2(wire_data2 [31:0]), .data3(wire_data3 [31:0]), .clock(clock), .cu_writeReg(wire_cu_writeReg));

  //Control Unity_OK
  controlUnity inst_controlUnity(.opcode(wire_RAMOutput [31:26]), .cu_writeReg(wire_cu_writeReg), .cu_regDest(wire_cu_regDest), .cu_memtoReg(wire_cu_memtoReg), .cu_Jump(wire_cu_Jump), .cu_inSignal(wire_cu_inSignal), .cu_aluScr(wire_cu_aluScr), .cu_writeEnable(wire_cu_writeEnable), .cu_readEnable(wire_cu_readEnable), .cu_Branch(wire_cu_Branch), .cu_aluOp(wire_cu_aluOp [3:0]), .cu_hlt(wire_cu_hlt), .cu_reset(wire_cu_reset), .cu_showDisplay(wire_cu_show_Display));

  //Data Memory_OK
  dataMemory inst_dataMemory(.memoryAddy(wire_aluOut [31:0]), .writeData(wire_data2 [31:0]), .cu_writeEnable(wire_cu_writeEnable), .clock(clock), .dataRAMOutput(wire_dataRAMOutput [31:0]), .cu_readEnable(wire_cu_readEnable));

  //ALU_FALTA NEGATIVE
  ALU inst_ALU(.data1(wire_data1 [31:0]), .data2(wire_out_aluscr [31:0]), .cu_aluOp(wire_cu_aluOp [3:0]), .zero(wire_zero), /*.negative(),*/ .shamt(wire_RAMOutput [10:6]), .aluOut(wire_aluOut [31:0]));
  
  //Out Module
  outModule inst_outModule(.in(wire_aluOut [31:0]), .out1(wire_out1 [6:0]), .out2(wire_out2 [6:0]), .out3(wire_out3 [6:0]), .negative(wire_negative), .cu_showDisplay(wire_cu_show_Display));

  //MUXs
  //Register Destination MUX_OK
  muxRegDest inst_muxRegDest(.readAddy2(wire_RAMOutput [20:16]), .writeAddy(wire_RAMOutput [15:11]), .out(wire_out_regdest [4:0]), .cu_regDest(wire_cu_regDest));

  //Memory to Register MUX_OK
  muxMemtoReg inst_muxMemtoReg(.aluOut(wire_aluOut [31:0]), .dataRAMOutput(wire_dataRAMOutput [31:0]), .out(wire_out_memtoreg [31:0]), .cu_memtoReg(wire_cu_memtoReg));

  //Jump MUX_OK
  muxJump inst_muxJump(.muxPCScr(wire_out_pcsrc [31:0]), .signExtenderJ(wire_extenderOutputB [31:0]), .out(wire_out_jump[31:0]), .cu_Jump(wire_cu_Jump));

  //In Signal MUX_OK
  muxInSignal inst_muxInSignal(.immediate(wire_RAMOutput [15:0]), .switches(switches), .out(wire_out_insignal [15:0]), .cu_inSignal(wire_cu_inSignal));

  //ALU Source MUX_OK
  muxALUScr inst_muxALUScr(.data2(wire_data2 [31:0]), .extenderOutputA(wire_extenderOutputA [31:0]), .out(wire_out_aluscr [31:0]), .cu_aluScr(wire_cu_aluScr));

  //And MUX_OK
  andmux inst_andmux(.zero(wire_zero), .cu_Branch(wire_cu_Branch), .pcScr(wire_out_andmux), .opcode(wire_RAMOutput [31:26]));

  //PC Source MUX_OK
  muxPCScr inst_muxPCScr(.extenderOutputA(wire_extenderOutputA [31:0]), .outAddy(wire_outAddy [15:0]), .out(wire_out_pcsrc [31:0]), .pcScr(wire_out_andmux));

endmodule // bbtron_enhanced
