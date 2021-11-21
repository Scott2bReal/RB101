=begin

Complete the method/function so that it converts dash/underscore delimited words
into camel casing. The first word within the output should be capitalized only
if the original word was capitalized (known as Upper Camel Case, also often
referred to as Pascal case).

Input: String separated by '-' or '_'
Output: String in camelCase

Data Structure: Array

Algorithm:
  Split string into words array, delim '-' or '_'
  map words (with index), for each word
    if idx is 0, pass word to fix_first_word
    else return word.capitalize
  join('') resulting array

=end

def fix_first_word(word)
  return word.capitalize if word[0].match?(/[A-Z]/)
  word.downcase
end

def to_camel_case(string)
  words = string.split(/[-_]/)
  camel_cased = words.map.with_index do |word, idx|
    idx == 0 ? fix_first_word(word) : word.capitalize
  end
  camel_cased.join('')
end

p to_camel_case('') == ''
p to_camel_case('the_stealth_warrior') == 'theStealthWarrior'
p to_camel_case('The-Stealth-Warrior') == 'TheStealthWarrior'
