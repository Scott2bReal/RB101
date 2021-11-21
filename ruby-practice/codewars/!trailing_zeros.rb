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

=end

# Too slow!
def zeros(num)
  trailing_zeros = []
  num.downto(1).reduce(:*).digits.each do |digit|
    trailing_zeros << digit if digit.zero?
    break unless digit.zero?
  end
  p "result from !#{num} is #{trailing_zeros.size} trailing zeros"
  trailing_zeros.size
end

p zeros(6) #== 1
p zeros(10) #== 2
p zeros(12) #== 2
p zeros(100) #== 24
p zeros(123) #== 28
p zeros(945) #== 234
p zeros(1000) #== 249
p zeros(2000)
p zeros(3000)
p zeros(10000) #== 2499
# p zeros(100000) #== 24999
