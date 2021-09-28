# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?
#
# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end
# 
#   words.join(' ')
# end
#
# def negative?(word)
#   ['dull',
#    'boring',
#    'annoying',
#    'chaotic'].include?(word)
# end
#
# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
#
# The words array is being mutated during iteration, so boring gets skipped
# because it moves to the index previously occupied by the delted 'dull'. Each
# then moves on to the next numerical index

def neutralize(sentence)
  words = sentence.split(' ')
  new_words = []
  words.each do |word|
    new_words << word unless negative?(word)
  end
  new_words.join(' ')
end

def negative?(word)
  ['dull',
   'boring',
   'annoying',
   'chaotic'].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
