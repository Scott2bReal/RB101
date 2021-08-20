# What do each of these puts statements output?

a = %w(a b c d e)

puts a.fetch(7) 
puts a.fetch(7, 'beats me') 
puts a.fetch(7) { |index| index**2 }

# I believe the first will throw an error, because the array doesn't contain an
# index of 7. 

# The second statement will put 'beats me' as a result of the index 7 not being
# present. Fetch will return the default value provided if the index does not
# exist

# The third statement will print 49 because fetch will call the block if the
# supplied index argument has no value.
