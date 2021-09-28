# Our countdown to launch isn't behaving as expected. Why? Change the code so
# that our program successfully counts down from 10 to 1.
#
# def decrease(counter)
#   counter -= 1
# end
#
# counter = 10
#
# 10.times do
#   puts counter
#   decrease(counter)
# end
#
# puts 'LAUNCH!'

# The counter assignment inside the decrease method is shadowing the local
# variable in the main scope. Therefore, the counter variable in the main scope
# will remain at 10 despite the attempted decrementation. Here is an example of
# a possible solution:
#
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# Further exploration
# We specify 10 two times, which looks a bit redundant. It should be possible to
# specify it only once. Can you refactor the code accordingly?
#
# Instead of `10.times` I would put counter.times
