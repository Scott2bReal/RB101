# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?

if false
  greeting = "hello world"
end

greeting

# There will be an error because ruby will never evaluate the assignment
# expression.
#
# Wrong! This is a weird one
#
# A variable initialzed in an if block is initialized as nil, even if the if
# statement is not evaluated
