# Problem: Write a method that computes the difference between the square of the
# sum of the first n positive integers and the sum of the squares of the first n
# positive integers.
#
# Input: number
# Output: number
#
# Data Structure: Array?
#
# Algorithm:
# Init numbers array
# Init start = 0
# number times, increment start and push to numbers array
# return sum of array ** 2 - sum of mapped ** 2 array

def sum_square_difference(number)
  numbers = []
  start = 0
  number.times do
    start += 1
    numbers << start
  end
  numbers.sum**2 - numbers.map { |num| num**2 }.sum
end

puts sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
