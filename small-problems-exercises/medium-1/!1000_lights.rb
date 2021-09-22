# TODO Further exploration

# Problem: You have a bank of switches before you, numbered from 1 to n. Each
# switch is connected to exactly one light that is initially off. You walk down
# the row of switches and toggle every one of them. You go back to the
# beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On
# the third pass, you go back again to the beginning and toggle switches 3, 6,
# 9, and so on. You repeat this process and keep going until you have been
# through n repetitions.
#
# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.
#
# Example with n = 5 lights:
#
#     round 1: every light is turned on
#     round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#     round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#     round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#     round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
#
# The result is that 2 lights are left on, lights 1 and 4. The return value is
# [1, 4].
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
# [1, 4, 9].
#
# Data Structure: Hash
#
# Algorithm:
# Initialize lights hash, default value is 'off'
# intialize step = 1
# until counter > n do
#   lights[n * counter] = toggle(SUBPROCESS)
#   counter += 1
# for each light, add to array if on

def toggle(lights, light)
  return 'off' if lights[light] == 'on'
  return 'on' if lights[light] == 'off'
end

def walk_thru(total, step, lights)
  counter = step
  until counter > total
    lights[counter] = toggle(lights, (counter))
    counter += step
  end
end

def why_is_this(total)
  lights = Hash.new('off')
  step = 1
  until step > total
    walk_thru(total, step, lights)
    step += 1
  end
  lights.keys.select { |light| light if lights[light] == 'on' }
end

p why_is_this(1)
p why_is_this(5)
p why_is_this(10)
p why_is_this(1000)
