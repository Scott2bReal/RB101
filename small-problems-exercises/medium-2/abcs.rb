# Problem: A collection of spelling blocks has two letters per block, as shown
# in this list:
#
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
#
# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used
# once.
#
# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.
#
# Input: String
# Output: boolean (whether word is block word or not)
#
# Rules:
#   - Word cannot contain two letters from block
#   * Capitalization don't matta
#   - Each block can only be used once
#
# Data Structure: Array
#
# Algorithm:
#   Init constant BLOCKS
#   If word contains same letter twice, return false
#   For each letter in word
#     For each block in BLOCKS
#       if block includes letter
#         return false if word includes other letter in block
#   return true

BLOCKS = [
  ['B', 'O'],
  ['X', 'K'],
  ['D', 'Q'],
  ['C', 'P'],
  ['N', 'A'],
  ['G', 'T'],
  ['R', 'E'],
  ['F', 'S'],
  ['J', 'W'],
  ['H', 'U'],
  ['V', 'I'],
  ['L', 'Y'],
  ['Z', 'M']
]

def block_word?(word)
  upper_word = word.upcase
  return false if duplicate_letters?(upper_word)
  upper_word.each_char do |char|
    return false if block_violation?(char, upper_word)
  end
  true
end

def duplicate_letters?(word)
  word.each_char { |char| return true if word.chars.count(char) > 1 }
  false
end

def block_violation?(char, word)
  BLOCKS.each do |block|
    if block.include?(char)
      return true if word.include?(block[block.index(char) - 1])
    end
  end
  false
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
