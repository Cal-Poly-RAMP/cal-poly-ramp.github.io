---
title: Backend Tasks
nav_exclude: true
search_exclude: true
---

# CARP Core Backend Tasks

## 1. RTL → Netlist (Logic Synthesis)
- [ ] **Setup Yosys/OpenLane Flow**
  - Import CARP Core RTL into OpenLane.
  - Configure clock period (target frequency).
- [ ] **Synthesis Checks**
  - Run Yosys synthesis on top-level core.
  - Check for unmapped cells / synthesis warnings.
- [ ] **Area/Cell Reports**
  - Collect synthesis reports (gate count, area, power).
  - Compare RV32I baseline vs extended IMAC core.

---

## 2. Floorplanning & Placement
- [ ] **Floorplan**
  - Define die/core dimensions.
  - Place IO pads, macros, and clock sources.
- [ ] **Power Planning**
  - Generate power distribution network (PDN).
  - Run IR drop analysis.
- [ ] **Placement**
  - Standard-cell placement in OpenROAD.
  - Optimize for congestion.

---

## 3. Clock Tree Synthesis (CTS)
- [ ] **Clock Insertion**
  - Build clock tree (H-tree, balanced buffers).
- [ ] **Skew Analysis**
  - Verify clock skew across core.
- [ ] **Timing Closure**
  - Run static timing analysis (STA).
  - Fix setup/hold violations.

---

## 4. Routing
- [ ] **Global Routing**
  - Run initial global router.
- [ ] **Detailed Routing**
  - Perform signal and clock routing.
- [ ] **DRC/LVS**
  - Check for design rule violations (DRC).
  - Run layout vs schematic (LVS) check.

---

## 5. Signoff
- [ ] **Static Timing Analysis**
  - Verify across corners (TT, SS, FF).
- [ ] **Power Analysis**
  - Estimate dynamic and leakage power.
- [ ] **Signal Integrity**
  - Crosstalk, EM, and IR drop checks.
- [ ] **GDSII Export**
  - Generate final GDSII for tapeout.

---

## 6. Verification in Backend
- [ ] **Gate-Level Simulation**
  - Compile gate-level netlist with iverilog/verilator.
  - Compare outputs against RTL.
- [ ] **Post-Synthesis FreeRTOS Test**
  - Run FreeRTOS demo at gate-level timing sim.
- [ ] **Regression**
  - Automate backend checks in CI (lint, synthesis, PnR).

---

## 7. Documentation
- [ ] **Backend Flow Guide**
  - Step-by-step doc for OpenLane/OpenROAD usage.
- [ ] **Reports Archive**
  - Store synthesis, STA, PPA reports in GitHub repo.
- [ ] **Signoff Checklist**
  - DRC, LVS, STA, Power checks documented.

