=begin

Problem:
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which
every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.

Input: String
Output: New string with capitalization staggered

Data Structure: Array

Algorithm:
  - Split string into characters
  - For each character in string
    - If index is even
      - upcase
    - if index is odd
      - downcase

Original Solution:

def staggered_case(string)
  chars = string.chars
  final = chars.map do |char|
    if chars.index(char).even?
      char.upcase
    elsif chars.index(char).odd?
      char.downcase
    end
  end
  final.join
end

=end

# Further exploration:

def staggered_case(string, keyword='first')
  chars = string.chars
  final = chars.map do |char|
    if chars.index(char).even?
      if keyword == 'first'
        char.upcase
      else
        char.downcase
      end
    elsif chars.index(char).odd?
      if keyword == 'first'
        char.downcase
      else
        char.upcase
      end
    end
  end
  final.join
end

puts staggered_case('I Love Launch School!', 'second')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers', 'second')
