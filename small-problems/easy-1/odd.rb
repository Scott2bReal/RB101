# Problem:
#
# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.
#
# Input: Integer
# Output: Boolean
#
# Examples: 
#
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true
#
# Data Structure: Integer
#
# Algorithm:
#
# Print true if number is odd, otherwhise print false

def is_odd?(num)
  return true if (num % 2 == 1)
  false
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Further exploration
#
# If you weren't certain whether % were the modulo or remainder operator, how
# would you rewrite #is_odd? so it worked regardless?

# The Integer#remainder method performs a remainder operation in Ruby. Rewrite
# #is_odd? to use Integer#remainder instead of %. Note: before version 2.4, Ruby
# used the Numeric#remainder method instead.
#

def is_odd_remainder(num)
  return true if num.remainder(2) == 1
  return true if num.remainder(2) == -1
  false
end

puts is_odd_remainder(2)    # => false
puts is_odd_remainder(5)    # => true
puts is_odd_remainder(-17)  # => true
puts is_odd_remainder(-8)   # => false
puts is_odd_remainder(0)    # => false
puts is_odd_remainder(7)    # => true
