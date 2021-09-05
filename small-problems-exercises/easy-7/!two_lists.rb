=begin

Problem:
Write a method that combines two Arrays passed in as arguments, and returns a
new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same
number of elements.

Input: Two arrays of same size
Output: One array with all elements in alteration

Data Structure: Array

Algorithm:
  - Initialize final array
  - Initialize index counter
  - Until index counter > array 1 size
    - add element at index counter of array 1 to final array
    - same for array 2
    - increment index counter
  - return final array

=end

def interleave(array1, array2)
  final_array = []
  index = 0
  until index == array1.size
    final_array << array1[index]
    final_array << array2[index]
    index += 1
  end
  final_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Come back for further exploration
