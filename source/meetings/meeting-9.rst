CARP Meeting 9
========================

.. note::

   This meeting focuses on **branch prediction research and design**—laying the groundwork for next week’s implementation.  
   Building on Meeting 8, we’ll move from concept to architectural plan for the **Pattern History Table (PHT)**, **Branch Register**, and **2-bit saturating predictor FSM**, as well as reviewing jump instruction control flow.

Where We Left Off
-----------------

- **Meeting 8:** Presented our progress and conceptual overview of control transfer.
- **Status:** Branch and jump decoding logic defined; hazards mapped out.
- **Next Goal:** Design a working predictive control unit that can feed the pipeline fetch stage.

Focus Areas
------------

**1. Branch Prediction Research**
   - Study classic branch prediction schemes:
     - Static: *Always-taken*, *backward-taken/forward-not-taken*.
     - Dynamic: *1-bit* and *2-bit saturating counter* models.
   - Understand predictor integration with instruction fetch.
   - Explore speculative PC updates and misprediction recovery.

**2. Pattern History Table (PHT)**
   - Structure: indexed table storing 2-bit prediction states.
   - Goal: implement compact memory with index from lower PC bits.
   - Discuss memory mapping (size, associativity, update policy).

**3. Branch Register File**
   - Holds recent branch addresses and outcomes.
   - Supports correlation between consecutive branches.
   - Evaluate tradeoffs: per-branch vs global history registers.

**4. 2-Bit Predictor FSM**
   - Design the 4-state finite state machine:
     - Strongly Taken (ST)
     - Weakly Taken (WT)
     - Weakly Not Taken (WNT)
     - Strongly Not Taken (SNT)
   - Define transition conditions and update logic:
     - Increment/decrement on correct/mispredicted outcome.
   - Sketch Verilog pseudocode and state diagram.

**5. Jump Implementation Planning**
   - Review `JAL` and `JALR` PC computation:
     - `JAL` = `PC + imm`
     - `JALR` = `(RS1 + imm)` (with bit 0 cleared)
   - Discuss interaction between jump logic and predictor.
   - Ensure clean pipeline flush on taken jump or misprediction.

Architecture Discussion
-----------------------

- Define where the predictor hooks into **FETCH** and **DECODE**.
- Plan control signals for:
  - Prediction request (`pred_req`)
  - Prediction valid (`pred_valid`)
  - Actual outcome feedback (`branch_taken`)
  - Table update enable (`pht_we`)
- Determine timing for updates: at **EX/MEM** stage when branch result is known.

Verification Strategy
----------------------

- Simulate predictor convergence with simple loop patterns.
- Add waveform probes for:
  - Prediction state transitions
  - PHT indexing and updates
  - PC redirection on misprediction
- Develop directed tests for both `BEQ/BNE` and `JAL/JALR`.

Next Steps
-----------

**This Week (Meeting 9):**
- Research predictor types and finalize architecture diagrams.
- Draft Verilog stubs for PHT, Branch Register, and FSM.
- Document design rationale and state diagram.

**Next Week (Meeting 10):**
- Begin RTL implementation.
- Integrate predictor into fetch/decode path.
- Run first simulations of speculative execution and flush handling.

---

*Note:*  
This phase marks our transition from conceptual understanding to architectural design for **speculative control flow**.  
Treat this as a preparation sprint before implementation week.
