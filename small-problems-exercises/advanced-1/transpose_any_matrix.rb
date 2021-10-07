# Problem: Modify the transpose method from a previous exercise to transpose a
# matrix of any size
#
# Input: Matrix
# Output: Transposed Matrix
#
# Data Structure: Array
#
# Algorithm:
#   Init new matrix, must be same size as first matrix
require 'pry'

def transpose(matrix)
  new_matrix = []
  (0..2).each do |column_idx|
    new_row = (0..2).map { |row_idx| matrix[row_idx][column_idx] }
    new_matrix << new_row
  end
  new_matrix
end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
#
# new_matrix = transpose(matrix)
#
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]])
p transpose([[1], [2], [3], [4]])
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])
p transpose([[1]])
