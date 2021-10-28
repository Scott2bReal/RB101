=begin

What is an anagram? Well, two words are anagrams of each other if they both
contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will
be given two inputs a word and an array with words. You should return an array
of all the anagrams or an empty array if there are none.

Input: A string and an array of strings
Output: Array of all of the anagrams of string in array

Data Structure: Array

Algorithm:
  anagrams = []
  for each word in array
    if perm in word.chars.permutation == og_word
      push word to anagrams
  anagrams

My original algorithm would have worked!
Algorithm:
  for each word in array
    select word if word.chars.sort == string.chars.sort

=end

# def anagrams(string, array)
#   found_anagrams = []
#   array.each do |word|
#     word.chars.permutation.each do |perm|
#       found_anagrams << word if perm.join == string
#     end
#   end
#   found_anagrams.uniq
# end
#
def anagrams(string, array)
  array.select { |word| word.chars.sort == string.chars.sort }
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']

p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
