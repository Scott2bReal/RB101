=begin

Problem: Write a function that takes a positive integer and returns the next
smaller positive integer containing the same digits.

Input: Positive Integer
Output: The next smaller integer with the same digits, or -1 if that does not
exist

Rules:
  - No leading zeros
  - Test data will only be positive nums
  - Must be NEXT smallest digit

Data Structure: Array

Algorithm:
  return -1 if num < 21
  init digits = num.digits
  init slice_size = 2
  loop
    slice! slice_size from digits, sort and append to digits
    convert digits to an int, and return if it is < num
    if not, increment slice_size and loop again
    break if new_num.size == num.digits.size

    return new_num if new_num < num
    increment slice_size
=end
require 'pry'

def next_smaller(num)
  return -1 if num < 21
  slice_size = 2
  loop do
    digits = num.digits
    last_digits = digits.slice!(0, slice_size).sort
    last_digits.each { |digit| digits.unshift(digit) }
    new_num = digits.reverse.join.to_i
    return new_num if new_num < num
    if slice_size == num.digits.size

    break if slice_size == num.digits.size
    slice_size += 1
  end
  -1
end

p next_smaller(21) == 12
p next_smaller(531) == 513
p next_smaller(2071) == 2017
p next_smaller(20303) == 20033
p next_smaller(1027)
p next_smaller(135)
