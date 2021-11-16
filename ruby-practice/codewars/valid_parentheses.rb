=begin

Write a function that takes a string of parentheses, and determines if the order
of the parentheses is valid. The function should return true if the string is
valid, and false if it's invalid.

Along with opening (() and closing ()) parenthesis, input may contain any valid
ASCII characters. Furthermore, the input string may be empty and/or not contain
any parentheses at all. Do not treat other forms of brackets as parentheses
(e.g. [], {}, <>).

Input: String which may contain parentheses
Output: boolean, depending on if the parens are valid

Data Structure: Array?

Algorithm:
  If count of ( doesn't equal count of ) return false
  Scan string for ( and ), make array
  init balance = 0
  iterate thru parens array, +1 balance for ( and -1 balance for )

=end

def valid_parentheses(string)
  parens = string.scan(/[()]/)
  balance = 0
  parens.each do |paren|
    return false if balance == 0 && paren == ")"
    balance += 1 if paren == "("
    balance -= 1 if paren == ")"
  end
  balance == 0
end

p valid_parentheses(" (") == false
p valid_parentheses("  (") == false
p valid_parentheses(")test") == false
p valid_parentheses("") == true
p valid_parentheses("hi())(") == false
p valid_parentheses("hi(hi)()") == true
p valid_parentheses("(())") == true
p valid_parentheses("(())((()())())") == true
