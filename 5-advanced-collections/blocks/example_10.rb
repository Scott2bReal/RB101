=begin

Let's say we have the following data structure of nested arrays and we want to
increment every number by 1 without changing the data structure.

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

- Line 1 is a method call (map) on the original array. This will return a new
  array with the transformation occurring within the following block. Each
  element of the original array is assigned the local variable arr
- Line 1-end is the block execution of the first map method call
- Line 2 is another map method call, this time on each of the sub-arrays of the
  original array. Each of these elements are assigned the local variable el
- Line 2-8 is the block execution of the second map call, which will return an
  array for each iteration of the original method call
- Line 3 is an if conditional statement, because the first element of the
  original array is a nested array and the second is a single layer array
- Line 3-7 is the execution of the conditional statement.
- Line 4, if executed, increments and returns to the second map call the integer
  element incremented by 1
- Line 6 is another map method call, which will return an array to the second
  map call and assigns each element the local variable n
- Line 6-9 is a block execution, which will return the transformed n value to
  the third map call

This code will return the following array:

=> [[[2, 3], [4, 5]], [6, 7]]

=end
