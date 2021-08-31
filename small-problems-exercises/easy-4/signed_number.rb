DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.split('').map { |digit| DIGITS[digit] }
  digits.reverse!.map { |digit| digit * (10**digits.find_index(digit)) }.sum
end

def string_to_signed_integer(string)
  if string.start_with?('+', '-')
    sign = string.split('').shift
    string[0] = ''
  end

  final = string_to_integer

  if sign == '-'
    final - final * 2
  else
    final
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
