# Problem: Create a method that takes 2 arguments, an array and a hash. The
# array will contain 2 or more elements that, when combined with adjoining
# spaces, will produce a person's name. The hash will contain two keys, :title
# and :occupation, and the appropriate values. Your method should return a
# greeting that uses the person's full name, and mentions the person's title and
# occupation.
#
# Input: Array and Hash
# Output: String greeting containing all data supplied
#
# Data Structure: String
#
# Algorithm:
#   - Initialize variable name
#   - For each element in name array
#     - Add to name string
#   - Interpolate all the data into a string

def greetings(name_array, job_hash)
  name = name_array.join(' ')
  job = job_hash.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{job} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: "Plumber" })
