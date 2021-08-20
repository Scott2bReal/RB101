# Problem:

# Write a method that takes two arguments, a string and a positive integer, and
# prints the string as many times as the integer indicates.
#
# Input: String, Integer
# Output: String
#
# Example:
#
# repeat('Hello', 3) ---> Hello Hello Hello
#
# Algorithm:
# 
# Print the string integer number of times

def repeat(string, integer)
  integer.times { puts string }
end

repeat('Hello', 3)
