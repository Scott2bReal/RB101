CURRENT_YEAR = Time.new.year

puts 'Please enter your current age'
current_age = gets.chomp

print 'At what age would you like to retire? '
retirement_age = gets.chomp

years_left = retirement_age.to_i - current_age.to_i

retirement_year = CURRENT_YEAR + years_left

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}"
puts "You only have #{years_left} years of work to go!"
