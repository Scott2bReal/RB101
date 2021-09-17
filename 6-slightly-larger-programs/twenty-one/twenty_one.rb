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

# Makes listing arrays nice and pretty
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
    break if card_values.sum <= MAX_POINTS
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

def player_turn(deck, hands, score)
  total = score
  loop do
    display_hands(hands)
    answer = player_choice
    if answer == '2'
      prompt("You chose to stay!")
      break
    else
      prompt("You said 'Hit me!'")
      hit_me(deck, hands[:player])
      total = calculate_hand_total(hands[:player])
      break if busted?(total)
    end
  end
  total
end

def player_choice
  loop do
    prompt(" 1) Hit or 2) Stay?")
    answer = gets.chomp
    return answer if valid_choice?(answer)
  end
end

def valid_choice?(choice)
  return true if choice == '1'
  return true if choice == '2'
  false
end

def hit_me(deck, hand)
  card = deck.keys.sample
  hand << card
  deck[card] -= 1
end

def dealer_turn(deck, hands, scores)
  until scores[:dealer] >= 17 || scores[:dealer] > scores[:player]
    hit_me(deck, hands[:dealer])
    total = calculate_hand_total(hands[:dealer])
    break if busted?(total)
  end
end

def display_winner(winner)
  if winner == 'player'
    prompt('Congratulations, you win!')
  elsif winner == 'dealer'
    prompt('The dealer won. Better luck next time!')
  else
    prompt("It's a tie!")
  end
end

def play_again?
  loop do
    prompt("Play again? Press 'y' for yes or 'n' for no")
    answer = gets.chomp
    return true if answer.downcase == 'y'
    return false if answer.downcase == 'n'
    prompt("I'm sorry, I didn't understand that.")
  end
end

def goodbye
  prompt 'Thanks for playing. Goodbye!'
end

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
  dealer_wins = false
  player_wins = false

  deal_cards(draw_cards(deck), hands)
  display_hands(hands)
  calculate_score(hands, scores)

  loop do
    player_turn(deck, hands, scores[:player])
    dealer_wins = true if busted?(scores[:player])
    break if dealer_wins

    dealer_turn(deck, hands, scores)
    player_wins = true if busted?(scores[:dealer])
    break if player_wins

    display_hands(hands)
    break
  end

  calculate_score(hands, scores)

  player_wins if scores[:player] > scores[:dealer]
  dealer_wins if scores[:dealer] > scores[:player]

  display_winner('dealer') if dealer_wins
  display_winner('player') if player_wins
  display_winner('tie') unless player_wins || dealer_wins

  break unless play_again?
end

goodbye
