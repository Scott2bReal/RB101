=begin

The maximum sum subarray problem consists in finding the maximum sum of a
contiguous subsequence in an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] -- should be 6: [4, -1, 2, 1]

Easy case is when the list is made up of only positive numbers and the maximum
sum is the sum of the whole array. If the list is made up of only negative
numbers, return 0 instead.

Empty list is considered to have zero greatest sum. Note that the empty list or
array is also a valid sublist/subarray.

Input: Array of integers
Output: Maximum sum of any sub array

Rules:
  - If all numbers are negative return 0
  - Empty list returns 0
  - Sub array can be any size

Data Structure: Array

Algorithm:
  Return 0 if array.all?(&:negative?)
  Move a slice of increasing size through the array, checking the sum against a
  running max total
  
=end

def max_sequence(array)
  return 0 if array.all?(&:negative?)
  slice_size = 0
  max_sum = 0
  until slice_size == array.size
    start_idx = 0
    end_idx = slice_size
    until end_idx == array.size
      max_sum = array[start_idx..end_idx].sum if array[start_idx..end_idx].sum > max_sum
      start_idx += 1
      end_idx += 1
    end
    slice_size += 1
  end
  max_sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
