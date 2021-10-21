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
  Init counter = 0
  reject any chars that don't appear in other string
  add the size of that reject array to counter

=end

def anagram_difference(string1, string2)
  counter = 0
  rejected1 = string1.chars.reject { |char| string2.chars.include?(char) }
  rejected2 = string2.chars.reject { |char| string1.chars.include?(char) }
  counter += rejected1.size + rejected2.size
  letters1 = string1.chars.delete_if { |letter| rejected1.include?(letter) }.sort
  letters2 = string2.chars.delete_if { |letter| rejected2.include?(letter) }.sort
  if letters1.size != letters2.size
    array = [letters1, letters2].sort_by { |arr| arr.size }
    while array[0].size > array[1].size
      array[0].pop
      p array[0]
      counter += 1
    end
  end
  counter
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
