# TODO Further exploration

# Problem: Write a method that takes a 3 x 3 matrix in Array of Arrays format
# and returns the transpose of the original matrix. Note that there is a
# Array#transpose method that does this -- you may not use it for this exercise.
# You also are not allowed to use the Matrix class from the standard library.
# Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and
# leave the original matrix unchanged.
#
# Input: 3x3 matrix (3 arrays nested in one)
# Output: The matrix transposed
#
# Data Structure: Array
#
# Algorithm:
#   Make new nested array
#   init x and y = 0
#   make new array[x][y] = old array[y][x]
#   increment x
#   Do the same for y

def transpose(matrix)
  new_matrix = Array.new(matrix.size, [])
  matrix.each_with_index do |array, x_idx|
    array.each_with_index do |_, y_idx|
      new_matrix[x_idx][y_idx] = matrix[y_idx][x_idx]
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]
