# Problem: Write a method that takes a string as an argument, and returns true
# if all parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.
#
# Input: String
# Output: Boolean
#
# Q's: can i mutate the original string?
#
# Rules:
#   - Pairs must start with a (, not a )
#
# Data Structure: Array
#
# Algorithm:
#   Make an array only containing parentheses
#   Return true if that array is empty
#   return false if first paren is ) or array is odd sized
#   keep count of parens, add if open and sub if closed
#
# Original Solution:
# def balanced?(string)
#   parens = string.chars.select { |char| char.match?(/[()]/) }
#   pairs = 0
#   return true if parens.empty?
#   return false if parens.size.odd?
#   return false if parens.first == ')' || parens.last == '('
#   string.each_char do |char|
#     pairs += 1 if char == '('
#     pairs -= 1 if char == ')'
#   end
#   pairs.zero?
# end

# Book Solution
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
