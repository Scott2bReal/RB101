=begin

Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want.
(Recommended!)

You may assume that n is always a positive integer.

Input: Integer to be rotated, number of last digits to be rotated
Output: Rotated integer

Data Structure: Array

Algorithm:
  Make array of digits (probably using Integer#digits)
  pass reverse_array from last Q slice of size argument2
  prepend return array to digits
  Reverse, join, convert to int, return

=end

def rotate_array(array)
  new_array = array.dup
  element = new_array.shift
  new_array.push(element)
end

def rotate_rightmost_digits(num, chunk)
  digits = num.digits.reverse
  digits[-chunk..-1] = rotate_array(digits[-chunk..-1])
  digits.join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
