=========================
Multiplier & Divider Guide
=========================

.. note::
   This guide helps you choose a multiplier or divider style for your Sky130 design.
   Each option has different trade-offs in **speed, area, and implementation complexity**.

Multipliers
===========

Serial (Shift-and-Add)
----------------------
- **How it works**: Iteratively shifts the multiplicand and conditionally adds into an accumulator.
- **Unsigned**: Straightforward; each bit of the multiplier is tested.
- **Signed**: Requires sign-extension and two's complement handling.
- **Hardware cost**:
  - Very small (1 adder + shifter + control FSM).
  - Slow (N cycles for N-bit multiply).

Array Multiplier
----------------
- **How it works**: Generates all partial products in parallel and sums them with adders.
- **Unsigned**: Direct grid of AND gates feeding adders.
- **Signed**: Needs two's complement partial product correction.
- **Hardware cost**:
  - Large area (O(N^2) adders).
  - Fast (1 cycle latency).

Wallace Tree / Dadda Tree
-------------------------
- **How it works**: Partial products are reduced quickly using carry-save adders in a tree.
- **Unsigned**: Direct implementation from AND partial products.
- **Signed**: Adds complexity in partial product generation.
- **Hardware cost**:
  - Area: Medium–High.
  - Speed: Faster than array (logarithmic reduction).
  - Often pipelined for high Fmax.

Booth Encoded Multiplier
------------------------
- **How it works**: Reduces the number of partial products using Booth recoding.
- **Unsigned**: Not needed (already minimal).
- **Signed**: Very effective for signed multiplications.
- **Hardware cost**:
  - Area: Medium.
  - Speed: High when pipelined.
  - Popular for DSPs and CPUs.

---

Dividers
========

Iterative Restoring Divider
---------------------------
- **How it works**: Subtract divisor from partial remainder, shift, repeat.
- **Unsigned**: Simple subtract-shift loop.
- **Signed**: Handle signs separately, apply two's complement rules.
- **Hardware cost**:
  - Small (one subtractor + FSM).
  - Slow (N cycles for N-bit division).

Non-Restoring Divider
---------------------
- **How it works**: Improves on restoring by avoiding unnecessary add-back steps.
- **Hardware cost**:
  - Similar to restoring, slightly smaller latency.

Newton–Raphson / Reciprocal Multiply
------------------------------------
- **How it works**: Approximates reciprocal and multiplies (good for floating-point).
- **Unsigned**: Uses LUTs + multipliers.
- **Signed**: Extra sign/normalization handling.
- **Hardware cost**:
  - Requires multipliers + LUTs.
  - High speed, higher area.

---

Signed vs Unsigned: Hardware Costs
==================================
- **Unsigned arithmetic**:
  - Simpler logic.
  - Direct AND/OR/XOR building blocks.
- **Signed arithmetic (two’s complement)**:
  - Needs sign extension.
  - Extra correction logic (e.g., partial product negation in Booth).
  - Roughly **5–15% more area** depending on architecture.
  - Same cycle count, but often slightly lower max clock frequency.

---

Choosing the Right Style
========================

.. admonition:: Guidelines
   :class: tip

   - For **small area** (tiny cores, low-power): use *serial multiplier* or *iterative divider*.
   - For **balanced area/speed**: use *Booth multiplier* and *non-restoring divider*.
   - For **maximum speed (DSP/CPU)**: use *Wallace tree / pipelined Booth multiplier* and *Newton–Raphson divider*.
   - Always check whether you really need signed division — it’s much costlier.

---

Next Steps
==========
- Check timing/area trade-offs using **Yosys + OpenSTA** before finalizing.
