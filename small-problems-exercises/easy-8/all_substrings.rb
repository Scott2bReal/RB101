=begin

Problem: Write a method that returns a list of all substrings of a string. The
returned list should be ordered by where in the string the substring begins.
This means that all substrings that start at position 0 should come first, then
all substrings that start at position 1, and so on. Since multiple substrings
will occur at each position, the substrings at a given position should be
returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous
exercise:

Input: String
Output: Array with all substrings, in order described

Q's: Conserve the original string?

Data Structure: Array

Algorithm:
  - Initialize final_array
  - Until string.empty?
    - Send string to leading substrings
    - Add resulting array to final_array
    - Remove first character of string
  - Return final_array compressed to one array

=end

def leading_substrings(string)
  final_array = []
  growing_array = []
  string.chars.each do |char|
    growing_array << char
    final_array << growing_array.join('')
  end
  final_array
end

def substrings(string)
  final_array = []
  string_array = string.chars
  until string_array.empty?
    final_array << leading_substrings(string_array.join(''))
    string_array.shift
  end
  final_array.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
