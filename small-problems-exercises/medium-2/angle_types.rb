# Problem: A triangle is classified as follows:

#    right One angle of the triangle is a right angle (90 degrees)
#    acute All 3 angles of the triangle are less than 90 degrees
#    obtuse One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and
# all angles must be greater than 0: if either of these conditions is not
# satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the
# triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating
# point errors. You may also assume that the arguments are specified in degrees.
#
# Input: 3 angles of a triangle (degrees)
# Output: symbol, class of triangle based on angle type
#
# Data Structure: Array
#
# Algorithm:
#   Combine angles into array
#   If sum of array isnt 180 or if array includes 0 return false
#   If any in array > 90 return obtuse
#   If all in array < 90 return acute
#   If any in array == 90 return right

def triangle(angle1, angle2, angle3)
  triangle = [angle1, angle2, angle3]
  return :invalid if triangle.sum != 180 || triangle.any?(0)
  return :acute if acute?(triangle)
  return :obtuse if obtuse?(triangle)
  return :right if right?(triangle)
  :invalid
end

def right?(triangle)
  return true if triangle.any?(90)
  false
end

def acute?(triangle)
  return true if triangle.all? { |angle| angle < 90 }
  false
end

def obtuse?(triangle)
  return true if triangle.any? { |angle| angle > 90 }
  false
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
