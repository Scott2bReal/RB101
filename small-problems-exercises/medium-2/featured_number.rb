# Problem: A featured number (something unique to this exercise) is an odd
# number that is a multiple of 7, and whose digits occur exactly once each. So,
# for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not
# (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Return an error
# message if there is no next featured number.
#
# Input: Integer
# Output: Next featured number after input number, or error message if none
#
# Rules:
#   - Odd number
#   - Multiple of 7
#   - Each digit appears only once
#
# Data Structure: Integer
#
# Algorithm
# Featured number
#   If number is even return error
#   If number is not divisible by 7 return error
#   If number has same digit twice return error
# If number > 9999999999 return error
# Until number is a featured number
#   add 7 to number
#   check if featured number
#
def featured_number?(number)
  return false if number.even?
  return false if number % 7 != 0
  return false if number.digits.uniq.size < number.digits.size
  true
end

def display_error
  puts "Error: There can be no other featured number"
end

def featured(number)
  number += 1
  until number % 7 == 0 && number.odd?
    number += 1
  end
  until featured_number?(number)
    return display_error if number >= 9876543210
    number += 14
  end
  number
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
