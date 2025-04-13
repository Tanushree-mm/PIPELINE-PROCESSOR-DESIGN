module Pipelined_Processor_tb;
reg clk, reset;
Pipelined_Processor uut (.clk(clk), .reset(reset));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1; #10; reset = 0;

// Sample instructions (encoded manually)
uut.instruction_memory[0] = 8'b00001011; // ADD R1, R2, R3
uut.instruction_memory[1] = 8'b01011010; // SUB R2, R1, R2
uut.instruction_memory[2] = 8'b10000100; // LOAD R0, R1

#50;
$finish;

end
endmodule
