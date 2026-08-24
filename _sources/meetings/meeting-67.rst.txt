CARP Meeting 6 and 7
==============

:doc:`Intro To Computer Architecture Slides <roberts-comp-arch-presentation>`
-------------------

.. note::

   These meetings marks the transition from **design to verification and integration**.
   With the multiplier and divider complete, the focus shifts to **test coverage**, **pipeline verification**, and **layout validation** for physical design readiness.

Where Are We At?
----------------

- **Core:** CARP baseline operational; branch hazards pending integration.
- **Multiplier:** Fully functional and verified at the unit level.
- **Divider:** Completed and passing initial directed tests.
- **Next Milestone:** Verify and integrate **RV32M extension** within the pipelined core.

Immediate Priorities
--------------------

1. **Verification Continuation**
   - Extend regression suite to include both multiplier and divider.
   - Begin **core-level integration testing** (M-extension through writeback).
   - Document verification coverage metrics and corner-case behaviors.
   - Validate hazard/stall/flush control under M-extension operations.

2. **Layout Progression**
   - Continue SKY130 design rule familiarization and layout environment setup.
   - Review cell libraries, DRC/LVS conventions, and macro integration strategies.
   - Start placing initial **floorplan prototypes** with realistic module sizing.

3. **Documentation & Coordination**
   - Consolidate multiplier/divider design documentation.
   - Update CARP Docs with verification flow instructions (Verilator/Icarus/Cocotb).
   - Record latency tables, signed/unsigned behavior, and testbench summaries.

Frontend Team (RTL Design)
--------------------------

**Leads:** Saul Rodriguez, Micah Miller

- **Responsibilities**

  * Maintain stable RTL for multiplier and divider modules.
  * Support verification with annotated waveforms and timing notes.
  * Assist in pipeline-level integration (forwarding, stall logic).

- **Active Tasks (by today)**

  * Finalize integration of M-extension into `DE` and `EM` stages.
  * Validate stall propagation with new `hazard_unit`.
  * Prepare short technical brief for divider latency and throughput.

Backend Team (Verification)
---------------------------

**Leads:** Robert Bloomfield

- **Responsibilities**

  * Perform end-to-end verification for multiplier/divider.
  * Expand testbench coverage to random and edge-case operands.
  * Begin regression for combined pipeline execution (M-extension ops).

- **Active Tasks (by today)**

  * Run full regression on multiplier/divider units.
  * Integrate both into core simulation and compare against Spike reference.
  * Draft preliminary **coverage summary** and test methodology document.

Layout Team (Physical / Floorplan)
----------------------------------

**Leads:** Jarnail, Ryan

- **Responsibilities**

  * Advance SKY130 layout literacy: DRC/LVS, parasitics, and standard-cell usage.
  * Prepare layout sandbox for integration of arithmetic units.
  * Identify memory macro boundaries and prepare DEF/LEF templates.

- **Active Tasks (by today)**

  * Review SKY130 documentation for SRAM/ROM macro compatibility.
  * Produce report on multiplier/divider area estimates.
  * Begin schematic/layout correlation for critical datapath cells.

Next Steps
----------

- **By end of today:**
  * All teams: submit M-extension verification updates.
  * Frontend: integration of divider into the main datapath.
  * Backend: preliminary regression report uploaded to repo.
  * Layout: internal notes on macro placement and process layers.

- **By next week:**
  * Full M-extension verification suite passing.
  * Core pipeline validated with stalls, flushes, and forwarding.
  * Layout team to present first complete **floorplan snapshot** (with M-unit blocks).
