# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# It will return a new array [nil, 'bear']. Enumerable#map returns a new array
# populated with the return value of the block for each object in the caller. In
# this case, the only value with a size greater than 3 is 'bear'. If none of the
# condition in an if statement evaluate as true, the if statement returns nil
