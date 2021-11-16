=begin

Have a look at the following numbers.

 n | score
---+-------
 1 |  50
 2 |  150
 3 |  300
 4 |  500
 5 |  750

Can you find a pattern in it? If so, then write a function get_score(n) which
returns the score for any positive number n:

Input: Positive number
Output: Resulting "score", found by applying the pattern (+50 more every time)

Data Structure: Integers

Algorithm:
  init total = 0
  loop
    add num * 50 to total
    decrement num by 1
    return total when num is 0
=end

def get_score(num)
  total = 0
  loop do
    total += num * 50
    num -= 1
    return total if num == 0
  end
end

p get_score(1) == 50
p get_score(2) #== 150
p get_score(3) #== 300
p get_score(4) #== 500
p get_score(5) #== 750
