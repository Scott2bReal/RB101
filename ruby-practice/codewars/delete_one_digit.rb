# Problem: Given an integer n, find the maximal number you can obtain by
# deleting exactly one digit of the given number
#
# Input: Integer that is 10 <= n <= 1000000
# Output: The maximal number obtainable by deleting one digit of n
#
# Data Structure: Array
#
# Algorithm:
#   Make new array that will contain each result of digit deletion
#   index = 0
#   While index < digits.size
#     Make new array that is digits of n
#     reject digit at current index
#     join array
#     add to result array
#     increment index
#   return largest number in result array
#
def delete_digit(num)
  digits = num.digits.reverse
  results = []
  index = 0
  while index < digits.size
    digits_copy = digits.clone
    digits_copy.delete_at(index)
    results << digits_copy.join.to_i
    index += 1
  end
  results.max
end

p delete_digit(152)
p delete_digit(1001)
