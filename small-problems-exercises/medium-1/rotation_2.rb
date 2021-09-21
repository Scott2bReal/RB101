# Problem: Write a method that can rotate the last n digits of a number.
#
# Input: Number, digits
# Output: Number with digits rotated
#
# Data Structure: Array
#
# Algorithm:
# Split int into array of digits
# Pass slice of that array, sized based on digits argument, to rotate_array
#

def rotate_rightmost_digits(int, size)
  same = int.digits.reverse
  new = same.slice!(-size..-1)
  rotated = rotate_array(new)
  (same + rotated).flatten.join.to_i
end

def rotate_array(array)
  rotated = []
  array.each_with_index { |item, idx| rotated << item unless idx == 0 }
  rotated << array[0]
  rotated
end

def rotate_string(string)
  rotate_array(string.chars).join.to_s
end

def rotate_int(int)
  rotate_array(int.digits.reverse).join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
