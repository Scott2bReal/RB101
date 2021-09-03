# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# The docs hold the key
# Shift returns the removed first element from a collection. When called on a
# hash, it returns a two element array containing the key and value
#
# it will return [:a, 'ant']
