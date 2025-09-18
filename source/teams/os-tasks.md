---
title: OS Tasks
nav_exclude: true
search_exclude: true
---

# OS Team Tasks

-  [ ] **Toolchain Setup**

   -  Build RISC-V GCC/binutils targeting `rv32imac_zicsr_zifencei_zicntr`.
   -  Document toolchain build process (configure flags, dependencies).
   -  Test by compiling bare-metal programs and running them on Spike/Verilator.

-  [ ] **Bare-Metal Bring-Up**

   -  Write startup code (reset vector, stack initialization).
   -  Research how to implement linker scripts for CARP Core memory map.
   -  Write initial UART and timer drivers in C.

-  [ ] **FreeRTOS Port**

   -  Create low-level FreeRTOS port layer (context switch, ISR handling).
   -  Integrate machine timer interrupt for `tick.c`.
   -  Test FreeRTOS demo tasks (blinky, semaphore, queue).

-  [ ] **Hardware Abstraction Layer (HAL)**

   -  Build simple drivers for UART, GPIO, and memory-mapped I/O.
   -  Provide OS-facing APIs for peripherals.

-  [ ] **Testing & Validation**

   -  Run RISC-V ISA compliance suite compiled with toolchain.
   -  Test bare-metal applications against both Verilator model and Spike.
   -  Run FreeRTOS regression apps on Verilator.

-  [ ] **Spike Co-Simulation**

   -  Implement trace comparison against Spike.
   -  Capture divergences in instruction results and CSR states.

-  [ ] **Documentation**
   -  Write developer guide for compiling and running programs on CARP Core.
   -  Document FreeRTOS port details (assumptions, configs, limitations).
   -  Provide example programs and step-by-step bring-up tutorial.
