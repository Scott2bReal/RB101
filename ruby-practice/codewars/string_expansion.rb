# Problem: Given a string that includes alphanumeric characters ('3a4B2d')
# return the expansion of that string: The numeric values represent the
# occurrence of each letter preceding that numeric value. There should be no
# numeric characters in the final string. Empty strings should return an empty
# string.

# The first occurrence of a numeric value should be the number of times each
# character behind it is repeated, until the next numeric value appears.
#
# Input: String
# Output: Expanded string
#
# Rules:
#   - If two consecutive numeric characters the first is ignored
#   - If two consecutive alphabetic characters the first has no effect on the
#   second
#   - Should work for both upper and lower case letters
#   - Empty string should return an empty string
#
# Data Structure: Array
#
# Algorithm:
#   Init final string
#   Init multiplier = 1
#   For each character in argument string (with index)
#     If character is a number
#       multiplier = char
#     Elsif char is a letter
#       multiplier.times add char to final string
#
def string_expansion(string)
  final_string = ''
  multiplier = 1
  string.chars.each do |char|
    if char.match?(/[0-9]/)
      multiplier = char.to_i
    elsif char.match?(/[A-Za-z]/)
      multiplier.times { final_string << char }
    end
  end
  final_string
end

puts string_expansion('3D2a5d2f') == 'DDDaadddddff'
puts string_expansion('3abc') == 'aaabbbccc'
puts string_expansion('3d332f2a') == 'dddffaa'
puts string_expansion('abcde') == 'abcde'
puts string_expansion('') == ''
