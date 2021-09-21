# Problem: If you take a number like 735291, and rotate it to the left, you get
# 352917. If you now keep the first digit fixed in place, and rotate the
# remaining digits, you get 329175. Keep the first 2 digits fixed in place and
# rotate again to 321759. Keep the first 3 digits fixed in place and rotate
# again to get 321597. Finally, keep the first 4 digits fixed in place and
# rotate the final 2 digits to get 321579. The resulting number is called the
# maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.
#
# Input: Number
# Output: Maximum Rotation of that number
#
# Algorithm:
# Pass number to rotate_rightmost_digits with correct length argument value
# Recursion????
#
def max_rotation(int)
  length = int.digits.size
  until length == 0
    int = rotate_rightmost_digits(int, length)
    length -= 1
  end
  int
end

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

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
