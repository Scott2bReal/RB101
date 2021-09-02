numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp
  numbers << input
  break if numbers.size == 5
end
puts numbers
