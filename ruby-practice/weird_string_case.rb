=begin

Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
returns the same string with all even indexed characters in each word upper
cased, and all odd indexed characters in each word lower cased. The indexing
just explained is zero based, so the zero-ith index is even, therefore that
character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces('
'). Spaces will only be present if there are multiple words. Words will be
separated by a single space(' ').

Data Structure: Array

Algorithm:
  Split string into words
  for each word in words
    split word into chars (with index)
      for each char, if idx.even? char = char.upcase
      downcase if idx.odd?
  join and return words

=end

def weirdcase(string)
  words = string.split.map! do |word|
    chars = word.chars.map!.with_index do |char, idx|
      if idx.even?
        char.upcase
      else
        char.downcase
      end
    end
    chars.join('')
  end
  words.join(' ')
end

p weirdcase( "String" ) == "StRiNg"

p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
