=begin

Where's my parent?

6 kyu

Mothers arranged a dance party for the children in school. At that party, there
are only mothers and their children. All are having great fun on the dance floor
when suddenly all the lights went out. It's a dark night and no one can see each
other. But you were flying nearby and you can see in the dark and have ability
to teleport people anywhere you want.

Legend:

-Uppercase letters stands for mothers, lowercase stand for their children, i.e.
"A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:

Place all people in alphabetical order where Mothers are followed by their
children, i.e. "aAbaBb" => "AaaBbb".

https://www.codewars.com/kata/58539230879867a8cd00011c/train/ruby

Input: String containing only letters. Uppercase letters are unique
Output: String sorted where uppercase letters come first, alphabetical by letter

Data Structure: Hash, Array

Algorithm:
  - Split string into chars
  - group chars by letter
  - For each array in values (map)
    - sort
  - Flatten and join values

=end

def find_children(string)
  string.chars.group_by(&:downcase).values.map(&:sort).sort_by { |arr| arr[0] }.flatten.join('')
end

p find_children("abBA") == "AaBb"

p find_children("AaaaaZazzz") == "AaaaaaZzzz"

p find_children("CbcBcbaA") == "AaBbbCcc"

p find_children("xXfuUuuF") == "FfUuuuXx"

p find_children("") == ""
