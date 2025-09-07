---
title: ASIC-Tools Installation
parent: Resources and Guides
nav_order: 1
---

# __ASIC-Tools__ Docker Container

## Description
A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually. Though many tools come pre-installed, always check versioning and make sure you have what you want. The Docker container comes with the riscv-gnu-toolchain preinstalled. 

## Quickstart
Ensure you have [VSCode](https://code.visualstudio.com/download), Ubuntu/WSL, and the latest version of Docker installed. Enable WSL 2 integration with Docker. 


# INSTALLATION GUIDE

If you need VSCode, Docker, or Ubuntu for WSL, please do the following (in the following order):  

## Open command prompt in adminstrator mode
### Install Ubuntu:

__> wsl --install -d Ubuntu-24.04__

## Open WSL Ubuntu
### Install Standard Programs:  

__$sudo apt update__    
__$sudo apt full-upgrade-y__  

## Install VS-Code and Docker
[Install VS-Code](https://code.visualstudio.com/download)  
[Install Docker](https://docs.docker.com/desktop/setup/install/windows-install/)




## Install the Dependencies
__$ sudo apt update && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof__

## Configure Git and Install OpenSSH

### Configure your Github username for WSL/Ubuntu
__$ git config --global user.name "Your Name"__  
__$ git config --global user.email "you@example.com"__

### Generate an SSH key
__$ sudo apt install -y openssh-client__  
__$ ssh-keygen__

*hit enter until it prints the hash if you don't want a password (recommended)*

__$ cat ~/.ssh/id_e25119.pub__

*copy the contents of the .pub* 

## Go to GitHub settings, add an SSH key
### Settings --> SSH and GPG Keys
### "New SSH Key" 
### Name your key and paste the contents of the .pub file
 
__$ eval $(ssh-agent -s)__  

*you should see "Agent pid #"* 
 
__$ ssh -T git@github.com__  

*you should see:*
*"Hi &lt;github username&gt;, You've successfully authenticated, but GitHub does not provide shell access."* 

### Now you should be able to git clone 

__$ git clone git@github.com:ryancramuh/asic-tools.git__ 
 
 
__$ sudo ./asic-tools/install.sh__  
__$ ./asic-tools/run.sh__  
 
*you should now see*   
__ubuntu@asic$__    

### VSCode Setup (Highly Recommended) 

[ASIC-Tools VSCode Extensions Guide](asic-vs-setup.md)