def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

puts "Welcome to the loan calculator!"

amount = ''
loop do
  print "Please enter the loan amount: $"
  amount = gets.chomp
  break if valid_number?(amount)
  puts "Sorry, that doesn't seem like a valid dollar amount.\nPlease try again"\
       " (you do not need to type the $ sign)"
end

apr = ''
loop do
  print "Please enter the APR: "
  apr = gets.chomp
  break if valid_number?(apr)
  puts "Please enter APR as a percentage value (omit the % sign)"
end

interest = (apr.to_f / 100) / 12

years = ''
loop do
  print "What is the loan duration?\nYears: "
  years = gets.chomp
  break if valid_number?(years)
  puts "Please enter a valid number"
end

months = ''
loop do
  print "Months: "
  months = gets.chomp
  break if valid_number?(months)
  puts "Please enter a valid number."
end

duration = (years.to_i * 12) + months.to_i

monthly_payment = amount.to_f * (interest / (1 - (1 + interest)**(-duration)))

puts "The monthly payment will be $#{monthly_payment.round(2)}"
