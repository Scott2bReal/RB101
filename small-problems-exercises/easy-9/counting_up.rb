# Problem: Write a method that takes an integer argument, and returns an Array
# of all integers, in sequence, between 1 and the argument.
#
# You may assume that the argument will always be a valid integer that is
# greater than 0.
#
# Input: Integer
# Output: Array of all integers between 1 and the argument
#
# Data structure: array
#
# Algorithm:
# Initialize numbers array
# for each in (1..num)
#   push item to numbers array
# return numbers array
#
def sequence(num)
  numbers = []
  (1..num).each { |item| numbers << item }
  numbers
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
