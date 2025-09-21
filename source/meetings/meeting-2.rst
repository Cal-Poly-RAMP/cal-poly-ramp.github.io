RISC-V Fundamentals
=========

.. note::
   **Welcome to the second CARP meeting!**
   Please make sure to read the :doc:`Pre-Meeting Brief <meeting-2-pre>`
   before attending.

Agenda
------

.. contents::
   :local:
   :depth: 1

- **Tool Explanation**
- **Branch Prediction Overview**
- **Multiplier/Divider Design**
- **Next Steps in CARP Core Project**

Lab
-----

.. important:: If you're new here
   :class: tip

   Make sure your **ASIC-Tools** are installed and working. If not, see the `setup guide <setup-docs_>`_

.. admonition:: If you have the tools installed
   :class: tip

   Work on the **Multiplier/Divider Tradeoff Activity**:

   - Implement a **sequential multiplier/divider**.

   - Implement a **combinational multiplier/divider**.

   - Compare **timing vs. area** results in the OpenLane flow.

.. admonition:: Looking ahead
   :class: tip

   Begin preparing to analyze **Branch Prediction** tradeoffs:

   - Explore different prediction strategies (static, dynamic).

   - Consider how prediction logic affects **critical path** and **area**.

Resources
----------

- `Sky130 PDK Libraries and Tools Overview <https://skywater-pdk.readthedocs.io/en/main/contents/libraries/foundry-provided.html>`_

- `Sky130 Foundry-Provided Standard Cell Libraries <https://skywater-pdk.readthedocs.io/en/main/contents/libraries/foundry-provided.html>`_

- :doc:`Multiplier/Divider Activity <muldiv-activity>`
..
    - :doc:`Branch Prediction Activity <branch-activity>`
..
    :doc:`Meeting Slides <meeting-2-slides>`

.. _setup-docs: https://cal-poly-ramp.github.io/docs/asic-tools-installation/asic-tools.html
