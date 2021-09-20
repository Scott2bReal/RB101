=begin

TODO: Further exploration

Problem: Write a method that returns a list of all substrings of a string that
are palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be arranged in
the same sequence as the substrings appear in the string. Duplicate palindromes
should be included multiple times.

You may (and should) use the substrings method you wrote in the previous
exercise.

For the purposes of this exercise, you should consider all characters and pay
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
"Abc-bA" are. In addition, assume that single characters are not palindromes.

Input: String
Output: Array containing all palindromic substrings

Data Structure: Array

Algorithm:
  - Send string to method from last exersize (all_substrings)
  - Select only palindromic elements from returned array

=end

def leading_substrings(string)
  final_array = []
  growing_array = []
  string.chars.each do |char|
    growing_array << char
    final_array << growing_array.join('')
  end
  final_array
end

def substrings(string)
  final_array = []
  string_array = string.chars
  until string_array.empty?
    final_array << leading_substrings(string_array.join(''))
    string_array.shift
  end
  final_array.flatten
end

def palindromes(string)
  sub_strings = substrings(string)
  sub_strings.select do |sub_string|
    sub_string == sub_string.reverse && sub_string.size > 1
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
