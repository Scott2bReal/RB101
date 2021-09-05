=begin

Problem:
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be
unchanged.

You may not use String#swapcase; write your own version of this method.

Input: String
Output: new string with character cases swapped

Data Structure: Array

Algorithm:
  - Initialize constants LOWER, UPPER
  - Initialize new array final
  - Split string into array of words
  - For each word
    - Split into array of chars
    - For each char
      - If LOWER includes char, char.upcase
      - if UPPER includes char, char.downcase
      - Else char
    - Join chars array
    - Add joined chars array to final array
  - Join array final delimited by space
  - Return final array

Original Solution

LOWER = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPER = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def swapcase(string)
  final = []
  string.split.each do |word|
    fixed_word = word.chars.map do |char|
      if LOWER.include?(char)
        char.upcase
      elsif UPPER.include?(char)
        char.downcase
      else
        char
      end
    end
    final << fixed_word.join
  end
  final.join(' ')
end

=end

# Book solution

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
