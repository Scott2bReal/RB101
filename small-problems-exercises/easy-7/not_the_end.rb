=begin

Problem: Write a method that returns the next to last word in the String passed
to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Input: String containing at least two words
Output: String: the next to last word in the input string

Data Structure: Array

Algorithm:
  - Split string into words
  - Return words array at index -2

Solution:

def penultimate(string)
  string.split[-2]
end

Further Exploration:

Suppose we need a method that retrieves the middle word of a phrase/sentence.
What edge cases need to be considered? How would you handle those edge cases
without ignoring them? Write a method that returns the middle word of a phrase
or sentence. It should handle all of the edge cases you thought of.

Input: String
Output: Middle word of that string

Rules:
  Explicit:
    - word is any sequence of non-blank characters
  Implicit:
    -
Q's:
  - If even number of words, which middle word should be returned?
  - If empty string, return an empty string, throw an error, or ask for another
    string?
  - If one word, return that one word or ask for another string?

=end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
