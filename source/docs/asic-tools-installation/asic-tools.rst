ASIC Tools Setup
================

Docker
------

A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually. Though many tools come pre-installed, always check versioning and make sure you have what you want. The Docker container comes with the riscv-gnu-toolchain preinstalled.

.. important::

   Always verify the versions of tools installed in the container to ensure compatibility with your project.

Quickstart
^^^^^^^^^^

Ensure you have `VSCode <https://code.visualstudio.com/download>`_, Ubuntu/WSL, and the latest version of Docker installed. Enable WSL 2 integration with Docker.

If you need VSCode, Docker, or Ubuntu for WSL, please do the following (in the following order):

.. note::

   Open Command Prompt in **Administrator Mode** before running the commands.

Install Ubuntu
^^^^^^^^^^^^^^

.. code-block:: console

   wsl --install -d Ubuntu-24.04

Install Common Programs
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   sudo apt update
   sudo apt full-upgrade -y

Install VS Code and Docker
^^^^^^^^^^^^^^^^^^^^^^^^^^

- `Install VS Code <https://code.visualstudio.com/download>`_
- `Install Docker <https://docs.docker.com/desktop/setup/install/windows-install/>`_

Installation Guide
------------------

Install the Dependencies
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   sudo apt update && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof

Configure Git and Install OpenSSH
---------------------------------

Configure your GitHub username for WSL/Ubuntu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   git config --global user.name "Your Name"
   git config --global user.email "you@example.com"

Generate an SSH Key
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   sudo apt install -y openssh-client
   ssh-keygen

.. note::

   Hit enter until it prints the hash if you don't want a password (recommended).

View and Copy the Public Key
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   cat ~/.ssh/id_e25119.pub

Copy the contents of the ``.pub`` file.

Add SSH Key to GitHub
^^^^^^^^^^^^^^^^^^^^^

1. Navigate to **GitHub Settings → SSH and GPG Keys**.
2. Click **New SSH Key**.
3. Name your key and paste the contents of the ``.pub`` file.

Start SSH Agent
^^^^^^^^^^^^^^^

.. code-block:: console

   eval $(ssh-agent -s)

You should see something like:

.. code-block::

   Agent pid 1234

Test GitHub Authentication
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   ssh -T git@github.com

Expected output:

.. code-block::

   "Hi <github username>, You've successfully authenticated, but GitHub does not provide shell access."

Clone and Run ASIC Tools
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   git clone git@github.com:ryancramuh/asic-tools.git
   sudo ./asic-tools/install.sh
   ./asic-tools/run.sh

You should now see:

.. code-block::

   "ubuntu@asic$"
