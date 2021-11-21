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
# def zeros(num)
#   trailing_zeros = []
#   num.downto(1).reduce(:*).digits.each do |digit|
#     trailing_zeros << digit if digit.zero?
#     break unless digit.zero?
#   end
#   p "result from !#{num} is #{trailing_zeros.size} trailing zeros"
#   trailing_zeros.size
# end

# First working solution
# def zeros(num)
#   counter = 1
#   trailing_zeros = 0
#   until 5**counter > num
#     trailing_zeros += num / (5**counter)
#     counter += 1
#   end
#   trailing_zeros
# end

# Best working solution

def zeros(num)
  num < 5 ? 0 : (num / 5) + (zeros(num / 5))
end

def get_number
  loop do
    print "\n"
    print "Enter a number: "
    number = gets.chomp.to_i
    return number if valid_number?(number)
    print "Please enter a valid number"
  end
end

def valid_number?(num)
  num == num.to_s.to_i
end

def continue?
  loop do
    print "\n"
    print "Continue? (y/n): "
    answer = gets.chomp
    if answer.downcase == 'y'
      return true
    elsif answer.downcase == 'n'
      return false
    else
      puts "Please enter y or n"
    end
  end
end

loop do
  number = get_number
  puts "!#{number} has #{zeros(number)} trailing zeros"
end
