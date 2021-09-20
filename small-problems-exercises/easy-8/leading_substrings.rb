=begin

Problem:
Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in
order from shortest to longest substring.

Input: String
Output: array of strings

Q's: How to treat spaces? Conserve capitalization? What about empty string?

Data Structure: Array

Algorithm:
  - Initialize array = []
  - Initialize growing_string = ''
  - Split string to array of all chracters
  - For each character
    - Add character to growing_string
    - Add growing_string to array
  - Return array

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

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
