# Problem: Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.
# Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
#
# Input: Words array
# Output: arrays of words that are anagrams
#
# Data Structure: Array
#
# Algorithm
# Initialize array for to keep track of used words
# For each word in words
# if not in used words
#   initialize anagrams = []
#   For each permutation of word
#     If words includes current perm of word
#       Add to anagrams array
#       Add to used words array
#   print anagrams array if anagrams size > 0

def print_anagram_arrays(words)
  used_words = []
  words.each do |word|
    unless used_words.include?(word)
      anagrams = []
      anagrams << word
      used_words << word
      word.chars.permutation do |perm|
        if words.include?(perm.join)
          anagrams << perm.join unless used_words.include?(perm.join)
          used_words << perm.join
        end
      end
      p anagrams
    end
  end
end

print_anagram_arrays(words)
