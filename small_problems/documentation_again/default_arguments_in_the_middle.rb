# Consider the following method and a call to that method

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print
#
# The answer for this is in the "Default Positional Arguments" section of the
# "Calling Arguments" section.
#
# The code will print [4, 5, 3, 6]
