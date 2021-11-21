=begin

Implement the function unique_in_order which takes as argument a sequence and
returns a list of items without any elements with the same value next to each
other and preserving the original order of elements.

Input: String containing letters and/or numbers
Output: Array containing those characters, preserving order, with no identical
elements next to each other

Data Structure: Array

Algorithm:
  Init new_arr = []
  Make array of chars in input string
  For each char in input string
    add to new array if last char in new array isnt equal to char
  return new array

=end

def unique_in_order(input)
  new_arr = []
  input = input.chars unless input.is_a?(Array)
  input.each do |element|
    new_arr << element unless new_arr.last == element
  end
  new_arr
end

p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])       == [1,2,3]
