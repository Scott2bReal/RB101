# What is the return value of each_with_object in the following code? Why?

%(ant bear cat).each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# This will return { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
# because value[0] is the first letter of the element of the array which is
# being evaluated. This is then made a key of the hash, and the value is set to
# the element of the calling array which is being evaluated. The hash which is
# initialized by supplying it as an argument to each_with_object is populated
# with the block.
