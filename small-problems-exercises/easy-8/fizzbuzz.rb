=begin

Problem: Write a method that takes two arguments: the first is the starting
number, and the second is the ending number. Print out all numbers between the
two numbers, except if a number is divisible by 3, print "Fizz", if a number is
divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
print "FizzBuzz".

Input: Starting number, ending number
Output: All numbers between the two, with rules described

Rules: Inclusive range, Fizz if divisible by 3, Buzz if by 5, FizzBuzz if by
both

Data Structure: Array

Algorithm:
  - Initialize final_array
  - For each element of range (start..end)
    - If element % 3 == 0
      - Push Fizz to array
    - Elsif element % 5 == 0
      - Push Buzz to array
    - Elsif element % 5 && element % 3
      - Push FizzBuzz to array
    - Else push element to array
  - return final_array

=end

def fizzbuzz(first, last)
  final_array = []
  (first..last).each do |num|
    if (num % 3).zero? && (num % 5).zero?
      final_array << 'FizzBuzz'
    elsif (num % 5).zero?
      final_array << 'Buzz'
    elsif (num % 3).zero?
      final_array << 'Fizz'
    else
      final_array << num
    end
  end
  final_array.each do |item|
    puts item
  end
end

fizzbuzz(1, 15)
