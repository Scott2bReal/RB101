# The result of the following statement will be an error:
#
# puts "the value of 40 + 2 is " + (40 + 2)
#
# Why is this and what are two possible ways to fix this?

# Ruby can't add a string and an integer, and the string can't be converted to
# an integer. It can be fixed in the following ways

puts "the value of 40 + 2 is " + (40 + 2).to_s

# or

puts "the value of 40 + 2 is " << (40 + 2).inspect

# or

puts "the value of 40 + 2 is #{40 + 2}"
