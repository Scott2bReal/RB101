# Given a string return an array of the word as a wave
#
# Example: wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
#
# Input: One word string
# Output: Array, word waved
#
# Data Structure: Array
#
# Algorithm:
#   init array waved_words
#   for each char in word with index
#     waved_word = word.chars
#     waved_word[index] = char.upcase
#     waved_words << waved_word
#    return waved word
#
def wave(word)
  waved_words = []
  word.each_char.with_index do |char, idx|
    next unless char.match?(/[a-z]/)

    waved_word = word.clone
    waved_word[idx] = char.upcase
    waved_words << waved_word
  end
  waved_words
end

puts wave('hello')
