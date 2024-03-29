
def oddities(arr)
  odd_array = []
  arr.each_index { |idx| odd_array.push(arr[idx]) if idx.even? }
  odd_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
