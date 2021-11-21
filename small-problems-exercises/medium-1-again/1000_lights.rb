=begin

You have a bank of switches before you, numbered from 1 to n. Each switch is
connected to exactly one light that is initially off. You walk down the row of
switches and toggle every one of them. You go back to the beginning, and on this
second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go
back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat
this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and
returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1,
4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
[1, 4, 9].

Input: Integer, the total number of switches
Output: Array that identifies which lights are on after n repetitions

Data Structure: Hash, Array

Algorithm:
  Make new hash with keys 1 thru n, default value of "off"
  Init counter = 1
  until counter > n
    For each key in lights.keys
      if key % counter == 0 then toggle counter
=end

def toggle(light)
  light == 'on' ? 'off' : 'on'
end

def loop_thru(lights, counter)
  lights.keys.each do |key|
    lights[key] = toggle(lights[key]) if (key % counter).zero?
  end

  lights
end

def init_lights_hash(num_of_lights)
  lights = {}
  1.upto(num_of_lights) { |num| lights[num] = 'off' }
  lights
end

def lights_left_on(num_of_lights)
  lights = init_lights_hash(num_of_lights)
  counter = 1

  until counter > num_of_lights
    lights = loop_thru(lights, counter)
    counter += 1
  end

  lights.keys.select { |key| lights[key] == 'on' }
end

p lights_left_on(5) == [1, 4]
p lights_left_on(10) == [1, 4, 9]
p lights_left_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
