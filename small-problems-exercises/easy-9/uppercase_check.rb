# Problem: Write a method that takes a string argument, and returns true if all
# of the alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.
#
# Input: string
# Output: Boolean
#
# Data Structure: Array
#
# Algorithm:
# Initialize constant LETTERS
# Initialize constant UPPER_CASE_LETTERS
# Split string to array of chars
# If char is a LETTER but not UPPERCASE, return false
# return true
#
LETTERS = /[A-Za-z]/
UPPER_CASE = /[A-Z]/

def uppercase?(string)
  string.each_char do |char|
    if char.match?(LETTERS)
      return false if !char.match?(UPPER_CASE)
    end
  end
  true
end

# Book solution
# def uppercase?(string)
#   string == string.upcase
# end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
