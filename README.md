# Loop Unrolling and Scheduling in RISC-V Processor using Ripes Simulator

## Overview

This project demonstrates the implementation of loop unrolling and scheduling techniques in a RISC-V processor using the Ripes simulator. The purpose of this project is to optimize the performance of code execution by manually unrolling loops and scheduling instructions to improve pipeline efficiency.


## Getting Started

To run the simulations and tests, follow these steps:

1. Open Ripes 
2. Run the programs to observe effects of unrolling and scheduling
    

## How it Works

### Loop Unrolling

Loop unrolling is a technique where multiple iterations of a loop are executed in a single iteration. This reduces the overhead of loop control instructions and enables better utilization of pipeline stages. In our implementation, we manually unroll loops in the test programs to demonstrate the performance improvements.

### Instruction Scheduling

Instruction scheduling involves rearranging the order of instructions to minimize pipeline stalls and improve throughput. By reordering instructions, we aim to keep the processor busy and avoid data hazards. The test programs showcase different scheduling strategies and their impact on execution time.

# The program uses 5-stage processor with forwarding unit
