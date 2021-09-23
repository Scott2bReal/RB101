# Problem: In the previous exercise, we developed a procedural method for
# computing the value of the nth Fibonacci numbers. This method was really fast,
# computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.
#
# Input: Target fib number
# Output: last digit of that number
#
# Data Structure: array
#
# Algorithm:
# - Split number into digits array
# - Return last digit using that array
#
def fibonacci_last(target)
  first, last = [1, 1]
  3.upto(target) do
    first, last = [last, first + last]
  end

  last.digits.first
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4
