# Problem: Write a method which takes a grocery list (array) of fruits with
# quantities and converts it into an array of the correct number of each fruit.
#
# Input: Array
# Output: Array
#
# Data Structure: Array
#
# Algorithm
# initialize final_list
# For each array in list
#  push first element in array to final list second element amount of times
#
def buy_fruit(list)
  final_list = []
  list.each do |fruit|
    fruit[1].times { final_list.push(fruit[0]) }
  end
  final_list
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
