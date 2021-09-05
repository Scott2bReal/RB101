=begin

Problem:
Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the number of characters in the string that are
lowercase letters, one the number of characters that are uppercase letters, and
one the number of characters that are neither.

Input: String
Output: Hash with keys lowercase, uppercase, other, containing counts of
        characters which fall into each category

Rules:
  Explicit: spaces count

Data Structure: Array

Algorithm:
  - Initialize constant UPPERCASE
  - Initialize constant LOWERCASE
  - Make array of string containing characters
  - For each character in chars array
    - Add to corresponding hash key
  - Return hash

=end

UPPERCASE = /[A-Z]/
LOWERCASE = /[a-z]/

def letter_case_count(string)
  character_counts = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if char.match?(LOWERCASE)
      character_counts[:lowercase] += 1
    elsif char.match?(UPPERCASE)
      character_counts[:uppercase] += 1
    else
      character_counts[:neither] += 1
    end
  end
  character_counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
