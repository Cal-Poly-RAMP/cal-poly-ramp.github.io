.. raw:: html


   <h1 style="text-align: center;">Embedding Slides (PDFs)</h1>

   Code for Embedding a PDF slide deck

.. code-block:: rst

    .. raw:: html

        :download:`Download the DFX Part 2 PDF <images/DFX_pt2.pdf>`

        <div style="text-align: center;">
            <iframe
                src="slides/presentation.pdf"
                width= 80%
                height="600">
            </iframe>
        </div>

Folder Structure:

.. code-block:: rst

    rst_project/
    ├── index.rst
    ├── index.html
    ├── tutorial.rst
    ├── tutorial.html
    └── images/
        └── presentation.pdf

:download:`Download the DFX Part 2 PDF <../../../../_static/pdf/tutorials/DFX_Pt2.pdf>`

.. raw:: html

   <div style="text-align: center;">
      <iframe
         src="../../../../_static/pdf/tutorials/DFX_Pt2.pdf"
         width="80%"
         height="600">
      </iframe>
   </div>

You can always play with the percentages and the max pixels.

**DON'T FORGET TO GIVE THE USER A WAY TO GO BACK!**

`GO BACK <rst_tutorial.html>`_

There's also the back button on PC, but phone users will probably appreciate the button.

.. raw:: html

   <br>

.. raw:: html

   <br>
