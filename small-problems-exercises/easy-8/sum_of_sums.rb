=begin

Problem: Write a method that takes an Array of numbers and then returns the sum
of each leading subsequence for that Array. You may assume that the Array always
contains at least one number.

Input: Array
Output: Integer (sum of each leading subsequence)

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

Data Structure: Arrays

Algorithm:
  - Initialize sum = 0
  - Initialize growing_array = []
  - For each element of original array
    - Add element to growing_array
    - Add sum of growing_array to sum
  - Return sum

=end

def sum_of_sums(array)
  sum = 0
  growing_array = []
  array.each do |item|
    growing_array << item
    sum += growing_array.sum
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
