# Problem: If we list all the natural numbers below 10 that are multiples of 3
# or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5
# below the number passed in. Additionally, if the number is negative, return 0
# (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.
#
# Input: number
# Output: Sum of all multiples of 3 or 5 below that number
#
# Data Structure: Array
#
# Algorithm:
#   If number < 0, return 0
#   Init multiples array
#   For each number in range (1...number)
#     if number is divisible by 3 or 5, add to multiples
#   return sum of multiples
#
def solution(num)
  return 0 if num.negative?

  multiples = []
  (1...num).each do |number|
    multiples << number if (number % 3).zero? || (number % 5).zero?
  end
  multiples.sum
end
