# Assume you have the following code:

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# What will each of the 4 puts statements print?
#
# The first statement will print the default values (-4712-01-01)
#
# The second statement will print January 1, 2016 (2016-01-01) as per the
# default values for month and mday
#
# The third statement will print May 1, 2016 as per the default mday value
# (2016-05-01)
#
# The fourth statement will print the given values (2016-05-13)
