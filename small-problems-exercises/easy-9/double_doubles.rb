# Problem: A double number is a number with an even number of digits whose
# left-side digits are exactly the same as its right-side digits. For example,
# 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
#
# Write a method that returns 2 times the number provided as an argument, unless
# the argument is a double number; double numbers should be returned as-is.
#
# Input: Integer
# Output: Integer, either the double number as-is or the number doubled
#
# Data Structure: array
#
# Algorithm:
# - If number.digits.size == 1
#   - return number * 2
# - Else
#   - Split number into array of digits
#   - Make first half array and second half array
#   - If those two are equal, return number
#   - If not, return number * 2
#
def twice(num)
  digits = num.digits
  first_half = []
  second_half = []
  if digits.size > 1
    digits.each_with_index do |digit, idx|
      if idx < digits.size / 2
        first_half << digit
      else
        second_half << digit
      end
    end
    return num if first_half == second_half
  end
  num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
