=begin

Problem:
Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left of
the triangle, and the other end at the upper-right.

Input: Integer (number of rows)
Output: Triangle

Data Structure: nah

Algorithm:
  - Initialize variable spaces = input - 1
  - Iinitialize variable stars = 1
  - Until spaces < 0
    - print number of spaces equal to spaces, stars equal to stars
    - Increment stars
    - Decrement spaces

=end

CHARACTER = '*'

def triangle(rows)
  spaces = rows - 1
  filled = 1
  until spaces < 0
    puts "#{' ' * spaces}#{CHARACTER * filled}"
    spaces -= 1
    filled += 1
  end
end

triangle(5)
triangle(9)
