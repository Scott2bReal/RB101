=begin

Problem:
Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array, and
then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

Input: Array of integers
Output: Float rounded to 3 decimal places, which is the result of multiplying
        all the numbers, dividing by the number of numbers

Data Structure: Array

Algorithm:
  - Initialize divisor = array size to float
  - Initialize product variable
  - For each element of array
    - product *= element
  - product / divisor
  - Format and return resulting float

=end

def show_multiplicative_average(array)
  divisor = array.size.to_f
  product = 1
  array.each { |num| product *= num }
  puts "The result is #{format('%0.3f', product / divisor)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
