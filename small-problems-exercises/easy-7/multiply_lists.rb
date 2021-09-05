=begin

Problem:
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

Input: Two arrays of numbers
Output: New array containing product of each pair of numbers (pair is one
        element from each array)

Data Structure: Array

Algorithm:
  - Initialize index
  - Initialize final array
  - For each number in array1
    - array1[index] * array2[index]
    - index += 1
  - Return final array

Original Solution:

def multiply_list(array1, array2)
  index = 0
  array1.map do |item|
    result = item * array2[index]
    index += 1
    result
  end
end

=end

# Further Exploration (make a one-liner solution using Array#zip)
def multiply_list(array1, array2)
  array1.zip(array2).map { |array| array[0] * array[1] }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
