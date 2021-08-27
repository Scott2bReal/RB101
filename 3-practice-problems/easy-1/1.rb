# What would you expect the code below to print out?
#
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# The code will print:
#
# 1
# 2
# 2
# 4
#
# Puts puts a new line after any object that doesnt have one. It is passed each
# of the elements of the array. Uniq returns a new array and does not mutate its
# caller, so numbers is unchanged from its initialization.
