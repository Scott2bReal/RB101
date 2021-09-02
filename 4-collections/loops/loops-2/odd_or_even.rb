count = 1

loop do
  case count.even?
  when true then puts "#{count} is even!"
  when false then puts "#{count} is odd!"
  end
  count += 1
  break if count > 5
end
