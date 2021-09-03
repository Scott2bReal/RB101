# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# We can find out what count does by looking at the documentation.
# Count returns an integer, and evaluates the block for truthiness if given only
# a block as an argument
