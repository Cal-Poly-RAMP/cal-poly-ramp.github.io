# ASIC Tools Setup 

### Docker:

A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually. Though many tools come pre-installed, always check versioning and make sure you have what you want. The Docker container comes with the riscv-gnu-toolchain preinstalled.

__Quickstart:__
<br>
Ensure you have [VSCode](https://code.visualstudio.com/download), Ubuntu/WSL, and the latest version of Docker installed. Enable WSL 2 integration with Docker. 



If you need VSCode, Docker, or Ubuntu for WSL, please do the following (in the following order):

__Open command prompt in adminstrator mode__

### Install Ubuntu:

**> wsl --install -d Ubuntu-24.04**

### Install Common Programs:

**$sudo apt update**
**$sudo apt full-upgrade-y**

### Install VS-Code and Docker:

[Install VS-Code](https://code.visualstudio.com/download)
[Install Docker](https://docs.docker.com/desktop/setup/install/windows-install/) 

## Installation Guide:
<br>

### Install the Dependencies

**$ sudo apt update && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof**

## Configure Git and Install OpenSSH

### Configure your Github username for WSL/Ubuntu

**$ git config --global user.name "Your Name"**
**$ git config --global user.email "you@example.com"**

### Generate an SSH key

**$ sudo apt install -y openssh-client**
**$ ssh-keygen**

_hit enter until it prints the hash if you don't want a password (recommended)_

**$ cat ~/.ssh/id_e25119.pub**

_copy the contents of the .pub_

## Go to GitHub settings, add an SSH key

### Settings --> SSH and GPG Keys

### "New SSH Key"

### Name your key and paste the contents of the .pub file

**$ eval $(ssh-agent -s)**

_you should see "Agent pid #"_

**$ ssh -T git@github.com**

_you should see:_
_"Hi &lt;github username&gt;, You've successfully authenticated, but GitHub does not provide shell access."_

### Now you should be able to git clone

**$ git clone git@github.com:ryancramuh/asic-tools.git**

**$ sudo ./asic-tools/install.sh**
**$ ./asic-tools/run.sh**

_you should now see_
**ubuntu@asic$**

### VSCode Setup (Highly Recommended)

[ASIC-Tools VSCode Extensions Guide](asic-vs-setup.md)
