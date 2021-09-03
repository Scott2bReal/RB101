# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# It will return [1, 2, 3] because it populates a new array with elements from
# the caller for which the block returns a falsey value. the puts statement in
# this case will return nil for every element.
