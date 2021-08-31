# Original solution
# def swap(string)
#   words = string.split.map do |word|
#     first_letter = word[0]
#     last_letter = word[-1]
#     word[0] = last_letter
#     word[-1] = first_letter
#     word
#   end
#   words.join(' ')
# end
#
# Solution using multiple assignment
def swap(string)
  words = string.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  words.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')

# Further exploration
#
# How come our solution passes word into the swap_first_last_characters method
# invocation instead of just passing the characters that needed to be swapped?
# Suppose we had this implementation:
#
# def swap_first_last_characters(a, b)
#   a, b = b, a
# end
#
# and called the method like this:
#
# swap_first_last_characters(word[0], word[-1])
#
# Would this method work? Why or why not?
#
# It would not work. Array#map returns an array full of the return values of the
# block. The array would be transformed to contain only the return value of the
# multiple assignment, and the rest of the word would be dropped.
