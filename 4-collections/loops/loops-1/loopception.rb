loop do
  puts 'outer'

  loop do
    puts 'inner'
    break
  end
  break
end

puts 'outside all loops'
