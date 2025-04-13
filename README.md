# PIPELINE-PROCESSOR-DESIGN

*COMPANY*: CODETECH IT SOLUTION

*NAME*: TANUSHREE M M

*INTERN ID*: CT06WG114

*DOMAIN*: VLSI

*MENTOR*: NEELA SANTOSH

*DESCRIPTION*:This repository showcases the design, simulation, and synthesis of a 4-stage pipelined processor implemented using Verilog HDL. The processor is capable of executing basic instructions like ADD, SUB, and LOAD, and is developed with a modular and scalable approach. This project was fully designed and verified using Cadence Virtuoso, a powerful industry-standard tool for custom IC design and simulation.

The processor demonstrates the foundational concepts of pipelining in processor architecture and how instruction-level parallelism (ILP) can improve overall system throughput by overlapping instruction execution.

Pipelining is a key technique in modern CPU architecture that allows for multiple instructions to be processed simultaneously by breaking the execution path into discrete stages. This project implements a 4-stage instruction pipeline, consisting of:

Instruction Fetch (IF)

Instruction Decode (ID)

Execute (EX)

Write Back (WB)

Each instruction moves through these four stages, enabling one instruction per clock cycle throughput (after the pipeline is filled).

Supported Instructions
The instruction set architecture (ISA) is kept simple and includes:

ADD: Adds two registers and stores the result

SUB: Subtracts the contents of one register from another

LOAD: Loads data from memory into a register

These instructions are sufficient to demonstrate data path handling, control signals, register file access, and memory interaction within a pipelined architecture.

Pipeline Design Details
Each stage in the pipeline is implemented as a separate module, allowing for clear data flow and simplified debugging. The pipeline registers store intermediate results between stages to maintain data integrity and instruction separation.

Pipeline Stages:
IF (Instruction Fetch):

Fetches the instruction from instruction memory using the Program Counter (PC).

Increments PC for the next instruction.

ID (Instruction Decode):

Decodes opcode and identifies source/destination registers.

Reads operands from the register file.

EX (Execute):

Performs arithmetic/logical operations (ADD, SUB).

Calculates effective address for LOAD.

WB (Write Back):

Writes results back to the destination register.

Completes the instruction cycle.

Simulation & Synthesis using Cadence Virtuoso
The entire design was simulated and synthesized using Cadence Virtuoso:

Schematic Entry: RTL modules were written and visualized as schematics where needed.

Simulation: Full testbenches were written to verify pipelined execution and instruction timing.

Waveform Analysis: Cadence ADE tools were used to verify correct instruction sequencing, data hazards, and proper execution over multiple cycles.

Synthesis: The processor design was synthesized to validate timing, area, and logical correctness of the pipeline.

 Verification and Testing
The processor was rigorously tested using a custom testbench that:

Injects multiple instructions to demonstrate pipelined execution

Validates data forwarding and write-back correctness

Observes timing behavior to ensure instructions complete in the correct number of clock cycles

Key Learning Outcomes-

Design and implementation of pipelined processor architecture

Understanding of instruction timing and pipeline hazards

Writing modular Verilog code for complex digital systems

Using Cadence Virtuoso for simulation, waveform analysis, and synthesis

Handling synchronous control signals, register files, and memory access

Future Enhancements
Introduce more instructions (e.g., STORE, AND, OR, BRANCH)

Add hazard detection and forwarding logic

Implement a control unit for decoding and control signal generation

Integrate instruction and data memory models

Extend to a 5-stage or 6-stage pipeline

How to Use
Open the project in Cadence Virtuoso

Load Verilog modules and testbenches

Run simulations through ADE (Analog Design Environment)

View waveforms to analyze pipeline behavior

Synthesize the design for further hardware realization.

*CODE*:

![Image](https://github.com/user-attachments/assets/75deab92-ba82-4740-b858-be0d4b84aac5)

![Image](https://github.com/user-attachments/assets/1fef72bd-b9db-4744-8d5c-5257026fa9e7)


*OUTPUT*: 

![Image](https://github.com/user-attachments/assets/208e6f14-f5e1-441e-9f5f-d30ec4f7a98b)

![Image](https://github.com/user-attachments/assets/9b8a6782-92fc-44ed-93f9-5360ecf615d8)











