=begin

Problem:
Write a method that takes a single String argument and returns a new string that
contains the original value of the argument with the first character of every
word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Input: single String
Output: New string with every word capitalized

Clarifying Q: Can i use capitalize??

Data Structure: Array

Algorithm (best way no rulez):
  - Initialize new array
  - Split string to array of words
  - For each word in array
    - Capitalize word
    - Add to final string array
  - Join final word array delimit by space
  - Return final string

Algorithm (no caplitalize method)
  - Initialze new array
  - Split string to array of words
  - For each word
    - Split word into array of chars
    - For each char
      - If index == 0, upcase
      - Else downcase
    - Join chars array
    - Add word to new array
  - Join new array

Algorithm (no upcase/downcase)
  - Initialize constant hash CASE_CONVERT
  - Initialize new array
  - Split string into array of words
  - For each word
    - Split word into array of chars
    - For each char
      - If index == 0
        - 

Original Solution

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

Second Solution

def word_cap(string)
  capped_words = []
  string.split.each do |word|
    fixed_word = word.chars.map do |char|
      if word.index(char) == 0
        char.upcase
      else
        char.downcase
      end
    end
    capped_words << fixed_word.join
  end
  capped_words.join(' ')
end

=end

CASE_CONVERT = {
  /[aA]/ => { upper: 'A', lower: 'a' },
  /[bB]/ => { upper: 'B', lower: 'b' },
  /[cC]/ => { upper: 'C', lower: 'c' },
  /[dD]/ => { upper: 'D', lower: 'd' },
  /[eE]/ => { upper: 'E', lower: 'e' },
  /[fF]/ => { upper: 'F', lower: 'f' },
  /[gG]/ => { upper: 'G', lower: 'g' },
  /[hH]/ => { upper: 'H', lower: 'h' },
  /[iI]/ => { upper: 'I', lower: 'i' },
  /[jJ]/ => { upper: 'J', lower: 'j' },
  /[kK]/ => { upper: 'K', lower: 'k' },
  /[lL]/ => { upper: 'L', lower: 'l' },
  /[mM]/ => { upper: 'M', lower: 'm' },
  /[nN]/ => { upper: 'N', lower: 'n' },
  /[oO]/ => { upper: 'O', lower: 'o' },
  /[pP]/ => { upper: 'P', lower: 'p' },
  /[qQ]/ => { upper: 'Q', lower: 'q' },
  /[rR]/ => { upper: 'R', lower: 'r' },
  /[sS]/ => { upper: 'S', lower: 's' },
  /[tT]/ => { upper: 'T', lower: 't' },
  /[uU]/ => { upper: 'U', lower: 'u' },
  /[vV]/ => { upper: 'V', lower: 'v' },
  /[wW]/ => { upper: 'W', lower: 'w' },
  /[xX]/ => { upper: 'X', lower: 'x' },
  /[yY]/ => { upper: 'Y', lower: 'y' },
  /[zZ]/ => { upper: 'Z', lower: 'z' }
}

# Needs work on last further exploration solution

puts word_cap('four score and seven')
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
