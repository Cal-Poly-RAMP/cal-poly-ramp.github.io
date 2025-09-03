---
title: asic-tools installation
nav_order: 2
---

# asic-tools Docker container

## What it is
A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually.  

## Quickstart

Ensure you have VSCode, Ubuntu/WSL, and the latest version of Docker installed. Enable WSL integration with Docker. 

# INSTALLATION GUIDE

## Install the Dependencies
sudo apt update && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof

## Configure Git and Install OpenSSH
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
sudo apt install -y openssh-client

## Create an SSH Key
ssh-keygen

just hit enter until it prints the hash if you don't want a password (recommended)

cat ~/.ssh/id_e25119.pub

copy the output 

## Go to GitHub settings, add an SSH key
### go to:
### settings --> SSH and GPG Keys
### "New SSH Key" 
### Name your key and paste the contents of the .pub file
 
eval $(ssh-agent -s)

### Now you should be able to git clone

git clone git@github.com:ryancramuh/asic-tools.git


sudo ./asic-tools/install.sh
./asic-tools/run.sh

you should now see
ubuntu@asic$ 
