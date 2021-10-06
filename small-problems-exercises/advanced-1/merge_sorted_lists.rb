# Problem: Write a method that takes two sorted Arrays as arguments, and returns
# a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.
#
# Input: Two arrays
# Output: One array with all elements sorted
#
# Rules:
#   Don't mutate either array
#   If one array is empty, return other array
#   Provided arrays will be sorted
#
#
# Data Structure: Array
#
# Algorithm:
#   if one array is empty, just return other array
#   Init new array = []
#   Init idx counter for each array
#   loop
#     compare array1 <=> array2 at index idx
#
#
# Original Solution:
# def merge(array1, array2)
#   return array2 if array1.empty?
#   return array1 if array2.empty?
#   new_array = []
#   idx1 = 0
#   idx2 = 0
#   loop do
#     case array1[idx1] <=> array2[idx2]
#     when -1 # array1 element is smaller
#       new_array << array1[idx1]
#       idx1 += 1
#     when 1 # array2 element is smaller
#       new_array << array2[idx2]
#       idx2 += 1
#     when 0
#       new_array << array1[idx1]
#       new_array << array2[idx2]
#       idx1 += 1
#       idx2 += 2
#     when nil
#       if array1[idx1]
#         new_array << array1[idx1]
#         idx1 += 1
#       elsif array2[idx2]
#         new_array << array2[idx2]
#         idx2 += 1
#       end
#     end
#     break if (idx1 == array1.size) && (idx2 == array2.size)
#   end
#   new_array
# end

# Book Solution
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]
