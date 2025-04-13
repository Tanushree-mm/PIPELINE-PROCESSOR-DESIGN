module Pipelined_Processor(clk, reset);
input clk, reset;

reg [7:0] instruction_memory [0:15]; // Instruction memory
reg [7:0] register_file [0:3]; // Register file

reg [7:0] pc; // Program counter
reg [7:0] instruction;
reg [7:0] opA, opB, result;
reg [1:0] opcode;
reg [1:0] rd, rs1, rs2;

always @(posedge clk or posedge reset) begin
if (reset) begin
pc <= 0;
register_file[0] <= 8'h05;
register_file[1] <= 8'h03;
register_file[2] <= 8'h02;
register_file[3] <= 8'h01;
end else begin
// Fetch Stage
instruction <= instruction_memory[pc];
pc <= pc + 1;

// Decode Stage
opcode <= instruction[7:6];
rd <= instruction[5:4];
rs1 <= instruction[3:2];
rs2 <= instruction[1:0];
opA <= register_file[rs1];
opB <= register_file[rs2];

// Execute Stage
case (opcode)
2'b00: result <= opA + opB; // ADD
2'b01: result <= opA - opB; // SUB
2'b10: result <= opB; // LOAD

default: result <= 0;
endcase

// Write-back Stage
register_file[rd] <= result;
$display("Time=%0t | PC=%d | Instr=%b | R[%d]=%h", $time, pc, instruction, rd,
register_file[rd]);
end
end
endmodule
