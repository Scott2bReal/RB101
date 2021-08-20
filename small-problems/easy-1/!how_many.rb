# Problem:
#
# Write a method that counts the number of occurences of each element in a given
# array:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print
# each element alongside the number of occurences
#
# Expected Output:
#
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
#
# Data structure: Hash
#
# Algorithm:
#
# Use unique keys of vehicles array to populate keys of a new hash
# Iterate through the vehicles array, increment corresponding hash key by one
# Print each hash key and value

def count_occurrences(array)
  hash = array.to_h { |key| [key, 0] }
  array.each { |item| hash[item] += 1 }
  hash.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)

# Further exploration:
#
# Try to solve the problem when words are case insensitive, e.g. 'suv' == 'SUV'
