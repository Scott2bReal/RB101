# Problem: Given a string, replace every letter with its position in the
# alphabet. If string isn't a letter, ignore and don't return it
#
# Input: String
# Output: Alphabetic positions of letters only as a string
#
# Data Structure: Array
#
# Algorithm:
#   Create an alphabet hash using iteration
#   init positions array
#   For each char in string
#     if char is a letter
#       add correspoding hash value to positions array
#   join positions array delimited by ' '
#
def alphabet_position(string)
  positions = []
  alphabet = {}
  ('a'..'z').each do |letter|
    alphabet[letter] = letter.ord - 96
  end
  string.each_char do |char|
    positions << alphabet[char.downcase] if alphabet.keys.include?(char.downcase)
  end
  positions.join(' ')
end

puts alphabet_position("The sunset sets at twelve o' clock.")
