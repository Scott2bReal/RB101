=begin

Problem: Write a method that takes a string, and returns a new string in which
every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation,
and whitespace should not be doubled.

Input: String
Output: String where every consonant is doubled

Data Structure: Array

Algorithm:
  - Initialize CONSONANTS constant
  - Modify method from last problem to contain conditional, if CONSTANTS.include?
  - Join final array
=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  chars = string.chars
  final_array = []
  chars.each do |char|
    final_array << char
    final_array << char if CONSONANTS.include?(char.downcase)
  end
  final_array.join('')
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
