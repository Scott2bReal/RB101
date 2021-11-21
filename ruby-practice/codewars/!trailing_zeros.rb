=begin

Write a program that will calculate the number of trailing zeros in a factorial
of a given number.

N! = 1 * 2 * 3 * ... * N

Be careful 1000! has 2568 digits...

Data Structure: Array

Algorithm:

Too slow!
  init trailing zeros as empty array
  Find factorial
  Split into digits array
  add digit to trailing zeros if digit is zero
  else break
  return trailing zeros size

I think this works????
  - Find nearest power of 10
  - Save difference of nearest power of 10

=end

# def nearest_power_of_10(num)
#   result = num.digits.reverse.map.with_index do |digit, idx|
#     idx == 0 ? digit : 0
#   end
#   result.join.to_i
# end
# 
# def find_power_of_10_zeros(num)
#   zeros = []
#   leading_digit = 0
#   num.digits.each do |digit|
#     digit == 0 ? zeros << digit : leading_digit = digit
#   end
#   zeros.map { leading_digit }.join.to_i
# end
# 
# def small_factorial_zeros(num)
#   trailing_zeros = []
#   num.downto(1).reduce(:*).digits.each do |digit|
#     trailing_zeros << digit if digit.zero?
#     break unless digit.zero?
#   end
#   trailing_zeros.size
# end
# 
# def zeros(num)
#   initial_zeros_result = find_power_of_10_zeros(nearest_power_of_10(num))
#   num -= nearest_power_of_10(num)
#   initial_zeros_result + small_factorial_zeros(num)
# end


# Too slow!
require 'pry'

def zeros(num)
  trailing_zeros = []
  num.downto(1).reduce(:*).digits.each do |digit|
    trailing_zeros << digit if digit.zero?
    break unless digit.zero?
  end
  p "result from #{num} is #{trailing_zeros.size}"
  trailing_zeros.size
end



p zeros(6) #== 1
p zeros(12) #== 2
p zeros(10)
p zeros(100) #== 24
p zeros(123)
p zeros(945) #== 234
 p zeros(1000) #== 249
# p zeros(10000)
# p zeros(100000)
