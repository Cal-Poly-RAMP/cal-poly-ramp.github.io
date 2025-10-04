CARP Meeting 5
==============

.. note::

   This meeting emphasizes **execution and deliverables**.  
   Each team should come up with initial results (designs, simulations, or documentation drafts).  
   Coordination between Frontend, Backend, and Layout remains critical.

Where Are We At?
----------------

- Core: still OTTER baseline, missing hazards for jumps/branches.
- Multiplier: design finished, needs thorough verification.
- Divider: concept discussions started, RTL work needed.
- Next milestone: **full RV32M extension operational** (MUL + DIV + REM).

Immediate Priorities
--------------------

1. **Verification Push**
   - Multiplier must be regression-tested with full coverage.
   - First test that the multiplier works
   - Write a second bench to test it with the core
   - Hazards/stalls need to be simulated in testbench.
   - Formal test plan draft should be complete.

2. **Divider Design Kickoff**
   - RTL tested for DIV, DIVU, REM, REMU by end of week.
   - Stall/flush integration into pipeline.
   - Document expected latency and pipeline behavior.

3. **Layout Alignment**
   - SRAM/ROM macro usage.
   - Floorplan concepts and DFFRAM exploration.
   - Ensure RTL boundaries are layout-aware.

Frontend Team (RTL Design)
--------------------------

**Leads:** Saul Rodriguez, Micah Miller

- **Responsibilities**
  
  * Own RTL for multiplier/divider units.
  * Divider = shift-subtract radix 2
  * Ensure ISA compliance and integration with OTTER pipeline.
  * Document design tradeoffs and latency assumptions.

- **Active Tasks (by today)**

  * Finalize divider logic and stall signal
  * Deliver initial DIV/DIVU/REM/REMU module skeletons.
  * Update datapath diagrams to show M-extension fully.

Backend Team (Verification)
---------------------------

**Leads:** Robert Bloomfield

- **Responsibilities**
  
  * Regression testing and simulation of multiplier/divider.
  * Hazard/stall/flush verification across pipeline.
  * Build reusable testbench infrastructure.

- **Active Tasks (by today)**

  * Run multiplier regression suite with corner cases.
  * Validate stall/flush propagation through pipeline.
  * Draft test plan for divider (expected inputs/outputs, signed/unsigned).

Layout Team (Physical / Floorplan)
----------------------------------

**Leads:** Jarnail, Ryan

- **Responsibilities**
  
  * Bridge RTL → physical implementation.
  * Research memory macros (SRAM, ROM, DFFRAM).
  * Begin floorplan and block-level planning.

- **Active Tasks (by today)**

  * Report on SKY130 SRAM/ROM macro integration feasibility.
  * Sketch early floorplan including M-extension unit placement.
  * Identify risks for timing closure with multiplier/divider blocks.

Next Steps
----------

- By **end of today**:
  
  * All: Work on Multiplier Report 
  * Frontend: Divider RTL skeletons checked into repo.
  * Backend: Multiplier regression results documented.
  * Layout: Macro integration report and draft floorplan outline.

- By **next week**:
  
  * Integrated multiplier/divider in pipeline simulation.
  * Verification coverage metrics started.
  * Layout flow demo with memory macros and floorplan snapshot.

