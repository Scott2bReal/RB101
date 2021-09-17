MAX_POINTS = 21
CARD_VALUES = {
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'Jack' => 10,
  'Queen' => 10,
  'King' => 10,
  'Ace' => 11,
  :ace_1 => 1
}

def prompt(msg)
  puts "=> #{msg}"
end

def deal_cards(cards, hands)
  until cards.empty?
    hands[:player] << cards.pop
    hands[:dealer] << cards.pop
  end
end

def draw_cards(deck)
  dealt_cards = []
  until dealt_cards.size == 4
    card = deck.keys.sample
    next if deck[card] == 0
    dealt_cards << card
    deck[card] -= 1
  end
  dealt_cards
end

def display_hands(hands)
  player_hand = joinor(hands[:player], ', ', 'and')
  prompt("Dealer has: #{hands[:dealer][0]} and Unknown Card")
  prompt("You have: #{player_hand}")
end

def joinor(array, delim, final)
  all_but_last = []
  array.each do |word|
    all_but_last << word if array.index(word) < array.size - 1
  end
  if all_but_last.empty?
    array.last.to_s
  elsif array.size == 2
    "#{array[0]} #{final} #{array[1]}"
  else
    "#{all_but_last.join(delim)}#{delim}#{final} #{array.last}"
  end
end

def calculate_hand_total(hand)
  card_values = hand.map { |card| CARD_VALUES[card] }
  total = card_values.sum
  if busted?(total) && card_values.include?(CARD_VALUES['Ace'])
    total = calculate_aces(card_values)
  end
  total
end

def calculate_aces(card_values)
  index = 0
  until index == card_values.size - 1
    if card_values[index] == CARD_VALUES['Ace']
      card_values[index] = CARD_VALUES[:ace_1]
    end
    break if card_values.sum <= MAX_WINS
    index += 1
  end
end

def busted?(score)
  return true if score > MAX_POINTS
  false
end

def calculate_score(hands, score)
  hands.keys.each do |hand|
    score[hand] = calculate_hand_total(hands[hand])
  end
end

def goodbye
  prompt 'Thanks for playing. Goodbye!'
end

# 1. Initialize deck
loop do
  deck = {
    '2' => 4,
    '3' => 4,
    '4' => 4,
    '5' => 4,
    '6' => 4,
    '7' => 4,
    '8' => 4,
    '9' => 4,
    'Jack' => 4,
    'Queen' => 4,
    'King' => 4,
    'Ace' => 4
  }

  hands = { player: [], dealer: [] }
  scores = { player: 0, dealer: 0 }

  # 2. Deal cards to player and dealer
  deal_cards(draw_cards(deck), hands)
  display_hands(hands)
  calculate_score(hands, scores)
  p scores

  loop do
    # 3. Player turn: hit or stay
    #   - Repeat until bust or 'stay'

    # 4. If player bust, dealer wins

    # 5. Dealer turn: hit or stay

    # 6. If dealer bust, player wins

    # 7. Compare cards and declare winner
    break
  end
  break
end

goodbye
