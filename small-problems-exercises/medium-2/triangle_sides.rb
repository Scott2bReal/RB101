# Problem: A triangle is classified as follows:

#     equilateral All 3 sides are of equal length
#     isosceles 2 sides are of equal length, while the 3rd is different
#     scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have
# lengths greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
# :invalid depending on whether the triangle is equilateral, isosceles, scalene,
# or invalid.
#
# Input: 3 lengths of triangle sides
# Output: Type of triangle (symbol)
#
# Data Structure: hash
#
# Algorithm:
#   Iscoseles:
#     If two sides are equal
#       Is the sum of the two smallest sides > than the biggest?
#
def triangle(side1, side2, side3)
  triangle = [side1, side2, side3]
  return :invalid if triangle.any?(0)
  return :equilateral if equilateral?(triangle)
  return :isosceles if isosceles?(triangle)
  return :scalene if scalene?(triangle)
  :invalid
end

def equilateral?(triangle)
  return true if triangle.uniq.size == 1
  false
end

def isosceles?(triangle)
  if triangle.uniq.size == 2
    sorted = triangle.sort
    return true if (sorted[2] + sorted[1]) > sorted[0]
  end
  false
end

def scalene?(triangle)
  if triangle.uniq.size == 3
    sorted = triangle.sort
    return true if (sorted[2] + sorted[1]) > sorted[0]
  end
  false
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
