DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  int.digits.reverse.map! { |digit| DIGITS[digit] }.join
end

def signed_integer_to_string(int)
  if int > 0
    integer_to_string(int).prepend('+')
  elsif int < 0
    int = integer_to_string((int - int * 2))
    int.prepend('-')
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
