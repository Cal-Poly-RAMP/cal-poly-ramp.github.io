---
title: Layout Tasks
nav_exclude: true
search_exclude: true
---

# Layout Team Tasks

-  [ ] research and update [existing report](../_static/pdf/reports/sky130_sram_report.pdf) on SKY130 SRAM macros using the [OpenLane2 Docs](https://openlane2.readthedocs.io/en/latest/usage/using_macros.html), [OpenRAM](https://openram.org/), and [VLSIDA github](https://github.com/VLSIDA/sky130_sram_macros) as reference

-  [ ] create 128kB ROM and 64kB RAM using [SKY130 SRAM macros](https://github.com/VLSIDA/sky130_sram_macros) in conjunction with [SKY130 Interleaving-Memory Tool](https://github.com/Baungarten-CINVESTAV/SKY130-Macro-Memory-Cell-Generator)

-  [ ] Research and create documentation for power distribution networks [PDNs](https://openlane2.readthedocs.io/en/latest/usage/pdn.html) and using them in [Config files](https://openlane2.readthedocs.io/en/latest/reference/configuration.html)

## Additional Layout Tasks

-  [ ] **Floorplanning**

   -  Define die/core dimensions for CARP Core.
   -  Place SRAM macros, IO pads, and clock sources.
   -  Document floorplan strategy (aspect ratio, utilization, keep-outs).

-  [ ] **Placement**

   -  Run initial standard cell placement in OpenROAD.
   -  Analyze congestion and adjust config.

-  [ ] **Clock Tree Synthesis (CTS)**

   -  Build clock tree for 5-stage pipeline core.
   -  Document skew targets and buffering strategy.

-  [ ] **Routing**

   -  Perform global and detailed routing.
   -  Run DRC checks and fix violations.

-  [ ] **Static Timing Analysis (STA)**

   -  Verify timing closure at target frequency.
   -  Explore setup/hold fixes if needed.

-  [ ] **Power & Signal Integrity**

   -  Run IR drop and electromigration (EM) analysis.
   -  Document PDN adjustments.

-  [ ] **Gate-Level Simulation**

   -  Run post-synthesis and post-route GLS with test programs.
   -  Compare results to RTL reference.

-  [ ] **Signoff**

   -  Perform final DRC, LVS, STA, and power analysis.
   -  Export GDSII for tapeout.

-  [ ] **Documentation**
   -  Write a “Layout Handbook” for CARP Core covering flow steps, configs, and lessons learned.
