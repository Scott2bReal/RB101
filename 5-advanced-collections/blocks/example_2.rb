[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

=begin

Map is being called on the multi-layer array. Each sub-array is being assigned
the local variable arr. Array.first is being called on each sub-array, which
returns the value at index 0 of the sub-array. Then puts is being called with
that object, and prints the object to the screen. Then, the return value of the
puts call (nil) is being assigned to the new array returned by map

=end
