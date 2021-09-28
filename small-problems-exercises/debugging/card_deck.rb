# We started working on a card game but got stuck. Check out why the code below
# raises a TypeError.

# Once you get the program to run and produce a sum, you might notice that the
# sum is off: It's lower than it should be. Why is that?
#
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { hearts: cards.clone,
         diamonds: cards.clone,
         clubs: cards.clone,
         spades: cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum

# The first issue I see is that the cards array is being used for every suit,
# and is being mutated by the .pop call inside of the block passed to .each.
# This is affecting the pool of cards for every suit, not just the one that is
# the current focus of the iteration. This is the reason for the sum being too
# low at the end of the program when the TypeError has been sorted. This can be
# solved by setting a clone of the cards array as the value for each key in the
# deck hash upon declaration. The TypeError is a result of the map call on
# remaining_cards. It is not permanent (i.e.  calling map!) and the new array is
# not saved to a variable, so the remaining_cards array still contains symbols
# instead of integers.
