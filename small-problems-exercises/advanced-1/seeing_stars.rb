# Problem: Write a method that displays an 8-pointed star in an nxn grid, where
# n is an odd integer that is supplied as an argument to the method. The
# smallest such star you need to handle is a 7x7 grid.
#
# Input: Odd integer > 7
# Output: 8 pointed star on an n x n grid
#
# Rules:
#   - Smallest argument will be 7
#   - Grid is a square
#
# Data Structure: Array?
#
# Algorithm:
#   Get middle line ready
#     - Middle line is n number of *
#
#   Make top triangle
#     # of rows = intdiv n / 2
#     Outer spaces starts at 0
#     Inner spaces starts at number of rows / 2
#
#
#   Print middle line
#   Flip top triangle
STAR = '*'
SPACE = ' '

def star(size)
  draw_top_triangle(size)
  draw_middle_line(size)
  draw_bottom_triangle(size)
end

def draw_middle_line(size)
  middle_line = []
  size.times { middle_line.push(STAR) }
  puts middle_line.join
end

def draw_top_triangle(size)
  number_of_rows = size / 2
  outer_spaces = 0
  inner_spaces = (number_of_rows / 2) + 1
  until inner_spaces < 0
    row = []
    outer_spaces.times { row.push(SPACE) }
    row.push(STAR)
    inner_spaces.times { row.push(SPACE) }
    row.push(STAR)
    inner_spaces.times { row.push(SPACE) }
    row.push(STAR)
    outer_spaces.times { row.push(SPACE) }
    puts row.join
    outer_spaces += 1
    inner_spaces -= 1
  end
end

def draw_bottom_triangle(size)
  number_of_rows = size / 2
  inner_spaces = 0
  outer_spaces = (number_of_rows / 2) + 1
  until outer_spaces < 0
    row = []
    outer_spaces.times { row.push(SPACE) }
    row.push(STAR)
    inner_spaces.times { row.push(SPACE) }
    row.push(STAR)
    inner_spaces.times { row.push(SPACE) }
    row.push(STAR)
    outer_spaces.times { row.push(SPACE) }
    puts row.join
    outer_spaces -= 1
    inner_spaces += 1
  end
end

star(11)
# star(9)
