=begin

You are given an array (which will have a length of at least 3, but could be
very large) containing integers. The array is either entirely comprised of odd
integers or entirely comprised of even integers except for a single integer N.
Write a method that takes the array as an argument and returns this "outlier" N.

Examples

[2, 4, 0, 100, 4, 11, 2602, 36]

Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]

Should return: 160 (the only even number)

Input: Array of size at least 3
Output: Outlier (integer)

Data Structure: Array

Algorithm:
  save odds as selected odds
  return odds[0] if odds.size == 1
  same for evens

=end

def find_outlier(integers)
  odds = integers.select(&:odd?)
  return odds[0] if odds.size == 1
  evens = integers.select(&:even?)
  evens[0]
end
