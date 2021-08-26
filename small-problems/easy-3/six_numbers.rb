def prompt(message)
  print "==> #{message}"
end

def in_array?(array, num)
  match = array.select { |item| item == num }
  !(match.length == 0)
end

def final_message(num, array)
  if in_array?(array, num)
    puts "The number #{num} appears in #{array}"
  else
    puts "The number #{num} does not appear in #{array}"
  end
end

numbers = []

prompt('Enter the first number: ')
number1 = gets.chomp
numbers.push(number1)

prompt('Enter the second number: ')
number2 = gets.chomp
numbers.push(number2)

prompt('Enter the third number: ')
number3 = gets.chomp
numbers.push(number3)

prompt('Enter the fourth number: ')
number4 = gets.chomp
numbers.push(number4)

prompt('Enter the fifth number: ')
number5 = gets.chomp
numbers.push(number5)

prompt('Enter the final number: ')
final_number = gets.chomp

final_message(final_number, numbers)
