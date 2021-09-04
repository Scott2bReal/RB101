require 'pry'

=begin

Problem:
Write a method that takes an Array as an argument, and returns two Arrays (as a
pair of nested Arrays) that contain the first half and second half of the
original Array, respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

Input: one array
Output: On nested array containing two arrays, the first and second half of the
        input array

Data Structure: Array

Algorithm:
  - initialize return array = [[], []]
  - SET halfway = array.size / 2.0, round up
  - initialize counter
  - Until counter == halfway
    - Remove and add element from input array to array one
  - Until input array == empty
    - Remove and add element from input array to array two

=end

def halvsies(array)
  final_array = [[], []]
  halfway = (array.size / 2.0).ceil
  counter = 1
  until counter > halfway
    final_array[0] << array.shift
    counter += 1
  end

  until array.empty?
    final_array[1] << array.shift
  end
  final_array
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
