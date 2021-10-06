# The following code:
#
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# is expected to print:
#
# []
# [21]
# [9, 16]
# [25, 36, 49]
#
# However, it does not. Obviously, there is a bug. Find and fix the bug, then
# explain why the buggy program printed the results it did.
#
# Solution:
#
# The elsif statement was not complete. To get the program to print the desired
# results, I added completed the conditional expression by adding "array.size >
# 1". The map invocation is considered the conditional expression associated
# with the elsif in this case. Because it is considered truthy that branch of
# the conditional is executed in every example but the first. If there is no
# code within a conditional branch, then it is nil
