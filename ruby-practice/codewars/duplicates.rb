=begin

Write a function that will return the count of distinct case-insensitive
alphabetic characters and numeric digits that occur more than once in the input
string. The input string can be assumed to contain only alphabets (both
uppercase and lowercase) and numeric digits.

Input: String containing A-Za-z0-9
Output: Number of chars which appear more than once in string (case insensitive)

Data Structure: Array

Algorithm
  Select

=end

def duplicate_count(text)
  duplicates = text.chars.select do |char|
    text.count(char.downcase) > 1
  end
end
