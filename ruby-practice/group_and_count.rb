=begin

Your goal is to write the group_and_count method, which should receive an array
as a unique parameter and return a hash. Empty or nil input must return nil
instead of a hash. This hash returned must contain as keys the unique values of
the array, and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}

The following methods were disabled:

Array#count

Array#length

Data Structure: Array, hash

Algorithm - this works but i think the count variable is not available in the
version on codewars

  return nil if input is empty or nil
  init unique values array of values from input
  init return hash
  for each unique value in input
    hash key = value, hash value = value count
  return hash

Algorithm
  return nil if input is empty or nil
  init counts_hash(0)

=end

# def group_and_count(array)
#   return nil if array.nil? || array.empty?
#   counts_hash = {}
#   values = array.uniq
#   values.each do |num|
#     counts_hash[num] = array.count(num)
#   end
#   counts_hash
# end
#
def group_and_count(array)
  return nil if array.nil? || array.empty?
  counts_hash = Hash.new(0)
  array.each do |num|
    counts_hash[num] += 1
  end
  counts_hash
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}
