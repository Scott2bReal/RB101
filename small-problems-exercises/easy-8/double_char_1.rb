=begin

Problem: Write a method that takes a string, and returns a new string in which
every character is doubled

Input: String
Output: String with every character doubled

Data Structure: Array

Algorithm:
  - Initialize final_array
  - Make array of characters
  - For each character in string
    - Add character to final_array twice
  - Return joined final_array
=end

def repeater(string)
  chars = string.chars
  final_array = []
  chars.each do |char|
    2.times { final_array << char }
  end
  final_array.join('')
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
