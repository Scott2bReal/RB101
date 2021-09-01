# def cleanup(string)
#   chars = string.chars.map do |char|
#     char = ' ' if char.match?(/[^a-z]/)
#     char
#   end
#   chars.join.squeeze(' ')
# end

# Better solution from the book, using gsub instead of map

def cleanup(string)
  string.gsub(/[^a-z]/, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
