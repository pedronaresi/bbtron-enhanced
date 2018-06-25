module teste (wire_outAddy, wire_RAMOutput, clock, wire_out_regdest, wire_out_memtoreg, wire_cu_writeReg, wire_data1, wire_data2, wire_data3);
	output wire [31:0] wire_RAMOutput;
	input [15:0] wire_outAddy;
	input clock;
	input [4:0] wire_out_regdest;
	input [31:0] wire_out_memtoreg;
	input wire_cu_writeReg;
	
	output [31:0] wire_data1;
	output [31:0] wire_data2;
	output [31:0] wire_data3;
	
	registerBench inst_registerBench(.readAddy1(wire_RAMOutput [25:21]), .readAddy2(wire_RAMOutput [20:16]), .writeAddy(wire_out_regdest [4:0]), .writeData(wire_out_memtoreg [31:0]), .data1(wire_data1 [31:0]), .data2(wire_data2 [31:0]), .data3(wire_data3 [31:0]), .clock(clock), .cu_writeReg(wire_cu_writeReg));

	instructionMemory inst_instructionMemory(.addy(wire_outAddy [15:0]), .clock(clock), .RAMOuput(wire_RAMOutput [31:0]));
	
endmodule