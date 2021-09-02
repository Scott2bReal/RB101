numbers = []
counter = 0

while counter < 6
  numbers << rand(0..99)
  counter += 1
  puts numbers if counter == 5
end
