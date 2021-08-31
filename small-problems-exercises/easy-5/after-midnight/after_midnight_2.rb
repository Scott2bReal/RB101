MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time)
  return 0 if time == '24:00'
  hours, minutes = time.split(':').map(&:to_i)
  minutes + hours * 60
end

def before_midnight(time)
  return 0 if time == '00:00'
  hours, minutes = time.split(':').map(&:to_i)
  minutes += hours * 60
  MINUTES_PER_DAY - minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
