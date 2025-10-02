CARP Meeting 4
==============

.. note::

   This meeting introduces the split into **Frontend, Backend, and Layout** teams.
   Each team is expected to start with research + documentation before coding,
   and coordinate closely with other teams.

Where Are We At?
----------------

- CARP Core is essentially OTTER without jumps/hazards.
- Multiplier: initial design complete.
- Divider: not yet started.
- Next milestone: finish full RV32M extension (MUL/DIV/REM).

Two Natural Paths
-----------------

1. **Verification & Regression**
   - Prove correctness of multiplier (3-stage pipelined).
   - Add hazards, stall/flush signals.
   - Establish regression tests.

2. **New Design Work**
   - Start divider design (DIV, DIVU, REM, REMU).
   - Plan RTL integration into the pipeline.

Frontend Team (RTL Design)
--------------------------

Leads: Saul Rodriguez, Micah Miller

- **Responsibilities**
  * High-level architectural design (must comply to RISC-V ISA).
  * Implement RTL that is ASIC-friendly and ISA-compliant.
  * Simulate with generic testing before handing to Backend.
  * Document design tradeoffs (latency, area, frequency).

- **Active Tasks**
  * Explore multiplier designs (3-stage pipelined with barrel shifting).
  * Integrate operand switching logic (RS1/RS2 swap when needed).
  * Begin DIV/DIVU/REM/REMU design with stall logic.
  * Update datapath diagrams for M-extension integration.

Backend Team (Verification)
---------------------------

Lead: Robert Bloomfield

- **Responsibilities**
  * Verify RTL from Frontend before passing to Layout.
  * Write and run directed/randomized tests.
  * Produce analysis and coverage reports.
  * Regression testing is mandatory for all modules.

- **Active Tasks**
  * Verify the pipelined multiplier (3 stages, barrel shift per stage).
  * Check RS1/RS2 operand swap logic for MULH/MULHSU correctness.
  * Write corner-case tests (signed/unsigned, overflow, zero, negative).
  * Add multiplier tests to compliance + regression harness.
  * Plan testbench framework for DIV/DIVU/REM/REMU.

Layout Team (Synthesis & Flow)
------------------------------

Leads: Ryan Cramer, Jarnail Sanghera

- **Responsibilities**
  * Integrate verified modules into top-level RTL.
  * Ensure RTL passes full ASIC flow (synthesis → routing).
  * Convert behavioral memories to SKY130 SRAM/ROM macros.
  * Report PPA metrics (power, performance, area).
  * Provide final say on design tradeoffs based on metrics.

- **Active Tasks**
  * Synthesize the 3-stage pipelined multiplier with Yosys/OpenLane.
  * Check synthesizability, unmapped cells, latch inference.
  * Report max clock frequency, area, and power estimates.
  * Research PDNs and floorplanning for SRAM/ROM integration.
  * Update `sky130_sram_report.pdf` with current findings.

Checks and Balances
-------------------

- Frontend → Backend → Layout workflow ensures quality.
- Backend must verify before Layout accepts modules.
- Layout validates results against metrics before signoff.
- Teams should collaborate and provide feedback loops.

Action Items
------------

- **All Teams**
  * Go to the CARP Taskboard and locate your assignments.
  * Coordinate with your team lead.
  * Ensure you have repo access and toolchains installed.
  * Begin with **research + documentation** before writing RTL or scripts.

- **Deliverables for Next Meeting**
  * Frontend: draft divider architecture proposal.
  * Backend: multiplier verification report + coverage plan.
  * Layout: synthesis + timing report of multiplier.


:doc:`Meeting Slides <meeting-4-slides>`
---------------------------
