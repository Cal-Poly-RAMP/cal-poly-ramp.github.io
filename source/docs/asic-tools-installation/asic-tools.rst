ASIC Tools Setup
================

Docker
------

A ready-to-use Docker container with open-source ASIC and RISC-V tools, so you don’t have to install each dependency manually. Though many tools come pre-installed, always check versioning and make sure you have what you want. The Docker container comes with the riscv-gnu-toolchain preinstalled.

.. important::

   Always verify the versions of tools installed in the container to ensure compatibility with your project.

Quickstart
^^^^^^^^^^

Ensure you have `VSCode <https://code.visualstudio.com/download>`_, Ubuntu for Windows Subsystem for Linux (WSL), and the latest version of Docker installed.

If you need Ubuntu, VS Code, and/or Docker Desktop please do the following (in the following order):

.. important::

   These instructions were written with Windows users in mind. For any Mac users, disregard Ubuntu for WSL.

Install Ubuntu for WSL
^^^^^^^^^^^^^^^^^^^^^^

Open Command Prompt or Windows PowerShell in **Administrator Mode** before running the following command.

.. code-block:: console

   wsl --install -d Ubuntu-24.04

.. important::

   Once Ubuntu 24.04 is installed and your computer restarts, open the Ubuntu 24.04 in the Start Menu to complete setup. Then, create your username and password and SAVE THEM. This must be done BEFORE installing Docker.

   Your default terminal when you open up Ubuntu should look like this:

   .. container:: prompt-example

      .. code-block:: console

         <USERNAME>@<COMPUTER_NAME>:~$ 

   **not** like this.

   .. container:: prompt-example

      .. code-block:: console

         root@<COMPUTER_NAME>:~# 

Install VS Code
^^^^^^^^^^^^^^^

- `Install VS Code <https://code.visualstudio.com/download>`_

.. important::

   Refer to the VS Code extensions in :doc:`visual-setup`

Install Docker
^^^^^^^^^^^^^^

- Install Docker for `Windows <https://docs.docker.com/desktop/setup/install/windows-install/>`_ or `Mac <https://docs.docker.com/desktop/setup/install/mac-install/>`_

.. important::

   In Windows, enable WSL2 integration within Docker Settings > Resources > WSL integration.

Installation Guide
------------------

Once Ubuntu distribution is completely setup and Docker is installed, perform the following steps within an Ubuntu terminal.

Install the Dependencies
^^^^^^^^^^^^^^^^^^^^^^^^

- WSL Users

.. code-block:: console

   sudo apt update && sudo apt full-upgrade -y && sudo apt install -y build-essential git curl wget unzip zip tar gdb htop net-tools man-db lsb-release software-properties-common python3 python3-pip python3-venv cmake valgrind openssh-client nodejs npm default-jdk golang tmux neofetch tree nano vim lsof

- Mac Users

.. code-block:: console

   brew update
   brew install git curl wget unzip zip gdb htop tmux tree nano vim lsof cmake python node npm openjdk go neofetch
   xcode-select --install

Configure Git and Install OpenSSH
---------------------------------

Configure your GitHub username for WSL/Ubuntu/Mac
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

   git config --global user.name "Your Name"
   git config --global user.email "you@example.com"

Generate an SSH Key
^^^^^^^^^^^^^^^^^^^

- WSL/Ubuntu Users

.. code-block:: console

   sudo apt install -y openssh-client
   ssh-keygen

- Mac Users

.. code-block:: console

   ssh-keygen -t ed25519 -C "you@example.com"
   eval "$(ssh-agent -s)"
   ssh-add --apple-use-keychain ~/.ssh/id_ed25519

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
