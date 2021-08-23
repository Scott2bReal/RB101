# Get the loan amount, APR, and loan duration from user
# Enter those values into the formula
# Print result

require 'yaml'
MESSAGES = YAML.load_file('messages.yml')
LANGUAGE = 'en'

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def code_prompt(string)
  puts "=> #{string}"
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

code_prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  code_prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('operator_error')
    end
  end

  code_prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()

           end
  code_prompt("The result is #{result}")

  prompt('exit_prompt')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('exit_message')
