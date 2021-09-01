# Problem
# Write a method that will take a short line of text, and print it within a box.

# Input: a short line of text
# Output: the line of text, within a box

# Requirement: the box is a given style
# If a string is empty, there is still a box
# Corners are plus signs, sides are pipes, top/bottom are dashes

# Mental Model:
# take text, put it in a box

# Data Structure: stringzzz

# Algorithm
# initialize total width = length of string + BORDER_WIDTH
# initialize BORDER_WIDTH = 2
# Draw top line, of width str + 4
#   ljust plus, padding dashes, rjust plus, padding dashes
# Draw 2nd line, same width, pipes and spaces
#   ljust pipe, rjust pipe
# Draw 3rd line, same width, centered string, also pipes
#   ljust pipe, string, rjust pipe
# 4th line, same as 2nd
# 5th line, same as 1st

# Code (With Intent)

BORDER_WIDTH = 2
CORNER_SYM = '+'
HORIZONTAL_BDR = '-'
VERTICAL_BDR = '|'

# Original Solution
# def draw_outer_line(total_width)
#   print CORNER_SYM.ljust(total_width / 2, HORIZONTAL_BDR)
#   puts CORNER_SYM.rjust(total_width / 2, HORIZONTAL_BDR)
# end
#
# def draw_padding_line(total_width)
#   print VERTICAL_BDR.ljust(total_width / 2)
#   puts VERTICAL_BDR.rjust(total_width / 2)
# end
#
# def draw_string_line(string)
#   print VERTICAL_BDR.ljust(BORDER_WIDTH)
#   print string
#   puts VERTICAL_BDR.rjust(BORDER_WIDTH)
# end
#
# def print_in_box(string)
#   total_width = string.length + (BORDER_WIDTH * 2)
#   draw_outer_line(total_width)
#   draw_padding_line(total_width)
#   draw_string_line(string)
#   draw_padding_line(total_width)
#   draw_outer_line(total_width)
# end
#
# print_in_box(gets.chomp)

def draw_outer_line(string)
  puts "#{CORNER_SYM}#{HORIZONTAL_BDR * (string.length + 2)}#{CORNER_SYM}"
end

def draw_padding_line(string)
  puts "#{VERTICAL_BDR}#{' ' * (string.length + 2)}#{VERTICAL_BDR}"
end

def draw_string_line(string)
  puts "#{VERTICAL_BDR} #{string} #{VERTICAL_BDR}"
end

def print_in_box(string)
  draw_outer_line(string)
  draw_padding_line(string)
  draw_string_line(string)
  draw_padding_line(string)
  draw_outer_line(string)
end

print_in_box(gets.chomp)
