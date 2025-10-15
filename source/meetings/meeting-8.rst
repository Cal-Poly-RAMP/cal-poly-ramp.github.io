CARP Meeting 8
========================

:doc:`Meeting Slides <meeting-8-slides>`
---------------------------

.. note::

   These sessions mark our transition from **arithmetic verification** into **control flow and prediction**.
   With the multiplier and divider modules stabilized, we’re now expanding toward **branch hazards**, **control transfer**, and **prediction logic**—but with a lighter cadence during midterms.

Current Focus
--------------

- **Core:** Pipelined baseline operational; branch logic pending refinement.
- **Multiplier / Divider:** Verified at the unit level and integrated through the M-extension.
- **Next Phase:** Control transfer validation (JAL, JALR, BRANCH) and branch prediction design.

Control Transfer Overview
-------------------------

**Why Branch and Jump?**

Branches and jumps bring *decision-making* to the CPU—without them, the processor is just a deterministic calculator.

- **Branches**

  - Enable `if/else`, `for`, `while`, and `do-while` constructs.
  - Use the **B-type** immediate format with RS1/RS2 comparison.

- **Jumps**

  - Enable *function calls* and *returns*.
  - `JAL` uses **PC + J-type** immediate.
  - `JALR` uses **PC + (RS1 + I-type)** and requires forwarding RS1 if not yet written back.

**Control Transfer Opcodes**

- ``JAL``  Jump and Link
- ``JALR``  Jump and Link Register
- ``BRANCH``  Conditional control transfer (BEQ, BNE, etc.)

Hazards and Forwarding
----------------------

When branching or jumping, hazards may arise from unresolved or in-flight instructions:

- **JAL / JALR**
  - Unresolved branch or jump ahead.
  - RS1 dependency in multiply/divide.
  - Divider or load-use stalls.

- **Branch**
  - RS1 and RS2 may need forwarding.
  - Pending jump/branch in pipeline.

Ensure the **hazard unit** handles:
- Data forwarding for RS1/RS2.
- Stall insertion for unresolved or dependent instructions.

Branch Prediction
-----------------

We’re officially entering **branch prediction**—the earliest form of machine learning!

**Why Prediction?**
- Improves instruction throughput by guessing branch outcomes before resolution.
- Reduces pipeline stalls due to control hazards.

**Branch Prediction Logic**
- Predictor can mark branches as *strongly taken*, *weakly taken*, or *not taken*.
- Fetch and decode stages can speculatively forward instructions based on prediction state.

**FETCH Stage (with Prediction)**
- Forward RS1/RS2 if available.
- If predictor says **strongly taken**, preemptively adjust PC.

**DECODE Stage (with Prediction)**
- Continue to forward RS1/RS2 as needed.
- Use branch prediction result to decide speculative execution path.

Verification Priorities
-----------------------

1. **Branch and Jump Integration**
   - Validate JAL/JALR instruction sequencing.
   - Confirm correct return address storage and PC computation.

2. **Hazard and Stall Handling**
   - Test control stalls alongside load-use and M-extension interactions.
   - Ensure pipeline flushes on mispredicted branches.

3. **Prediction Validation**
   - Implement basic static predictor (always taken / backward taken).
   - Begin simulation runs with branch-heavy benchmarks.

Next Steps
-----------

**By next week (lighter schedule):**
- RTL: Integrate basic branch functionality into EEL.
- Verification: Add control-transfer test cases

**After midterms:**
- Expand predictor sophistication (2-bit saturating counter).
- Begin full end-to-end pipeline regression with hazards, M-extension, and branch logic active.

---

*Relaxed focus for midterms:*
The next two weeks are for stabilization, documentation, and conceptual understanding.
No major synthesis or layout pushes until post-midterm.
