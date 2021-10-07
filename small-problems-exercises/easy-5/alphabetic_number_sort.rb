# Problem:

# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# Input:

# Array of integers (0..19)

# Output:

# Array of integers (0..19) (listed in alphabetical order)

# Data Structure:

# Array, Hash

# Algorithm

# Intialize constant ENGLISH containing integers with their english names
# Iterate over array of integers, as new array words
#   For each element, set to corresponding value of ENGLISH
# Sort array words
# Iterate over array words
#   For each element, set to corresponding key of ENGLISH

ENGLISH = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

def alphabetic_number_sort(integers)
  integers.map { |num| ENGLISH[num] }.sort.map { |word| ENGLISH.key(word) }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Description of code:
# First a constant ENGLISH is declared, referring to a hash in which the keys
# are integers, and the corresponding values are the english words for those
# integers
#
# Then, alphabetic_number_sort is defined with parameter integers. integers
# should be an array of integers. Inside that definition map is called on the
# integers array, and is passed a block with the parameter num referring to each
# element of the integers array. A new array created by that map call, with each
# element being the value of ENGLISH associated with the integer num. This new
# array which contains strings (english words for the integers) has sort called
# on it, and the resulting new sorted array of english words then has map called
# on it, which is passed a block with the parameter word. Inside the block, the
# Hash#key method is called on ENGLISH with the current element of the array on
# which map was called (word) passed as an argument. This returns the key
# associated with that value in the ENGLISH hash. This return value is used by
# map to populate a new array. This new array contains integers sorted by their
# corresponding english word. This new array is also what is returned by
# alphabetic_number_sort. Next, puts is invoked on the equality statement, where
# alphabetic_number_sort is invoked and passed the range (0..19) as an argument.
# This range is inclusive, and Kernel#to_a is called on it which converts the
# range of numbers to an array containing each number. The right side of the
# equality statement is the expected return value of alphabetic_number_sort.
# This line of code is acting as a test to confirm the proper implementation of
# the alphabetic_number_sort method.
