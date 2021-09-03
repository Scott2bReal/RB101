# Create a hash that expresses the frequency with which each letter occurs in
# this string:

statement = 'The Flintstones Rock'

=begin

Input: String
Output: Hash with letters as keys and counts as values

Clarifying Questions:
  - Case?

Data Structure: Array

Algorithm:
  - Initialize new hash with default values of 0
  - For each character in statement
    - If character is a letter, increment corresponding value in hash

=end

def letter?(char)
  char.match?(/[A-Za-z]/)
end

counts = Hash.new(0)

statement.chars.each do |char|
  counts[char] += 1 if letter?(char)
end

puts counts
