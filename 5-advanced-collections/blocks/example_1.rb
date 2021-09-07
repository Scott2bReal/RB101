# What's happening in this, seemingly simple, piece of code? Take it apart and try
# to describe every interaction with precision.

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

=begin

In this code the following steps are happening:
  - Array#each is being called on the nested array
  - The parameter 'arr' is being defined. Each element of the top-level array is
    being passed to the block as an argument
  - The block is evaluated for each element of the top level array, which is a
    puts call.
  - The block calls Array#first, which references the first element of an array
    In this case, the first element of each array will be printed to the console
  - Finally, the Array#each method returns the original object on which it was
    called, which is the return value stated in the example

=end
