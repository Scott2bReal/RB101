=begin

Problem:
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Input: Array
Output: Same array, but mutated to be reversed

data structure: array :)

Algorithm:
  - Set a swap variable
  - Set an index variable
  - Set swap = element at array index index
  - Set element at array index index = array index (-index -1)
  - Set element at array index (-index - 1) = swap

=end

def reverse!(array)
  index = 0
  until index >= array.size / 2
    swap = array[index]
    array[index] = array[-index - 1]
    array[-index - 1] = swap
    index += 1
  end
  array
end

puts list = [1, 2, 3, 4]
puts result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true
puts list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true
puts list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true
puts list = []
puts reverse!(list) == [] # true
puts list == [] # true
