CARP Core Frontend Tasks
========================

.. note::

   This document tracks ongoing **frontend RTL and verification tasks**
   for the CARP project (EEL pipeline, ISA extensions, and software bring-up).
   It is a living list and should be kept current with CARP progress.

1. RTL Development
------------------

- [ ] **Pipeline Control**

  * Add branch and jump instructions (BEQ, BNE, JAL, JALR).
  * Extend hazard unit for branch flush and forwarding.

- [ ] **M Extension**

  * Finalize hardware multiplier (Booth / pipelined variant).
  * Implement hardware divider with stall logic and pipeline integration.

- [ ] **A Extension**

  * Add LR/SC support with reservation sets.
  * Implement AMO operations (AMOSWAP, AMOADD, etc.).

- [ ] **C Extension**

  * Write compressed instruction decoder.
  * Integrate with front-end fetch/decode.

- [ ] **CSR & Counters**

  * Implement Zicsr instructions (CSRRW, CSRRS, etc.).
  * Add Zicntr counters (``cycle``, ``instret``) and wire through pipeline.

- [ ] **Interrupts & Exceptions**

  * Trap/exception handler routing.
  * Machine-mode timer interrupt support.
  * Integration with FreeRTOS tick and trap vector.


2. Verification & Testbenches
-----------------------------

- [ ] **Unit Testbenches**

  * ALU functional coverage.
  * Multiplier/divider directed tests.
  * CSR read/write tests.

- [ ] **Pipeline Testing**

  * Directed hazard tests (load-use, branch, forwarding).
  * Random instruction sequences (constrained-random).

- [ ] **ISA Compliance**

  * Run official RISC-V compliance test suite.
  * Check outputs against expected signatures.

- [ ] **Differential Testing**

  * Integrate Spike as golden reference model.
  * Step-by-step comparison of register file, PC, and memory state.


3. Toolchain & Software Bring-Up
--------------------------------

- [ ] **Assembler/Compiler**

  * Build GCC/binutils for ``rv32imac_zicsr_zifencei_zicntr``.

- [ ] **Bare-Metal Tests**

  * Simple programs: add, branch, load/store, CSR access.
  * Benchmark: CoreMark and Dhrystone.

- [ ] **FreeRTOS Port**

  * Minimal port layer (context switch, timer tick, UART).
  * Run FreeRTOS demo tasks on Verilator and FPGA.

- [ ] **Toolchain Integration**

  * Ensure riscv-gnu-toolchain + newlib build targets work against CARP.
  * Automate make targets for running tests in Verilator/Spike side-by-side.


4. Documentation
----------------

- [ ] **ISA Coverage Matrix**

  * Track implemented vs pending instructions for EEL.

- [ ] **Pipeline Diagrams**

  * Updated datapath, hazard logic, and forwarding paths.
  * Highlight integration of M/A/C extensions.

- [ ] **Verification Plan**

  * Write and maintain test plan (unit, integration, compliance).
  * Map coverage goals to tasks.

- [ ] **Developer Guide**

  * How to build, run tests, and compare with Spike.
  * Coding style, contribution guide, and CARP workflow.
