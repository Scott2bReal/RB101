def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

initial_bill = ''
loop do
  print 'Please enter the bill amount: '
  initial_bill = gets.chomp
  if valid_number?(initial_bill)
    initial_bill = initial_bill.to_f
    break
  end
  puts "Sorry, that doesn't look like a valid bill amount"
end

tip_rate = ''
loop do
  print 'Please enter the tip amount: '
  tip_rate = gets.chomp
  if valid_number?(tip_rate)
    tip_rate = tip_rate.to_f / 100
    break
  end
  puts "Sorry, that doesn't look like a valid tip rate"
end

tip_amount = initial_bill * tip_rate
total_bill = initial_bill + tip_amount.round(2)

puts "The tip is #{tip_amount}"
puts "The total is #{total_bill}"
