# What is the return value of the following statement? Why?

%w(ant bear caterpillar).pop.size

# This will return the integer 11 because pop removes the last element and
# returns it, and then size is called on that return value. It evaluates
# 'caterpillar' which has a size of 11.
