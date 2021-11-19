=begin

If you take a number like 735291, and rotate it to the left, you get 352917. If
you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to
321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to
get 321579. The resulting number is called the maximum rotation of the original
number.

Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the
rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Input: Integer
Output: Integer (maximum rotation of input integer)

Data Structure: Array

Algorithm:
  Init counter
  reassign input variable num to return of rotate_rightmost_digits on num
  increment counter
  return num when counter == num.digits.size

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

def max_rotation(num)
  counter = num.digits.size
  until counter.zero?
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
