def ascii_value(string)
  string.split('').map!(&:ord).sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# Further Exploration
#
# There is an Integer method such that:
#
# char.ord.mystery == char
#
# where mystery is our mystery method. Can you determine
# what method name should be used in place of mystery? What happens if you try
# this with a longer string instead of a single character?
#
# Solution
#
# Integer#inspect
#
# If a longer string is used, String#ord returns the ascii value of only the
# first character
