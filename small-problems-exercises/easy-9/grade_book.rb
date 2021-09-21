# Problem: Write a method that determines the mean (average) of the three scores
# passed to it, and returns the letter value associated with that grade.
#
# Numerical Score Letter 	Grade
# 90 <= score <= 100 	'A'
# 80 <= score < 90 	'B'
# 70 <= score < 80 	'C'
# 60 <= score < 70 	'D'
# 0 <= score < 60 	'F'
#
# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.
#
# Input: three scores
# Output: Average letter grade
#
# Data Structure: Array
#
# Algorithm:
# Initialize GRADES constant
# Make array of all grade arguments
# Save average as variable
# return letter in constant corresponding to average score
#
GRADES = {
  'A' => (90..100),
  'B' => (80...90),
  'C' => (70...80),
  'D' => (60...70),
  'F' => (0...60)
}

def get_grade(grade1, grade2, grade3)
  grades = [grade1, grade2, grade3]
  average = grades.sum / grades.size
  GRADES.each { |grade, range| return grade if range.include?(average) }
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
