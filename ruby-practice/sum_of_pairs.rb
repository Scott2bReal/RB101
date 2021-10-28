=begin

Problem: Given a list of integers and a single sum value, return the first two
values (parse from the left please) in order of appearance that add up to form
the sum.

Negative numbers and duplicate numbers can and will appear.

NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements.
Be sure your code doesn't time out.

Examples:
  At bottom

Data Structure: Array

Brainstorm:
  Original algorithm is close but not exact.

    Problem: If focus + focus == sum then will return [focus, focus]
    Solution: Remove focus from when iterating?

    Problem: If complete pair appears earlier then will be disregarded
    Solution: save any pairs that add to sum, choose array with lowest second
    index

Algorithm:
  Init possible_pairs array, elements will be hashes with keys :pair and
  :indicies
  Init best_pair = nil
  For each num in array with index
    for each num in array with index
      unless idx2 == idx1 add hash to possible pairs
  Delete any pairs where idx1 > idx2


=end

# def sum_pairs(array, sum)
#   possible_pairs = []
#   best_pair = nil
#   array.each_with_index do |num1, idx1|
#     array.each_with_index do |num2, idx2|
#       next if idx2 <= idx1
#       pair = [num1]
#       pair << num2 if num1 + num2 == sum
#       possible_pairs << { pair: pair, indices: [idx1, idx2] } if pair.size > 1
#     end
#   end
#   return nil if possible_pairs.empty?
#   possible_pairs.delete_if { |pair| pair[:indices][0] > pair[:indices][1] }
#   possible_pairs.each do |pair|
#     if best_pair.nil?
#       best_pair = pair
#     elsif pair[:indices][1] < best_pair[:indices][1]
#       best_pair = pair
#     end
#   end
#   best_pair[:pair]
# end

p sum_pairs([11, 3, 7, 5],         10) == [3, 7]
#              ^--^      3 + 7 = 10

p sum_pairs([4, 3, 2, 3, 4],         6) == [4, 2]
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * entire pair is earlier, and therefore is the correct answer

p sum_pairs([0, 0, -2, 3], 2) == nil
#  there are no pairs of values that can be added to produce 2.

p sum_pairs([10, 5, 2, 3, 7, 5],         10) == [3, 7]
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * entire pair is earlier, and therefore is the correct answer
