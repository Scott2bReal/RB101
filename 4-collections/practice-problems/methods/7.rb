# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value will be a boolean. It checks to see if the current
# element is odd and returns a boolean. The return value of any will be true
# because one or more of the elements in the array are odd. The code will output
# the first puts statements to the console and will return true. Any will short
# circuit as soon as the block returns a truthy value.
