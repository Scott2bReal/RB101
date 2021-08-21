require 'pry'

# Problem:
#
# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters
# reversed. Each string will consist of only letters and spaces. Spaces should
# be included only when more than one word is present.
#
# Examples:
#
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
#
# Data Structure: Array
#
# Algorithm:
#
# Split string into array of words
# For each word in array
#   If word is > 4 characters
#     Split into array of characters
#     Reverse array
#     Combine back into single string
# Combine array back into single string

# Original solution
# def reverse_words(string)
#   string.split(' ').each { |word| word.reverse! if word.length > 4 }.join(' ')
# end
# 
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Refactored

def reverse_words(string)
  string.split(' ').map { |word| word.length > 4 ? word.reverse! : word }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
