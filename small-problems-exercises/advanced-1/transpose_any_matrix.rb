# Problem: Modify the transpose method from a previous exercise to transpose a
# matrix of any size
require 'pry'

def transpose(matrix)
  new_matrix_size = matrix[0].size
  new_matrix = Array.new(new_matrix_size, [])
  matrix.each_with_index do |array, x_idx|
    array.each_with_index do |_, y_idx|
      new_matrix[y_idx][x_idx] = matrix[x_idx][y_idx]
    end
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
