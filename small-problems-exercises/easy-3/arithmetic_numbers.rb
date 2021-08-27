def add(num1, num2)
  "#{num1} + #{num2} = #{num1 + num2}"
end

def subtract(num1, num2)
  "#{num1} - #{num2} = #{num1 - num2}"
end

def multiply(num1, num2)
  "#{num1} * #{num2} = #{num1 * num2}"
end

def divide(num1, num2)
  "#{num1} / #{num2} = #{num1 / num2}"
end

def remainder(num1, num2)
  "#{num1} % #{num2} = #{num1 % num2}"
end

def power(num1, num2)
  "#{num1} ** #{num2} = #{num1**num2}"
end

def prompt(message)
  puts "==> #{message}"
end

prompt("Please enter the first number:")
number1 = gets.chomp.to_i
prompt("Please enter the second number:")
number2 = gets.chomp.to_i

puts add(number1, number2)
puts subtract(number1, number2)
puts multiply(number1, number2)
puts divide(number1, number2)
puts remainder(number1, number2)
puts power(number1, number2)
