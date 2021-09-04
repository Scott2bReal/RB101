=begin

Problem:
Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument. (The first
Fibonacci number has index 1.)

Input: Integer (greater than 2)
Output: First fibonacci number with that number of digits

Domain:
Fibonacci sequence is each number is the sum of the previous two

Data Structure: Array when looking at digits

Algorithm:
  - Evaluate output of fibonacci sequence
  - If return value has digits == argument, return that number
  Fibonacci algorithm
    - Initialize hash = { first: 1 second: 1 }
    - Initialize sum = hash[:first] + hash[:second]
=end
def find_fibonacci_index_by_length(number)
  sum = 0
  numbers = [1, 1]
  counter = 2
  until sum.digits.size == number
    sum = numbers[0] + numbers[1]
    numbers[0] = numbers[1]
    numbers[1] = sum
    counter += 1
  end
  counter
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
