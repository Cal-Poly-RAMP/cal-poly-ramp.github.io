---
title: Asic-Tools Installation
nav_order: 2
---

# __Asic-Tools__ Docker Container

## Description
A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually. Though many tools come pre-installed, always check versioning and make sure you have what you want. The Docker container comes with the riscv-gnu-toolchain preinstalled. 

## Quickstart
Ensure you have VSCode, Ubuntu/WSL, and the latest version of Docker installed. Enable WSL 2 integration with Docker. 

# INSTALLATION GUIDE

## Install the Dependencies
sudo apt update && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof

## Configure Git and Install OpenSSH

### Configure your Github username for WSL/Ubuntu
git config --global user.name "Your Name"  
git config --global user.email "you@example.com"

### Generate an SSH key
sudo apt install -y openssh-client  
ssh-keygen

*hit enter until it prints the hash if you don't want a password (recommended)*

cat ~/.ssh/id_e25119.pub

*copy the contents of the .pub* 

## Go to GitHub settings, add an SSH key
### Settings --> SSH and GPG Keys
### "New SSH Key" 
### Name your key and paste the contents of the .pub file
 
eval $(ssh-agent -s) 
*you should see "Agent pid #* 
 
ssh -T git@github.com 
*you should see:* 
*"Hi &lt;github username&gt;, You've successfully authenticated, but GitHub does not provide shell access."* 

### Now you should be able to git clone 

git clone git@github.com:ryancramuh/asic-tools.git 
 
 
sudo ./asic-tools/install.sh  
./asic-tools/run.sh  
 
*you should now see*   
ubuntu@asic$  
