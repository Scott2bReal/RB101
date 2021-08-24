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

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('invalid_name')
  else
    break
  end
end

code_prompt("Hi #{name}!")

loop do # main loop
  loan_amount = ''
  loop do
    prompt('loan_amount')
