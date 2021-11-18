=begin

Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Input: Array
Output: Array with first element at end of array

Data Structure: Array

Algorithm:
  Make copy of original array
  remove first element of that copy, append to that copy
  return the copy array

=end

def rotate_array(array)
  new_array = array.dup
  element = new_array.shift
  new_array.push(element)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
p x == [1, 2, 3, 4]
