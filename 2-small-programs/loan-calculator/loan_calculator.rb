def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

puts "Welcome to the loan calculator!"

loop do
  print "Please enter the loan amount: $"
  loan_amount = gets.chomp
  break if valid_number?(loan_amount)
  puts "Sorry, that doesn't seem like a valid dollar amount.\nPlease try again"\
      " (you do not need to type the $ sign)"
end

loop do
  print "Please enter the APR: %"
  apr = gets.chomp
  break if valid_number?(apr)
end
