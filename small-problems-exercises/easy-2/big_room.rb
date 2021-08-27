SQR_METERS_TO_SQR_FEET = 10.7639

print 'Please enter the length of the room: '
length = gets.chomp.to_i

print 'Please enter the width of the room: '
width = gets.chomp.to_i

area_meters = length * width
area_feet = area_meters * SQR_METERS_TO_SQR_FEET

puts "The area of the room is #{area_meters} square meters \
(#{area_feet.round(2)} square feet)"
