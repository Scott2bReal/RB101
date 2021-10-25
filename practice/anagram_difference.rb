=begin

Given two words, how many letters do you have to remove from them to make them
anagrams?

Example

First word : c od e w ar s (4 letters removed)

Second word : ha c k er r a nk (6 letters removed)

Result : 10

Hints

A word is an anagram of another word if they have the same letters (usually in a
different order).

Do not worry about case. All inputs will be lowercase.

Input: Two strings
Output: Number of letters needed to remove to make two words anagrams

Data Structure: Array

Algorithm:
  init total_removed
  init alphabet
  for each letter in alphabet
    increment total_removed by the abs value of the difference between count of
    letter in string1 vs. string2

=end

def anagram_difference(string1, string2)
  total_removed = 0
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  alphabet.each do |letter|
    total_removed += (string1.count(letter) - string2.count(letter)).abs
  end

  total_removed
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
