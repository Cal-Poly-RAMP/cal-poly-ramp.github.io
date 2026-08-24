CARP Status Recap
=================

This is a hard reset. We are off-track, and we need to correct immediately.
Below is the current state of the project, what is blocking us, and the
non-negotiable priorities for the next two weeks.

Current Project Status
----------------------

RV32I Core
~~~~~~~~~~~~~

- ALU: functional
- Decode: mostly complete
- **Branches and jumps: NOT implemented**
- **PC mux and control-path logic: incomplete**
- **No hazard handling for control flow**

Without full RV32I baseline (including branches and jumps), the rest of the
architecture cannot progress.

M Extension
~~~~~~~~~~~

- RTL for mul/div exists
- **Verification coverage: near zero**
- No directed tests
- No random tests
- No corner-case validation
- No integration tests with main pipeline

This is a blocker for tapeout readiness.

Momentum
~~~~~~~~

The group has drifted. Meetings became passive. Tasks lost urgency. Several
tracks are unclear. This is now corrected.

Immediate Priorities (Non-Negotiable)
-------------------------------------

1. RV32I Branch + Jump Implementation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Owner:** Frontend Track
**Deadline:** 7 days

Deliverables:

- Branch comparator logic completed and verified
- Branch target calculation implemented
- JAL and JALR target logic implemented
- PC mux + control logic finalized
- Minimum viable hazard handling (stall/flush acceptable)
- Directed tests for all branch instructions

2. M Extension Verification and Integration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Owner:** Verification Track
**Deadline:** 10 days

Deliverables:

- Directed tests for all M-extension instructions:
  mul, mulh, mulhsu, mulhu, div, divu, rem, remu
- Randomized tests using SV or cocotb
- Corner-case validation:
  divide-by-zero, signedness mismatches, negative operands
- Waveform sign-off
- Integration with main ALU/pipeline
- Documentation update and verification report

3. Project Refocus Plan
~~~~~~~~~~~~~~~~~~~~~~~

**Owner:** Ryan
**Deadline:** 48 hours

Deliverables:

- Updated roadmap (ISA → verification → backend)
- Updated GitHub project boards
- Updated meeting structure
- Updated track responsibilities
- Updated integration timelines

New Meeting Structure
---------------------

Starting next week:

- **10 minutes:** Status updates
- **15 minutes:** Micro-tutorial (only relevant to this week’s tasks)
- **45 minutes:** Work session (mandatory GitHub activity)
- **20 minutes:** Verification review and documentation updates

Track Responsibilities
----------------------

Frontend
~~~~~~~~

- Finish RV32I branch/jump path
- Audit decode/control mapping
- Work with verification on test stimulus

Verification
~~~~~~~~~~~~

- Build directed + random RV32I and M tests
- Waveform review
- Integration testing with reference toolchain

Backend
~~~~~~~

- Prepare OpenLane flow using placeholder core
- Begin power grid, clock tree, and basic SDC setup
- Create initial floorplan constraints

New Members
~~~~~~~~~~~

- Choose a track
- Clone the repo
- Complete onboarding docs
- Ask questions early

Final Notes
-----------

This is the reset point. The work ahead is not impossible. It simply requires
focus, structure, and execution.

From this moment on, every meeting produces commits. Every track delivers on
schedule. We finish RV32I, verify M, and move the project forward.

Let's get back to building.
