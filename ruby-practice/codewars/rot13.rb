=begin

ROT13 is a simple letter substitution cipher that replaces a letter with the
letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar
cipher.

Create a function that takes a string and returns the string ciphered with
Rot13. If there are numbers or special characters included in the string, they
should be returned as they are. Only letters from the latin/english alphabet
should be shifted, like in the original Rot13 "implementation".

Input: String
Output: String encrpyted with ROT13

Data Struture: Array

Rules:
  Case matters
  Same string?

Algorithm:
  init deciphered word array
  for each char of word
    if word is a letter (upcase or downcase)
      pass to convert method, add to deciphered word array
    else
      add to deciphered word array
  join and return deciphered word array

  change_char algorithm:
    init code = char ascii code
    if code is between 97..122
      add 13 to code
      if code is now > 122, subtract 26
    else
      same as above but for range 65..90

=end

def change_char(char)
  code = char.ord
  if (97..122).include?(char.ord)
    code += 13
    code -= 26 if code > 122
  else
    code += 13
    code -= 26 if code > 90
  end
  code.chr
end

def rot13(string)
  word = []
  string.each_char do |char|
    char.downcase.match?(/[a-z]/) ? word << change_char(char) : word << char
  end
  word.join('')
end

p rot13('grfg') == 'test'
p rot13('Grfg') == 'Test'
