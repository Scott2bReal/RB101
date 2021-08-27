# Problem:
#
# Write a method that takes one argument, a string, and returns a new string
# with the words in reverse order.
#
# Input: String
# Output: String, reverse order
#
# Examples
#
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''
#
# Data Structure: Array
#
# Algorithm:
#
# Split string into array of words (separate by spaces)
# Reverse array
# Join array back into string
# If array is empty, string should be ''
# Print string
#
def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
