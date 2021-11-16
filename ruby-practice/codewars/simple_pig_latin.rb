
# Problem: Move the first letter of each word to the end of it, then add 'ay' to
# the end of the word. Leave punctuation untouched
#
# Rules:
#   - Same string or new?
#   - Can mutate original string?
#
# Input: String
# Output: String converted to pig latin
#
# Data Structure: Array
#
# Algorithm
#   split string into words
#   for each word
#     split word into chars
#     delete first letter, append to array
#     join array
#     append 'ay'
#   return string, joined by space
#
def pig_it(string)
  words = string.split(' ')
  pigged_words = words.map do |word|
    if word.start_with?(/[A-Za-z]/)
      chars = word.chars
      chars.push(chars.delete_at(0)).join('') << 'ay'
    else
      word
    end
  end
  pigged_words.join(' ')
end

p pig_it("O tempora o mores !") == "Oay emporatay oay oresmay !"
p pig_it('Hello world !') == 'elloHay orldway !'
p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
