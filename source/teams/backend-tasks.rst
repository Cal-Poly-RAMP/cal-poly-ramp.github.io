CARP Core Backend Tasks
=======================

.. note::

   The backend team in CARP focuses on **verification of the EEL pipeline and extensions**.
   This means writing testbenches, running compliance, integrating Spike, and ensuring
   functional correctness before RTL is handed off for synthesis or FPGA bring-up.

1. Unit-Level Verification
--------------------------

- [ ] **ALU Testbenches**

  * Directed tests for all ALU ops.
  * Randomized operand generation.

- [ ] **Multiplier/Divider Tests**

  * Corner-case tests (signed/unsigned, overflow).
  * Directed latency and stall tests.

- [ ] **CSR Verification**

  * Read/write tests for CSRs.
  * Exception and counter correctness (``cycle``, ``instret``).

- [ ] **Compressed (C) Extension**

  * Directed decode/execute tests for compressed instructions.
  * Cross-check expanded vs. uncompressed execution.


2. Pipeline & System Verification
---------------------------------

- [ ] **Hazard Testing**

  * Directed load-use hazards.
  * Branch hazards and flush tests.
  * Forwarding path correctness.

- [ ] **Random Instruction Sequences**

  * Generate pseudo-random instruction streams.
  * Run against RTL and golden reference.

- [ ] **Interrupts & Exceptions**

  * Trap entry/return.
  * Timer interrupt triggering.
  * FreeRTOS tick interrupt coverage.


3. ISA Compliance & Differential Testing
----------------------------------------

- [ ] **RISC-V Compliance Suite**

  * Run official RV32I/IM/AC compliance tests.
  * Archive signatures and check regressions.

- [ ] **Differential Testing**

  * Integrate Spike as golden model.
  * Step-and-compare register + memory state.

- [ ] **Coverage Goals**

  * Collect functional coverage (instructions, hazards).
  * Track % ISA coverage achieved.


4. Software Bring-Up (Verification Angle)
-----------------------------------------

- [ ] **Bare-Metal Programs**

  * Add, branch, load/store, CSR micro-tests.
  * Validate pipeline timing with directed programs.

- [ ] **CoreMark / Benchmarks**

  * Run CoreMark and Dhrystone in simulation.
  * Compare with expected outputs.

- [ ] **FreeRTOS Verification**

  * Run demo tasks (blinky, tick interrupt).
  * Validate context switch correctness.


5. Automation & Regression
--------------------------

- [ ] **CI Integration**

  * Lint + sim run in GitHub Actions.
  * Automatic pass/fail for test suites.

- [ ] **Regression Harness**

  * Maintain library of directed tests.
  * Batch run random + compliance + benchmarks.

- [ ] **Reporting**

  * Collect logs, diffs, coverage reports.
  * Publish results to repo docs.


6. Documentation
----------------

- [ ] **Verification Plan**

  * Map test types to features (e.g., multiplier → mul tests).
  * Update regularly as ISA extensions are added.

- [ ] **Backend Guide**

  * How to run tests with Verilator + Spike.
  * Style guide for testbench code.

- [ ] **Coverage Matrix**

  * Instruction coverage chart.
  * Hazard/exception coverage chart.
