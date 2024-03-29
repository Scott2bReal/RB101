# Problem:
#
# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits
#
# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
#
# Data Structure: Array
#
# Algorithm
#
# Split the number into an array of its digits and returnt the sum

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
