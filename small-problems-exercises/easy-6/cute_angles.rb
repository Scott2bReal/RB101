=begin

Problem: 
Write a method that takes a floating point number that represents an
angle between 0 and 360 degrees and returns a String that represents that angle
in degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Input: Number (float or integer)
Output: String representing an angle in Degrees, minutes, and seconds

Domain:

Degree has 60 minutes, minute has 60 seconds

Q's: Input verification?

Rules:
  Explicit:
    - Return a string
    - Use 2 digit numbers ith leading zeros when formatting minutes and seconds
    - Use degree symbol to represent degrees, single quote for minutes, double
      quote for seconds
  Implicit:
    - Degrees can be 0-3 digits

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Data structure: Hash
Algorithm:

  High Level:
  - SET degrees = {}
  - Convert angle to sexagesimal string
    - Make array of number before and number after decimal (strings)
    - Add first element to degrees hash ([:degrees])
    - Multiply 
  - Format string with symbols from rules, and values from degrees hash
  - Return final_angle

  Convert to sexagesimal:
  - Round input number to 2 places after decimal
  -
=end

DEGREES = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def to_degrees(number)
  degrees = {}
  angle = number.to_f.to_s.split('.')
  angle[0] = normalize(angle) unless (0..360).include?(angle[0].to_i)
  degrees[:degrees] = angle[0] + DEGREES
  degrees[:minutes] = minutes(angle)
  degrees[:seconds] = seconds(angle)
  degrees
end

def normalize(angle)
  angle[0].to_i.divmod(360)[1]
end

def minutes(angle)
  minutes = ".#{angle[1]}".to_f * MINUTES_PER_DEGREE
  minutes_array = minutes.to_s.split('.')
  "#{format('%02d', minutes_array[0])}'"
end

def seconds(angle)
  minutes = ".#{angle[1]}".to_f * MINUTES_PER_DEGREE
  minutes_array = minutes.to_s.split('.')
  seconds = ".#{minutes_array[1]}".to_f * SECONDS_PER_MINUTE
  seconds_array = seconds.to_s.split('.')
  "#{format('%02d', seconds_array[0])}\""
end

def dms(angle)
  degrees_hash = to_degrees(angle) # Returns degrees hash
  degrees = degrees_hash[:degrees]
  minutes = degrees_hash[:minutes]
  seconds = degrees_hash[:seconds]
  final_angle = "#{degrees}#{minutes}#{seconds}"
  final_angle
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
