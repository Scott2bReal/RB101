=begin

This problem takes its name by arguably the most important event in the life of
the ancient historian Josephus: according to his tale, he and his 40 soldiers
were trapped in a cave by the Romans during a siege.

Refusing to surrender to the enemy, they instead opted for mass suicide, with a
twist: they formed a circle and proceeded to kill one man every three, until one
last man was left (and that it was supposed to kill himself to end the act).

Well, Josephus and another man were the last two and, as we now know every
detail of the story, you may have correctly guessed that they didn't exactly
follow through the original idea.

You are now to create a function that returns a Josephus permutation, taking as
parameters the initial array/list of items to be permuted as if they were in a
circle and counted out every k places until none remained.

Tips and notes: it helps to start counting from 1 up to n, instead of the usual
range 0..n-1; k will always be >=1.

For example, with n=7 and k=3 josephus(7,3) should act this way.

[1,2,3,4,5,6,7] - initial sequence
[1,2,4,5,6,7] => 3 is counted out and goes into the result [3]
[1,2,4,5,7] => 6 is counted out and goes into the result [3,6]
[1,4,5,7] => 2 is counted out and goes into the result [3,6,2]
[1,4,5] => 7 is counted out and goes into the result [3,6,2,7]
[1,4] => 5 is counted out and goes into the result [3,6,2,7,5]
[4] => 1 is counted out and goes into the result [3,6,2,7,5,1]
[] => 4 is counted out and goes into the result [3,6,2,7,5,1,4]

So our final result is:

josephus([1,2,3,4,5,6,7],3)==[3,6,2,7,5,1,4]

Input: Array, step size
Output: Resulting array after josephus permutation execution

Rules:
  Will every element in input be unique?

Data Structure: Array

Algorithm:
  Init index = 0
  Init counter = 1
  Init executed = []
  While input array is not empty
    increment index
    increment counter
    if counter == 3
      delete element at index and add to executed array
      set counter to 0
    index = 0 if index == array.size - 1

=end
require 'pry'

def josephus(array, step_size)
  index = 0
  counter = 1
  executed = []
  loop do
    binding.pry
    if counter == step_size
      binding.pry
      executed << array.delete_at(index)
      break if array.empty?
      counter = 0
      index -= 1 unless index == 0
    else
      binding.pry
      index += 1
      counter += 1
      index = 0 if index == array.size
    end
  end
  executed
end

p josephus((1..10).to_a, 1) #== (1..10).to_a
p josephus((1..10).to_a, 2) #== [2, 4, 6, 8, 10, 3, 7, 1, 9, 5]
