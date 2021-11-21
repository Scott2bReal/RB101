=begin

A Narcissistic Number is a positive number which is the sum of its own digits,
each raised to the power of the number of digits in a given base. In this Kata,
we will restrict ourselves to decimal (base 10).

For example, take 153 (3 digits), which is narcisstic:

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1652 (4 digits), which isn't:

    1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938

The Challenge:

Your code must return true or false (not 'true' and 'false') depending upon
whether the given number is a Narcissistic number in base 10. This may be True
and False in your language, e.g. PHP.

Error checking for text strings or other invalid inputs is not required, only
valid positive non-zero integers will be passed into the function.

Input: Valid base 10 positive number
Output: boolean, whether number is narcissistic or not

Data Structure: Array

Algorithm:
  init power = size of number digits array
  make new array, num mapped with each digit to power of power

=end

# Original Solution
# def narcissistic?(num)
#   power = num.digits.size
#   new_num = num.digits.reverse.map do |digit|
#     digit**power
#   end
#   new_num.reduce(:+) == num
# end

def narcissistic?(num)
  num == num.digits.reverse.map { |digit| digit**num.digits.size }.reduce(:+)
end

p narcissistic?(5) == true
p narcissistic?(153) == true
p narcissistic?(1633) == false
