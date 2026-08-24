Meeting 2 Pre-Brief
===================

Focus
=====

This meeting builds on the **Kickoff**. We will start making **design tradeoffs**
and seeing how they play out in a real flow.

The two big areas we’ll focus on are:

1. **Multiplier/Divider Units**

   - Sequential vs. Combinational

   - How the choice affects **timing** and **area**

   - How OpenLane reports can guide design decisions

2. **Branch Prediction**

   - Why it matters for performance

   - Different strategies (always taken, always not-taken, 1-bit/2-bit predictor)

   - Tradeoffs in logic complexity vs. clock speed

Preparation
===========

- Make sure your **ASIC-Tools** container is installed and runs without errors.
- Verify you can run a simple `make lint` and `make sim` on some generic test RTL.
- Review the difference between:

  - **Sequential logic** (uses flip-flops, trades time for reduced area).

  - **Combinational logic** (faster but larger area).

Reading
=======

- Look into **OpenLane timing and area reports**: understanding these now will
  make our lab much more valuable.

Lab Preview
===========

In the lab we will:

- Synthesize **two styles of multiplier/divider** and compare:

  - **Sequential version**

  - **Combinational version**
- Begin setting up a **branch prediction block** for future simulation and analysis.
- Record **timing (slack/critical path)** and **area (cell usage)**.
