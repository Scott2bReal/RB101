=begin
Given two strings, write a method that returns true
if a portion of the str1 characters can be rearranged to match str2
otherwise return false


Input: Two string
Output: boolean

=end

def scramble(string1, string2)
  string1.chars.sort.combination(string2.size) do |combo|
    return true if combo == string2.chars.sort
  end
  false
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
