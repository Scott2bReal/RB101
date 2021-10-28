# There is a message that is circulating via public media that claims a reader
# can easily read a message where the inner letters of each words is scrambled,
# as long as the first and last letters remain the same and the word contains
# all the letters.
#
# Another example shows that it is quite difficult to read the text where all
# the letters are reversed rather than scrambled.
#
# In this kata we will make a generator that generates text in a similar
# pattern, but instead of scrambled or reversed, ours will be sorted
# alphabetically
#
# Requirement return a string where:
#
#     the first and last characters remain in original place for each word
#     characters between the first and last characters must be sorted
#     alphabetically punctuation should remain at the same place as it started,
#     for example: shan't -> sahn't
#
# Assumptions
#
#     words are seperated by single spaces only spaces separate words, special
#     characters do not, for example: tik-tak -> tai-ktk special characters do
#     not take the position of the non special characters, for example: -dcba ->
#     -dbca for this kata puctuation is limited to 4 characters: hyphen(-),
#     apostrophe('), comma(,) and period(.) ignore capitalisation
#
# Data Structure: Array
#
# Algorithm:
#   Split string into words array
#   For each word in words
#     Init special chars hash
#     Make array letters which ignores all special chars
#     init first last, first and last char of letters
#     make and sort array of chars excluding first and last, then append and
#       prepend last and first
#     If word contains non-alphabet characters
#       add special char to hash, key is the character and value is the idx
#
#
#   Return words.join(' ')
#
require 'pry'

def scramble_words(string)
  words = string.split(' ')
  scrambled_words = []
  words.each do |word|
    special_chars = {}
    letters = word.chars.select { |char| char.match?(/[A-Za-z]/) }
    first, last = letters[0], letters[-1]
    sorted = letters[1..-2].sort.push(last).unshift(first)
    word.chars.each do |char|
      if char.match?(/[^A-Za-z]/)
        special_chars[char] = word.chars.index(char)
      end
    end
    special_chars.each do |char, idx|
      sorted.insert(idx, char)
    end
    scrambled_words << sorted.join('')
  end
  scrambled_words.join(' ')
end

puts scramble_words('str-ing')
