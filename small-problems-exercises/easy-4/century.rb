def century(year)
  cent = (year.to_f / 100).ceil.to_i.to_s
  if cent.end_with?('10', '11', '12', '13', '14', '15', '16', '17', '18', '19')
    "#{cent}th"
  elsif cent.end_with?('1')
    "#{cent}st"
  elsif cent.end_with?('2')
    "#{cent}nd"
  elsif cent.end_with?('3')
    "#{cent}rd"
  else
    "#{cent}th"
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
