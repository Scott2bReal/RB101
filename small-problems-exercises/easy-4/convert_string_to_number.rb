def string_to_integer(string)
  digits = string.split('').map { |digit| inspector(digit) }
  digits.each_with_index { |idx, digit| digit * (10**(idx + 1)) }.sum
end

def inspector(number)
  case number
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  end
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
