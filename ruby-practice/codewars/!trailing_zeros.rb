=begin

Write a program that will calculate the number of trailing zeros in a factorial of a given number.

N! = 1 * 2 * 3 * ... * N

Be careful 1000! has 2568 digits...

Data Structure: Array

Algorithm:

Too slow!
  init trailing zeros as empty array
  Find factorial
  Split into digits array
  add digit to trailing zeros if digit is zer
  else break
  return trailing zeros size

I think this works????
  If number > 12, return num / 4 + 1

=end

def zeros(num)
  p "num = #{num}"
  return num if num.zero?
  return (num / 4 - 1) if num > 11
  trailing_zeros = []
  num.downto(1).reduce(:*).digits.each do |digit|
    if digit.zero?
      trailing_zeros << digit
    else
      break
    end
  end
  trailing_zeros.size
end

p zeros(6) #== 1
p zeros(12) #== 2
p zeros(100)
p zeros(1000) #== 249
p zeros(10000)
p zeros(100000)
