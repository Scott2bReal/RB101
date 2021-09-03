# What happens when we modify an array while we are iterating over it? What
# would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# this code will output the p statements for every other element of array and the code
# will return [3, 4]. This is because the original array is being modified

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# this code will out put the p statement for 1 and 2 and then there will be no
# elements left to iterate. it will return [1, 2]
