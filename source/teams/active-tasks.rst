CARP Active Tasks
=================

.. note::

   These tasks reflect the current division of work across **Frontend, Backend, and Layout** teams.
   The focus is on the **multiplier/divider implementation**, with coordinated efforts between RTL
   design, verification, and synthesis/analysis.

Frontend (RTL Design)
---------------------

- [ ] **Multiplier Architecture Research**
  
  * Explore pipelined multiplier designs (Booth, Wallace-tree, shift-add).
  * Study tradeoffs for 3-stage pipelined implementation with barrel shifting.
  * Ensure RS1/RS2 operand switching logic is included for signed/unsigned ops.

- [ ] **Divider Support**

  * Extend multiplier to support division operations: DIV, DIVU, REM, REMU.
  * Evaluate iterative vs. pipelined divider designs.
  * Plan integration of stall logic for long-latency operations.

- [ ] **Pipeline Integration**

  * Draft datapath modifications for multiplier/divider unit.
  * Connect stall/flush signals to hazard unit for long ops.


Backend (Verification)
----------------------

- [ ] **Multiplier Verification**

  * Write directed testbenches for the 3-stage pipelined multiplier.
  * Verify operand switching (RS1 ↔ RS2 when needed for MULH, MULHSU).
  * Check barrel shifting per pipeline stage for correctness.

- [ ] **Corner Cases**

  * Verify overflow, negative inputs, zero multiplication.
  * Ensure sign-extension correctness for MULH/MULHSU/MULHU.

- [ ] **Regression**

  * Add multiplier tests to compliance regression.
  * Integrate randomized operand testing with Spike differential checking.


Layout (Synthesis & Timing)
---------------------------

- [ ] **Synthesis Check**

  * Synthesize the pipelined multiplier with Yosys/OpenLane.
  * Ensure design is fully synthesizable (no latches, unmapped cells).

- [ ] **PPA Analysis**

  * Collect max clock frequency achievable.
  * Report area (gate count) and power estimates.

- [ ] **Iteration Feedback**

  * Feed timing/area/power results back to frontend.
  * Highlight whether 3-stage pipeline depth is sufficient for target frequency.


Documentation & Coordination
----------------------------

- [ ] **Design Notes**

  * Document chosen multiplier/divider architecture.
  * Record tradeoffs discussed (latency vs. area vs. frequency).

- [ ] **Verification Plan**

  * Update backend plan with multiplier/divider coverage.
  * Map tests to pipeline stages and corner cases.

- [ ] **Layout Reports**

  * Archive synthesis logs and PPA reports.
  * Track improvements across iterations.
