# Given a non-empty string check if it can be constructed by taking a substring of it
# and appending multiple copies of the substring together. You may assume the given string consists of
# lowercase English letters only.
#
# Input: String
# Output: boolean, whether or not the string can be constructed by taking a
# substring and appending multiple copies
#
# Data structure: Array
#
# Algorithm:
#   init counter
#   loop
#     take slice of size counter, save as slice
#     size of input divided by counter times do
#       slice += slice
#       return true if slice == input
#       increment counter

def repeated_substring_pattern(string)
  counter = 0
  until counter > string.size
    slice = string.chars.slice(counter)
    p slice
    (string.size / counter).times do
      slice += slice
    end
    return true if slice == string
    counter += 1
  end
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
