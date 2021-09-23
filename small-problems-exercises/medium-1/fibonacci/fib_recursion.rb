# Problem: The Fibonacci series is a sequence of numbers starting with 1 and 1
# where each number is the sum of the two previous numbers: the 3rd Fibonacci
# number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In
# mathematical terms:
#
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2
#
# Sequences like this translate naturally as "recursive" methods. A recursive
# method is one in which the method calls itself. For example:
#
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end
#
# sum is a recursive method that computes the sum of all integers between 1 and
# n.
#
# Recursive methods have three primary qualities:
#
#     They call themselves at least once.  They have a condition that stops the
#     recursion (n == 1 above).  They use the result returned by themselves.
#
# In the code above, sum calls itself once; it uses a condition of n == 1 to
# stop recursing; and, n + sum(n - 1) uses the return value of the recursive
# call to compute a new return value.
#
# Write a recursive method that computes the nth Fibonacci number, where nth is
# an argument to the method.
#
# Input: Integer, nth digit of fib sequence
# Output: nth digit of fib sequence
#
# Data structure: Integers
#
# Algorithm:
# - if n < 2, return n
# - else call fib(n - 1) + fib(n - 2)

def fibonacci(digit)
  return digit if digit < 2
  fibonacci(digit - 1) + fibonacci(digit - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
