=begin

Problem: Write a method that takes a non-empty string argument, and returns the
middle character or characters of the argument. If the argument has an odd
length, you should return exactly one character. If the argument has an even
length, you should return exactly two characters.

Input: Non-empty string
Output: One character (middle) if odd length, Two characters if even length

Data Structure: Array

Algorithm:
  - If string.size is odd
    - string[string.size / 2]
  - Else
    - string = string[string.size / 2 - 1] + string[string.size / 2]
=end

def center_of(string)
  center = string.size / 2
  if string.size.odd?
    string[center]
  else
    string[center - 1] + string[center]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
