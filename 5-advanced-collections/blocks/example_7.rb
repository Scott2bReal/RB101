=begin

Sorting nested data structures can be tricky, and it is important to be clear
about the level at which you are sorting and which values you want to use to
order your collection.

Say for example we have an array of nested arrays which contain numeric strings,
and we want to sort the outer array so that the inner arrays are ordered
according to the numeric value of the strings they contain. Take, for example,
the following 4-element array of arrays.

=end

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

=begin

We know that we want to sort at the level of the outer array, but we can't
simply call sort on it. When sorting nested arrays it is important to understand
that there are two sets of comparison happening:

    1. Each of the inner arrays is compared with the other inner arrays.
    2. The way those arrays are compared is by comparing the elements within
      them (the documentation refers to this as comparing in an 'element-wise'
      manner)

Because the elements in the arrays are strings, by calling sort it is string
order which will ultimately determine array order:

=end
