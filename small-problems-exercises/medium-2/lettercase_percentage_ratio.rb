# Problem: In the easy exercises, we worked on a problem where we had to count
# the number of uppercase and lowercase characters, as well as characters that
# were neither of those two. Now we want to go one step further.
#
# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.
#
# You may assume that the string will always contain at least one character.
#
# Input: String
# Output: Hash containing entries for percentage of characters in string that
# are each lettercase
#
# Rules:
#   - String wont be empty
#   - Spaces count as characters
#
# Data Structure: Array, hash
#
# Algorithm:
#  - Init percentages hash
#  - Get total character count as float
#  - Get letter counts
#  - For each in letter counts
#     - Divide count by total, mult by 100, format to 1 space after decimal
#
UPPERCASE = /[A-Z]/
LOWERCASE = /[a-z]/

def letter_percentages(string)
  total_chars = string.size.to_f
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  letter_counts = letter_case_count(string)
  letter_counts.each do |letter_case, count|
    percentage = (count / total_chars) * 100
    percentages[letter_case] = format("%.1f", percentage).to_f
  end
  percentages
end

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

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
