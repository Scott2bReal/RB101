On ``line 1`` a method ``example`` is defined, which takes one parameter
``str``.

On ``line 2``, a local variable ``i`` is initialized to the ``Integer`` 3.

On ``line 3``, the ``loop method`` is invoked, with the ``do-end`` defining a block.

Within this block (``lines 3-7``), the puts method is called, and passed as an
argument ``str``, which is the argument passed into the method definition of
``example``

On ``Line 5`` the local variable ``i`` is decremented using the shorthand ``-=``
notation, which is equivalent to reassigning ``i`` in the following manner:

``i = i - 1``

On ``line 6`` a break condition is established using the ``break`` keyword. The
loop will end if the statement ``i == 0`` evaluates to ``true``

On ``line 10``, the ``example`` method is invoked, and passed a ``String``
object with the value ``hello``. This method will print ``hello`` to the console
3 times and will return ``nil``
