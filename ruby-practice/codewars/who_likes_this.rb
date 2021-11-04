=begin

Probem: Implement the function which takes an array containing the names of
people that like an item. It must return the display text as shown in the
examples:

Examples:
[]                                -->  "no one likes this"
["Peter"]                         -->  "Peter likes this"
["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

Note: For 4 or more names, the number in "and 2 others" simply increases.

Input: Array of names (can be empty)
Output: String

Data Structure: Array, string

Brainstorm:
  Probably a conditional statement

Algorithm:
  If names array empty then print 'no one likes this'
  elsif names array size == 1 then print '#{name} likes this'
  elsif names array size == 2 then print '#{name} and #{name} likes this'
  elsif names array size == 3 then print (you know)
  else print first two names then number of remaining (subprocess)
    init first_two names = []
    2.times
      shift name to first_two
    join first_two (', '), set to variable
    return interpolated string with first two, and, size, like this

=end

def likes(names)
  case names.size
  when 0 then return 'no one likes this'
  when 1 then return "#{names[0]} likes this"
  when 2 then return "#{names[0]} and #{names[1]} like this"
  when 3 then return "#{names[0]}, #{names[1]}, and #{names[2]} like this"
  end

  first_two = []
  2.times do
    first_two << names.shift
  end
  "#{first_two[0]}, #{first_two[1]} and #{names.size} other like this"
end
