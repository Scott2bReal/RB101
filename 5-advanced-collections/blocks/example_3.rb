[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
# 1
# 3
# => [1, 3]

=begin

- Array#map is called on the layered array
- Each sub-array is assigned to the local variable arr
- The puts method is called, and passed arr.first as an argument
- Array#first returns the element at index 0 of the array
- Puts prints the element at index 0 of the sub-array, returns nil
- Array#first is called again on the sub-array, which causes the block to return
  the element at index 0
- Array#map uses that return value to populate a new array
=end
