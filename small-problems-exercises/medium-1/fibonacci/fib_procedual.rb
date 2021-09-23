# Problem: In the previous exercise, we developed a recursive solution to
# calculating the nth Fibonacci number. In a language that is not optimized for
# recursion, some (not all) recursive methods can be extremely slow and require
# massive quantities of memory and/or stack space.
#
# Ruby does a reasonably good job of handling recursion, but it isn't designed
# for heavy recursion; as a result, the Fibonacci solution is only useful up to
# about fibonacci(40). With higher values of nth, the recursive solution is
# impractical. (Our tail recursive solution did much better, but even that
# failed at around fibonacci(8200).)
#
# Fortunately, every recursive method can be rewritten as a non-recursive
# (procedural) method.
#
# Rewrite your recursive fibonacci method so that it computes its results
# without recursion.
#
# Input: Which digit of fib sequence
# Output: value of nth digit of fib sequence
#
# Data Structure: integers
#
# Algorithm:
# - Init digit = 3
# - Init two_back = 1
# - Init one_back = 1
# - Init current
# - Until digit == target
#  - current = one_back + two_back
#  - two_back = one_back
#  - one_back = current
#  - digit += 1
#
# Original solution:
# def fibonacci(target)
#   digit = 3
#   one_back = 1
#   two_back = 1
#   current = 0
#   until digit > target
#     current = one_back + two_back
#     two_back = one_back
#     one_back = current
#     digit += 1
#   end
#   current
# end

def fibonacci(target)
  first, last = [1, 1]
  3.upto(target) do
    first, last = [last, first + last]
  end

  last
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501
