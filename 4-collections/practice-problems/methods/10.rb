# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# This will return [1, nil, nil] because the conditional will be evaluated for
# each element of the calling array. 1 is not greater than 1, so the last
# statement evaluated for the first element of the calling array will be that
# element. The next two elements are greater than one, so the puts statement is
# evaluated in the if statement. Because puts returns nil, that is what will
# populate the last two slots of the retuned array.
