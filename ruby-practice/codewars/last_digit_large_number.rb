# Problem: Define a function that takes in two non-negative integers aaa and bbb
# and returns the last decimal digit of aba^bab. Note that aaa and bbb may be
# very large!

# For example, the last decimal digit of 9^7 is 9, since 9^7=47829699^7 =
# 478296997=4782969. The last decimal digit of
# (2200)2300({2^{200}})^{2^{300}}(2200)2300, which has over 109210^{92}1092
# decimal digits, is 666. Also, please take 000^000 to be 111.

# You may assume that the input will always be valid.
#
# Input: Two numbers a and b
# Output: Last digit of a**b
#
# Data Structure: Integer
#
# Algorithm:
#  Store a**b in a variable big_num
#  Return big_num % 10
#
def last_digit(num1, num2)
  accumulator = 1
  accumulator.upto(num2) do
    accumulator += num1 * num1

  end
end

puts last_digit(4, 1)                # returns 4
puts last_digit(4, 2)                # returns 6
puts last_digit(9, 7)                # returns 9
puts last_digit(10, 10**10)          # returns 0
puts last_digit(2**200, 2**300)      # returns 6
