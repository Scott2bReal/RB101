# Problem: Write a method that rotates an array by moving the first element to
# the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.
#
# Input: Array
# Output: New array, rotated
#
# Data Structure: Array
#
# Algorithm
# Initialize new array
# Use each with index to iterate over OG array
# Push each element of og array to new unless index == 0
# Push array[0] to new array
#
def rotate_array(array)
  rotated = []
  array.each_with_index { |item, idx| rotated << item unless idx == 0 }
  rotated << array[0]
  rotated
end

def rotate_string(string)
  rotate_array(string.chars).join.to_s
end

def rotate_int(int)
  rotate_array(int.digits.reverse).join.to_i
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

puts rotate_string('Scott')
puts rotate_int(1234)
