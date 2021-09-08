=begin

This example contains a triple-level nested array. Take your time and try to
break down each component. Hint: the top-level array is a 2-element array.

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

- Line 1, map is called on OG array, each sub array assigned to local variable
  element1
- Line 1-7 outer block execution, return value is new array
- Line 2 method call (each) on each element of element1 array, each sub array
  assigned to local variable element
- Line 2-6 inner block execution, return value is array on which it was called,
  effectively cutting off the rest of the code since the array is not being
  mutated
- Line 3 method call (partition) on each element of element2, assigned to
  element3 
- Line 3-5, block execution, return value is two arrays from partition

=end
