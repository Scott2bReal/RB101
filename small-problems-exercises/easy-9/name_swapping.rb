# Problem: Write a method that takes a first name, a space, and a last name
# passed as a single String argument, and returns a string that contains the
# last name, a comma, a space, and the first name.
#
# Input: String firt and last name
# Output: Last name comma first name
#
# Data structure: array
#
# Algorithm
# Split name into names array
# return string interpolated with names array
#
def swap_name(name)
  names = name.split
  "#{names[1]}, #{names[0]}"
end

puts swap_name('Scott Hoecker')
