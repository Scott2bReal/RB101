=begin

Problem:
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

Input: String
Output: New string with capitalization staggered

Data Structure: Array

Algorithm:
  - Split string into array of chars
  - Initialize toggle variable
  - For each char
    - If char a letter
      - If toggle
        - upcase
        - set toggle false
      - else
        - downcase
        - set toggle true
    - else
      - char
  - join and return chars array

=end

def staggered_case(string)
  chars = string.chars
  toggle = true
  final = chars.map do |char|
    if char.match?(/[A-Za-z]/)
      if toggle
        toggle = false
        char.upcase
      else
        toggle = true
        char.downcase
      end
    else
      char
    end
  end
  final.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
