# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# Original lengthy, silly solution
# num_arr = arr.map(&:to_i)
# sorted_nums = num_arr.sort { |a, b| b <=> a }
# p sorted_nums.map(&:to_s)

# LOL DUH

arr.sort do |a, b|
  b.to_i <=> a.to_i
end
