ASIC Tools Setup
================

Docker
------

A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually. Though many tools come pre-installed, always check versioning and make sure you have what you want. The Docker container comes with the riscv-gnu-toolchain preinstalled.

.. important::

   Always verify the versions of tools installed in the container to ensure compatibility with your project.

.. important::

   These instructions were written with Windows users in mind. For any Mac users, please install UTM and setup a virtual machine with Ubuntu 24.04.


Quickstart
^^^^^^^^^^

Ensure you have `VSCode <https://code.visualstudio.com/download>`_, Ubuntu on Windows Subsystem for Linux (WSL), and the latest version of Docker installed.

If you need VSCode, Docker, or Ubuntu on WSL, please do the following (in the following order):

Install Ubuntu on WSL
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   wsl --install -d Ubuntu-24.04

.. important::

   Once Ubuntu 24.04 is installed and your computer restarts, open the Ubuntu 24.04 in the Start Menu and once the setup is complete, create your username and password and SAVE THEM. This must be done BEFORE installing Docker.

   Your default terminal when you open up Ubuntu should look like this:

   .. container:: prompt-example

      .. parsed-literal::

         <USERNAME>@<COMPUTER_NAME>:~$ 

   **not** like this.

   .. container:: prompt-example

      .. parsed-literal::

         root@<COMPUTER_NAME>:~# 

Install VS Code and Docker
^^^^^^^^^^^^^^^^^^^^^^^^^^

- `Install VS Code <https://code.visualstudio.com/download>`_

.. note::

   Refer to the VS Code extensions in :doc:`visual-setup`

- `Install Docker <https://docs.docker.com/desktop/setup/install/windows-install/>`_

.. important::

   Open Command Prompt or Windows PowerShell in **Administrator Mode** before running the commands. Enable WSL 2 integration within Docker Settings > Resources > WSL integration.

Installation Guide
------------------

Once Docker is installed and the Ubuntu 24.04 distribution is installed, perform the following steps within an Ubuntu terminal.

Install the Dependencies
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   sudo apt update && sudo apt full-upgrade -y && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof

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

   git clone git@github.com:cal-poly-ramp/carp-tools.git
   ./carp-tools/install.sh
   ./carp-tools/run.sh

You should now see:

.. code-block::

   "ubuntu@asic$"

.. note::
   Add an alias to easily get into the docker container with one word

.. code-block::

   # go to Ubuntu home
   cd

   # edit your .bashrc
   vim .bashrc
   # add cd at the bottom so you always enter into Ubuntu home and not /mnt/Users/<you>
   # add " alias runcarp='cd && cd carp-tools/ && ./run.sh' at the bottom so you can just type "runcarp" "
   # save your .bashrc

   bash exec
   # reloads your terminal so you dont have to close it
