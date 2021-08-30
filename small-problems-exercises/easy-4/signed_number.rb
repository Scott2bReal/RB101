DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.split('').map { |digit| DIGITS[digit] }
  digits.reverse!.map { |digit| digit * (10**digits.find_index(digit)) }.sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
