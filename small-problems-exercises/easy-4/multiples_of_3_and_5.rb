def multisum(num)
  (1..num).select { |item| item % 3 == 0 || item % 5 == 0 }.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
