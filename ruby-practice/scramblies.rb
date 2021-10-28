=begin

Complete the function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be
included.

Performance needs to be considered

Input strings s1 and s2 are null terminated.
Output: boolean

DataStructure: Array

Algorithm:
  Init counts1 and counts 2 = {}, {}
  for each letter in string1.chars
    add letter as key, count as letter.count
  Same for string 2
  For each in count1
    If key not present in count 2 return false
    return false unless count1[k] == count2[k]
=end

# TOO SLOW
# def scramble(string1, string2)
#   string1.chars.sort.combination(string2.size).each do |combo|
#     return true if combo.join == string2.chars.sort.join
#   end
#   false
# end
#
def scramble(string1, string2)
  counts1, counts2 = {}, {}
  string1.chars.each { |letter| counts1[letter] = string1.count(letter) }
  string2.chars.each { |letter| counts2[letter] = string2.count(letter) }
  counts2.each do |k, _|
    return false unless counts1.keys.include?(k)
    return false unless counts1[k] >= counts2[k]
  end
  true
end

p scramble('rkqodlw', 'world') == true

p scramble('cedewaraaossoqqyt', 'codewars') == true

p scramble('katas', 'steak') == false

p scramble('rkqodlw', 'world') == true

p scramble('cedewaraaossoqqyt', 'codewars') == true

p scramble('katas', 'steak') == false

p scramble('scriptjava', 'javascript') == true

p scramble('scriptingjava', 'javascript') == true
