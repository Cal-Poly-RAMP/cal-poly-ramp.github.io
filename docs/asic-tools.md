---
title: Dockerized toolchain
nav_order: 2
---

# Dockerized Toolchain

## What it is
A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually.  

## Quickstart

```bash
docker run -it --rm -v $PWD:/work carp:tools bash
yosys -V
