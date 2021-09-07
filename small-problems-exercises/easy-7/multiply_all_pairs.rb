=begin

Problem: Write a method that takes two Array arguments in which each Array
contains a list of numbers, and returns a new Array that contains the product of
every pair of numbers that can be formed between the elements of the two Arrays.
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Input: Two arrays containing integers
Output: One array containing the product of every possible pair from the two
        arrays, sorted by increasing value

Data Structure: Array

Algorithm:
  - Initialize final array
  - For each number in array one
    - For each number in array 2
      - Multiply array one number by array 2 number
      - Add to final array
  - Sort and return final array

=end
def multiply_all_pairs(array1, array2)
  final = []
  array1.each do |num1|
    array2.each { |num2| final << (num1 * num2) }
  end
  final.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
