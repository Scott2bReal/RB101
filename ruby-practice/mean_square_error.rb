=begin

Complete the function that

accepts two integer arrays of equal length

compares the value each member in one array to the corresponding member in the
other

squares the absolute value difference between those two values

and returns the average of those squared absolute value difference between each
member pair.

Examples

[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3

[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4

[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

Input: Two Arrays of equal length
Output: Average of squares of differences between array elements

Data Structure: Array

Algorithm:
  Init squares array
  For each with index in array1
    difference = array2[idx] = array1[idx]
    square = difference squared
    push square to squares array
  Average squares array
=end

def solution(array1, array2)
  squares = array1.map.with_index do |_, idx|
    difference = array2[idx] - array1[idx]
    difference**2
  end
  squares.sum.to_f / squares.size
end

p solution([1, 2, 3], [4, 5, 6]) == 9

p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5

p solution([-1, 0], [0, -1]) == 1
