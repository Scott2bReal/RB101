# Problem: Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method. You
# may assume that the argument will always be an odd integer.
#
# Input: Odd integer size
# Output: Diamond in a size x size grid
#
# Data Structure: Array
#
# Algorithm:
# Print empty line
# if size = 1 then print one star
# else
# Until stars > size
# size times print (SUBPROCESS) line
#   Draw line algorithm
#   gets stars and size
#   line = ''
#   size - stars = spaces
#   spaces.times add space to line string
#   stars.times add star to line string
#   spaces.times add space to line string
# stars += 2
# Until stars < 1
# same but -= 2
#
def diamond(size)
  puts "\n"
  stars = 1
  if size == 1
    puts '*'
  else
    until stars == size
      puts draw_line(size, stars)
      stars += 2
    end
    until stars < 1
      puts draw_line(size, stars)
      stars -= 2
    end
  end
end

def draw_line(size, stars)
  line = ''
  spaces = size - stars
  (spaces / 2).times { line << ' ' }
  stars.times { line << '*' }
  (spaces / 2).times { line << ' ' }
  line
end

diamond(1)
diamond(3)
diamond(9)
