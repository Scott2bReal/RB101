# Problem: Write a method that returns the number of Friday the 13ths in the
# year given by an argument. You may assume that the year is greater than 1752
# (when the United Kingdom adopted the modern Gregorian Calendar) and that it
# will remain in use for the foreseeable future.
#
# Input: Integer (year)
# Output: Number of friday the 13ths
#
# Data Structure: Date object
#
# Algorithm:
#   Initialize bad_fridays = 0
#   year = Date.new(year)
#   init current_year
#   until year = year + 1
#     if friday the 13th increment bad_fridays
#   return bad_fridays
#
require 'date'

# Original Solution: Checks every day of the year. Book solution is more
# efficient
#
# def friday_13th(year)
#   bad_fridays = 0
#   date = Date.new(year)
#   current_year = date.year
#   until date.year == current_year + 1
#     bad_fridays += 1 if date.friday? && date.mday == 13
#     date = date.next
#   end
#   bad_fridays
# end

# Book Solution: Better because just checks the 13th of every month for friday
# status

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
