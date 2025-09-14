---
title: Frontend Tasks
nav_exclude: true
search_exclude: true
---

# CARP Core Frontend Tasks

## 1. RTL Development
- [ ] **Pipeline Control**
  - Add branch and jump instructions (BEQ, BNE, JAL, JALR).
  - Extend hazard unit for branch flush and forwarding.
- [ ] **M Extension**
  - Implement hardware multiplier (iterative or pipelined).
  - Implement hardware divider with stall logic.
- [ ] **A Extension**
  - Add LR/SC support with reservation sets.
  - Add AMO operations (AMOSWAP, AMOADD, etc.).
- [ ] **C Extension**
  - Write compressed instruction decoder.
  - Integrate with front-end fetch/decode.
- [ ] **CSR & Counters**
  - Implement Zicsr instructions (CSRRW, CSRRS, etc.).
  - Add Zicntr (`cycle`, `instret`) and wire to pipeline.
- [ ] **Interrupts & Exceptions**
  - Trap/exception handler routing.
  - Machine-mode timer interrupt support.

---

## 2. Verification & Testbenches
- [ ] **Unit Testbenches**
  - ALU functional coverage.
  - Multiplier/divider directed tests.
  - CSR read/write tests.
- [ ] **Pipeline Testing**
  - Directed hazard tests (load-use, branch, forwarding).
  - Random instruction sequences.
- [ ] **ISA Compliance**
  - Run RISC-V compliance test suite.
  - Check outputs against expected signatures.
- [ ] **Differential Testing**
  - Integrate Spike as golden reference.
  - Step-by-step comparison of state.

---

## 3. Toolchain & Software Bring-Up
- [ ] **Assembler/Compiler**
  - Build GCC/binutils with `rv32imac_zicsr_zifencei_zicntr`.
- [ ] **Bare-Metal Tests**
  - Simple programs: add, branch, load/store, CSR access.
  - Benchmark: CoreMark.
- [ ] **FreeRTOS Port**
  - Minimal port layer (context switch, timer tick, UART).
  - Run FreeRTOS demo tasks on Verilator simulation.

---

## 4. Documentation
- [ ] **ISA Coverage Matrix**
  - Track implemented vs pending instructions.
- [ ] **Pipeline Diagrams**
  - Updated datapath & control flow diagrams.
- [ ] **Verification Plan**
  - Write test plan document (unit tests, integration, compliance).
- [ ] **Developer Guide**
  - How to run tests (make, verilator, spike).
  - Coding style and contribution guide.
