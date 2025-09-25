MULDIV UNIT
===========

Instruction OP Codes
--------------------

Write a decoder section for these multiply and divide instructions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you remember how they work check out the slides on the website from today—it has a section.

The RISC-V spec says that when it comes to sign it only cares what your instruction is, not what's in the register.

The sign only matters when the highest bit is set **and** you chose to use an instruction that interprets the number as signed.

Examples
~~~~~~~~

To use **MUL**, it's signed × signed, so:

- ``FFFF_FFFA`` = RS1
- ``0000_0002`` = RS2

MUL would use RS1 as signed ``FFFF_FFFA``, so it would be = ``-6``
MUL would use RS2 as signed ``0000_0002`` so it would be = ``2``

It would return ``-6 * 2 = -12``

But to get there, you would take the magnitude (``-6 → +6``) and multiply Unsigned × Unsigned.

After multiplication, you must check the signs and apply:

- (neg × neg) → ``+``
- (neg × pos) → ``-`` (apply sign extension)
- (pos × pos) → ``+``

----

To use **MULHU**:

- ``FFFF_FFFA`` = RS1
- ``0000_0002`` = RS2

MULHU treats operands as **unsigned**:

- RS1 = ``4,294,967,290``
- RS2 = ``2``

The result would be ``0x0000_0001_FFFF_FFF4``.
MULHU returns the **upper 32 bits** → ``0x0000_0001``.

----

Sign Handling
-------------

The sign checking applies if the instruction treats the numbers as signed.

- If instruction = signed → treat numbers as signed.
- If there is a leading bit, take the magnitude.
- Multiply unsigned—always. Never multiply signed directly.

Track if the result should be positive or negative after the initial stage.
The initial and intermediate stages will have hardware to sign-extend if needed.

Pipeline Notes
--------------

MUL is pipelined into ``MUL_E``, ``MUL_M``, ``MUL_W``.

The best way to do things is to reorder ``RS1`` and ``RS2`` depending on which operand is smaller, and use the smaller as the shift-add counter.

This requires:

- A 32-bit MUX in execute to reorder ``RS1`` and ``RS2`` (doesn’t matter since multiplication is commutative).
- A MUX to select upper or lower 32 bits based on ``H``.
