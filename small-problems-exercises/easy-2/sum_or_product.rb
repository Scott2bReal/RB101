def positive_integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_operation?(str)
  str == 's' || str == 'p'
end

# def sum(num)
#   return num if num <= 1
#   num + sum(num - 1)
# end
# 
# def product(num)
#   return num if num <= 1
#   num * product(num - 1)
# end

def sum(num)
  (1..num).inject(:+)
end

def product(num)
  (1..num).inject(:*)
end

user_integer = ''
loop do
  puts "Please enter an integer greater than 0"
  user_integer = gets.chomp
  break if positive_integer?(user_integer)
  puts "Sorry, that doesn't seem right."
end

operation = ''
loop do
  puts "Enter 's' to compute sum, 'p' to compute product"
  operation = gets.chomp
  break if valid_operation?(operation)
  puts "Please enter one of the two options"
end

case operation
when 's'
  answer = sum(user_integer.to_i)
  puts "The sum of integers from 1 to #{user_integer} is #{answer}."
when 'p'
  answer = product(user_integer.to_i)
  puts "The product of integers from 1 to #{user_integer} is #{answer}."
end
