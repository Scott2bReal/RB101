=begin

Your task is to sort a given string. Each word in the string will contain a
single number. This number is the position the word should have in the result.

Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

If the input string is empty, return an empty string. The words in the input
String will only contain valid consecutive numbers.

Input: String with space-separated words, each containing one number
Output: Sentence ordered with words in numerical order

Data Structure: Array

Algorithm:
  if input is empty return empty string
  init new_arr = []
  Split string into words
  for each word
    for each char
      if char is a number (subprocess)
        new_arr[number + 1] = word
  join and return new_n

=end

def a_number?(chare)
  char.to_i.to_s == char
end

def order(sentence)
  return sentence if sentence.empty?
  new_arr = []
  words = sentence.split(' ')
  words.each do |word|
    word.chars.each do |char|
      if a_number?(char)
        new_arr[char.to_i - 1] = word
      end
    end
  end
  new_arr.join(' ')
end

p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
p order("") == ""
