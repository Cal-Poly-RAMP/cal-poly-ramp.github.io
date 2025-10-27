=========================
Verilog Meetup @ Cal Poly
=========================

**Host:** CARP (Computer Architecture Research Project) + CPES  
**Presenter:** Yuri Panchul (Senior GPU Architect, Samsung)  
**Date:** Two-day workshop (on campus)  
**Format:** Talks, live demos, student lightning talks, and hands-on challenges

Overview
--------
Yuri Panchul led a two-day Verilog/SystemVerilog meetup at Cal Poly, hosted by CARP and CPES. The workshop blended fundamentals (FIFOs, FPGA vs. ASIC, design flow) with hands-on repos, an AI design challenge (AXI Streams + floating-point unit), and invited student presentations. Cisco engineers contributed industry flow content, and Henry Evans ran focused sessions on STA concepts.

Resources (Repos & Materials)
-----------------------------
- Basics / Graphics / Music (intro-to-interactive RTL):  
  https://github.com/verilog-meetup/basics-graphics-music
- SystemVerilog Homework (exercises, patterns, testbenches):  
  https://github.com/verilog-meetup/systemverilog-homework


.. raw:: html

   <iframe src="../_static/pdf/verilog-meetups-stuff/10_25%20Pres.pdf" width="100%" height="600px" style="border:none;"></iframe>


.. raw:: html

   <iframe src="../_static/pdf/verilog-meetups-stuff/Memory%20Repair.pdf" width="100%" height="600px" style="border:none;"></iframe>



Agenda
------
Day 1
~~~~~
- **Kickoff & Fundamentals**
  - FIFO design patterns: synchronous vs. asynchronous, gray-coded pointers, full/empty detection, metastability mitigation.
  - FPGA vs. ASIC basics: clocks, resets, constraints, bring-up differences, IP reuse, verification scope.
- **Cisco Session:** **ASIC flow basics**
  - RTL → Synthesis → Floorplan → Place & Route → Signoff overview.
  - Liberty views, SDC constraints, timing corners, and power/perf/area tradeoffs.
- **Talk:** **Static Timing Analysis (STA) – Henry Evans**
  - Setup/hold, slack, clock uncertainty, false/multicycle paths (preview).
- **Lightning Talk:** **Alex Wong on FIFOs**
  - Practical pitfalls: off-by-one depth, crossing clock domains, testbench assertions.

Day 2
~~~~~
- **Cisco Session:** **Memory repair with scan chains**
  - MBIST/BISR concepts, redundancy fuses, scan architecture, DFT hooks for SRAM macros.
- **Talk:** **Multi-cycle paths, timing, and STA principles – Henry Evans**
  - Correct MCPA usage, path exceptions, CDC signoff alignment with STA.
- **AI Design Challenge**
  - **AXI-Stream + FPU** micro-architecture exercise.
  - Discussion of solution quality; GPT-5 did not reach an optimal design under constraints (throughput/latency/backpressure).
- **Student Presentations**
  - **Francisco Wilken** – topic highlights and design lessons learned.
  - **Henry Evans** – timing closure case study tie-ins.

Technical Highlights
--------------------
FIFOs
~~~~~
- **Synchronous FIFO:** single clock domain, simple full/empty logic, saturation behavior.
- **Asynchronous FIFO:** independent read/write clocks, two-FF synchronizers for gray-coded pointers, safe full/empty detection across CDC.
- **Key gotchas:** pointer comparison timing, depth off-by-one, reset sequencing, assertions for overflow/underflow, simulation vs. FPGA bring-up differences.

FPGA vs. ASIC Basics
~~~~~~~~~~~~~~~~~~~~
- **FPGA:** LUT fabric, BRAM/DSP blocks, lower fmax, quick turnaround, timing via XDC/SDC, vendor IP heavy.
- **ASIC:** standard cells + hard macros, timing corners/derates, power intent (UPF), DFT/scan, STA signoff, physical effects (CTS, SI, IR drop).

STA Essentials
~~~~~~~~~~~~~~
- **Setup/Hold:** definitions, slack interpretation, where to fix (logic depth vs. routing vs. constraints).
- **Clocking:** generated clocks, uncertainty, skew, and derates.
- **Exceptions:** false paths and multi-cycle paths used judiciously; document intent and verify with lint/formal.

DFT & Memory Repair
~~~~~~~~~~~~~~~~~~~
- **Scan Chains:** controllability/observability, stuck-at and transition fault coverage.
- **MBIST/BISR:** test controllers, redundancy allocation, fuse programming flow, yield impact.

AXI-Stream + FPU Challenge
~~~~~~~~~~~~~~~~~~~~~~~~~~
- **Goal:** architect a streaming datapath with AXI-Stream handshakes that feeds a pipelined FPU while maintaining throughput under backpressure.
- **Key considerations:**
  - Backpressure propagation (`tready`/`tvalid`), bubble-free pipelines, decoupling FIFOs at boundaries.
  - Latency tracking for result alignment, optional skid buffers, and throughput modeling.
  - Testbench: randomized ready-valid, scoreboard for FP correctness, latency histograms.

How to Use the Repos in the Workshop
------------------------------------
Clone and explore:
.. code-block:: bash

   git clone https://github.com/verilog-meetup/basics-graphics-music
   git clone https://github.com/verilog-meetup/systemverilog-homework

Recommended flow:
- Start with **basics-graphics-music** for quick visual feedback on RTL edits (graphics/music paths).
- Move into **systemverilog-homework** for structured exercises, assertions, and testbench patterns.
- Try the **AXI-Stream + FPU** challenge: draft interfaces, insert FIFOs, simulate randomized backpressure, verify throughput.

Student & Guest Contributions
-----------------------------
- **Alex Wong:** FIFO deep dive – CDC safety, gray coding, and verification tips.
- **Francisco Wilken & Henry Evans:** lightning talks and STA/theory-to-practice bridges.
- **Cisco Engineers:** ASIC flow and memory repair scanning – aligning school projects to industry signoff.

Takeaways
---------
- Correct FIFO architecture and CDC hygiene are foundational to reliable designs.
- Timing closure is a **design activity**, not just a tool step—write good constraints and design for timing.
- Streaming interfaces require careful latency/throughput planning; AXI-Stream is simple but unforgiving under backpressure.
- ASIC realities (DFT, STA, PPA) shape micro-architecture choices early; plan for them from the start.

Next Steps
----------
- Work through **systemverilog-homework** in order; add assertions and coverage.
- Attempt the **AXI-Stream + FPU** challenge and document your architecture, latency math, and scoreboard.
- Bring results to the next CARP meeting for code review and timing discussions.

Credits
-------
- **Presenter:** Yuri Panchul (Samsung)
- **Sessions:** Cisco engineers; Henry Evans
- **Guests:** Alex Wong; student presenters Francisco Wilken and Henry Evans
- **Hosts:** CARP and CPES
