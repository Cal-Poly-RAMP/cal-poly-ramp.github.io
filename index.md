---
title: Welcome
nav_order: 1
---

# CARP

Start here. Install Docker, run Spike, then the ASIC flow hello world.
docs/
  docker-tools.md
  riscv-isa.md
  z-extensions.md
  freertos-porting.md
  spike-golden-model.md
  asic-flow.md
meetings/
  kickoff.md
  phase-start.md
---
title: Dockerized toolchain
nav_order: 2
---

## What it is
Short plain-language summary.

## Quickstart
```bash
docker run -it --rm -v $PWD:/work carp:tools bash
yosys -V
