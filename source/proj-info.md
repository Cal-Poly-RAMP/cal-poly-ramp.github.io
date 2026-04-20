# FreeRTOS-support for RV32I Core Project

## 1. Project Overview

CARP Core is the flagship design effort of the Computer Architecture Research Project (CARP). It extends the original OTTER RV32I five-stage pipelined processor into a feature-complete, open-source RISC-V core capable of running modern embedded workloads, ported to ASIC flows, and validated against standard reference models.

**Key Objectives:**

-  Extend OTTER’s baseline RV32I to **RV32I_Zicsr with CLINT**.
-  Target both **FPGA** and **ASIC** implementations using open-source tools.
-  Port and run **FreeRTOS** on the core.
-  Verify functionality against the **RISC-V Spike simulator**.

---

## 2. Target ISA and Features

### Current baseline

-  RV32I, 5-stage pipeline (IF, ID, EX, MEM, WB).
-  Basic hazard handling (stall + forwarding).
-  No branch or jump support yet (to be extended).

### Planned extensions
-  **Zicsr**: Control/status registers for privileged mode and interrupts.
-  **Zicntr**: Base counters/timers (`cycle`, `instret`).

---

## 3. Microarchitecture Roadmap

1. **Pipeline Enhancements**

   -  Add branch/jump handling.
   -  Forwarding + hazard detection unit.
   -  Instruction/data memory interfaces with handshake support.

2. **CSR & Privilege Support**
   -  Implement Zicsr instructions and machine-mode CSRs.
   -  Hook up counters (Zicntr).
   -  Add interrupt/trap handler flow.

3. **Any other extensions**
---

## 4. Verification Strategy

-  **Unit tests**: Self-checking SystemVerilog/C++ testbenches for ALU, multiplier, CSR unit, etc.
-  **ISA tests**: Run RISC-V compliance suite for Zicsr extensions.
-  **Reference model**: Compare against **Spike** using differential testing.
-  **Simulation**: Use **Verilator** for cycle-driven C++ simulation.
-  **Waveform debug**: VCD/FST dumps for GTKWave.

---

## 5. Toolchain & Software Support

-  **Toolchain**: Build custom GCC / binutils targeting `rv32i_zicsr_zicntr`.
-  **RTOS**: Port **FreeRTOS kernel** to CARP Core (machine mode, UART console, timers).
-  **Test Programs**: Bare-metal apps, benchmarks (CoreMark), RTOS demo tasks.

---

## 6. ASIC Flow & Implementation

-  Use **OpenLane 2 / OpenROAD** on **Sky130 PDK**.
-  Explore standard cell synthesis, place & route, and GDSII export.
-  Analyze PPA (Power, Performance, Area) vs FPGA baseline.
-  Deliver a tapeout-ready netlist for academic publication.

---


## 7. Impact

-  Students gain hands-on experience with **ISA design, pipelining, RTOS, and ASIC flows**.
-  Open-source contribution of a teaching-quality yet industrially relevant RISC-V core.
-  Builds a reusable foundation for **future CARP projects** (accelerators, coprocessors, autonomic SoCs).
