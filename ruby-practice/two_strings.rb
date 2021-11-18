=begin
Given two strings, write a method that returns true
if a portion of the str1 characters can be rearranged to match str2
otherwise return false

Input: Two string
Output: boolean

Data Structure: Array

Algorithm:
  Make arrays of chars of string1 and string2, sort both
  Run combos of string1 size of string2
    return true if any combo == string2
  return false if that doesn't find anything

=end

def scramble(string1, string2)
  sorted_string2 = string2.chars.sort
  string1.chars.sort.combination(string2.size) do |combo|
    return true if combo == sorted_string2
  end
  false
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
