# Problem:
#
# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be empty
# and the numbers will always be positive integers. Your result should also be
# an integer
#
# Examples:
#
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
#
# Data Structure: Array
#
# Algorithm:
#
# Divide sum of the elements by the length of the array

def average(array)
  array.sum / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
