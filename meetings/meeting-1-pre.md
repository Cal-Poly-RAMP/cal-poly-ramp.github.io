---
title: Meeting 1 Pre-Brief
parent: Meeting 1
nav_order: 1
---

# Docker Installation Instructions

## Windows

### These directions assume a fresh install of WSL on Windows 11.

1. Restart your computer to access your BIOS and enable Virtualization.
   -  Intel
      -  Enable both Intel Virtualization Technology and VT-d/VT-x options in your BIOS.
   -  AMD
      -  Enable Secure Virtual Machine mode in your BIOS.
2. Once your computer restarts, open Windows PowerShell with Administrator Permissions and type `wsl --install`.
3. Install a Linux distribution in the Windows Store.
   -  [Ubuntu 24.04](https://apps.microsoft.com/detail/9PDXGNCFSCZV?hl=en-us&gl=US&ocid=pdpshare) is preferred for troubleshooting compatibility.
4. Once Ubuntu is installed, open it in the Start Menu and setup your default username and password.
5. Install the latest version of [Docker Desktop](https://docs.docker.com/get-started/get-docker/).

## Mac

1. Install the latest version of [Docker Desktop](https://docs.docker.com/desktop/setup/install/mac-install/).

-  Select the version of Docker based on your CPU architecture (Apple silicon vs. Intel).

# Look into Von Nuemann Archtitecture
