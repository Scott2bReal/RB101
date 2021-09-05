=begin

Problem:
Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

Input: Array, object to search for
Output: Boolean (whether object is present)

Data Structure: Array

Algorithm:
  - For each item in array
    - Return true if item == target
  - If iteration completes with no return, return false

=end

def include?(array, target)
  array.each { |item| return true if item == target }
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
