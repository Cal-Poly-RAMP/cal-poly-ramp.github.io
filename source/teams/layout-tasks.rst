CARP Layout Team Tasks
======================

.. note::

   The layout team is focused on **memory macros, floorplanning, and synthesis/timing
   experiments** for the CARP Core. Current emphasis is on **SRAM/ROM macros** and 
   evaluating the **3-stage pipelined multiplier**.

1. Memory Macros
----------------

- [ ] **SRAM Report Update**

  * Research and update the existing `sky130_sram_report.pdf` using:
    - OpenLane2 documentation
    - OpenRAM
    - VLSIDA `sky130_sram_macros` repository

- [ ] **Macro Generation**

  * Create **128 kB ROM** and **64 kB RAM** using SKY130 SRAM macros.
  * Use the SKY130 Interleaving-Memory Tool for assembling large memories.

- [ ] **Integration Planning**

  * Document how SRAM/ROM macros connect into CARP Core’s memory system.
  * Define floorplan keep-outs and pin placements.


2. Pipelined Multiplier Synthesis
---------------------------------

- [ ] **Synthesis Trial**

  * Synthesize the **3-stage pipelined multiplier** (with barrel shifting per stage).
  * Check for unmapped cells, latch inference, and synthesis warnings.

- [ ] **PPA Analysis**

  * Collect max clock frequency (Fmax).
  * Report gate count, area, and power estimates.

- [ ] **Iteration Feedback**

  * Provide results to frontend (RTL) team for pipeline depth and optimization choices.


3. Floorplanning & PDN
----------------------

- [ ] **Floorplanning**

  * Define die/core dimensions for CARP Core.
  * Place SRAM/ROM macros, IO pads, and clock sources.
  * Document floorplan strategy (aspect ratio, utilization, keep-outs).

- [ ] **Power Distribution Networks (PDN)**

  * Research PDN strategies and config options in OpenLane2.
  * Create documentation on PDN setup in config files.
  * Plan initial PDN for CARP Core floorplan.


4. Routing & Timing
-------------------

- [ ] **Placement**

  * Run initial placement in OpenROAD.
  * Identify congestion hot spots.

- [ ] **Clock Tree**

  * Experiment with clock tree synthesis for pipeline core.
  * Document skew targets and buffer strategy.

- [ ] **Routing & STA**

  * Perform global/detailed routing for test modules (multiplier, SRAM blocks).
  * Run STA at target frequency and collect slack histograms.


5. Documentation
----------------

- [ ] **Layout Handbook**

  * Maintain a step-by-step guide for layout tasks.
  * Include:
    - Memory macro usage
    - PDN configs
    - Multiplier synthesis results
    - Floorplanning strategies
  * Archive reports and logs in repo for continuity.
