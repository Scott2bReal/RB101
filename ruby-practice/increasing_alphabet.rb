=begin

Write a method that takes an array of consecutive (increasing) letters as input
and that returns the missing letter in the array.

Input: Array of letters with one missing
Output: Missing letter

Data STructure: Array

Algorithm:
  - init counter = first letter ascii code
  - for each char in array
    - code = counter
    - if code of current letter doesnt match code
    - return code.chr
    - increment code

=end

def determine_missing_letter(letters)
  counter = letters[0].ord
  letters.each do |letter|
    code = letter.ord
    return counter.chr unless code == counter
    counter += 1
  end
end

p determine_missing_letter(['a', 'b', 'c', 'd', 'f']) == 'e'
p determine_missing_letter(['O', 'Q', 'R', 'S']) == 'P'
