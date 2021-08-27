# Problem:
#
# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer
#
# Examples:
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
#
# These tests should print true
#
# Data Structure: Array
#
# Algorithm
#
# Create an empty array to contain 1s and 0s
# Supplied argument times, push 1 to the array
# Loop through array, if index is odd change value to 0
# Join array to create string

def stringy(num)
  num_string = []
  num.times { num_string.push(1) }
  num_string.each_with_index { |_, idx| num_string[idx] = 0 if idx.odd? }.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further exploration
#
# Modify stringy so it takes an additional optional argument that defaults to 1.
# If the method is called with this argument set to 0, the method should return
# a String of alternating 0s and 1s, but starting with 0 instead of 1.
