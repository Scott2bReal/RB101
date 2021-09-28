# We wrote a method for moving a given number of elements from one array to
# another. We decide to test it on our todo list, but invoking move on line 11
# results in a SystemStackError. What does this error mean and why does it
# happen?
#
# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end
#
# # Example
#
# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']
#
# move(2, todo, done)

# This is a recursive method with no base case. It creates an endless cycle of
# adding method calls to the call stack, causing the SystemStackError. This can
# be avoided by adding a line as follows
#
def move(n, from_array, to_array)
  return nil if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# Further Exploration:
#
# nil will be added to to_array once from_array is empty
