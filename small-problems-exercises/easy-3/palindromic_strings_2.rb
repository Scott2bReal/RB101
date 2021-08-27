require 'pry'

# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters. If you
# wish, you may simplify things by calling the palindrome? method you wrote in
# the previous exercise.
#
# Split the string into characters
# Initialize testing array
# Iterate over characters array
# If character is alphanumeric, add to testing array
# Pass testing array to palindrome?()

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  test_array = []
  string.split('').each do |char|
    if ('a'..'z').include?(char.downcase) || (0..9).include?(char)
      test_array.push(char.downcase)
    end
  end

  palindrome?(test_array)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

# Solution from the Book (better)

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end
