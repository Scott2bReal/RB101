# The reverse_sentence method should return a new string with the words of its
# argument in reverse order, without using any of Ruby's built-in reverse
# methods. However, the code below raises an error. Change it so that it behaves
# as expected.
#
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []
#
#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end
#
#   reversed_words.join(' ')
# end
#
# p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# Line 7 is where the bug is. Ruby is trying to use the + sign to concatenate
# words[i] and reversed_words. reversed_words is an array, and therefore cannot
# be concatenated with a string. Here is the method implemented correctly:
#
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
