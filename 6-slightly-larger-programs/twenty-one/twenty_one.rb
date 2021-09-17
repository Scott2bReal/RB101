GREETING = "*~ Welcome to Twenty-One! ~*"

EXPLANATION = <<MSG
***
  The goal of Twenty-one is to get as close to 21 points as possible, without
going over. If you go over 21, it's a "bust" and you lose. You will be playing
against the "dealer". Both you and the dealer are initially dealt 2 cards. You
can always see all of your cards, but will only see one of the dealer's cards.
The number cards are worth their face value, face cards are all worth 10 points,
and aces are worth 11, but are only worth one if they cause the player to bust.
On your turn you will be prompted to either "hit" or "stay". Hitting draws
another card from the deck, while staying means you will compare your current
and with the dealer's hand, after they take their turn.  
***

MSG

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
  :low_ace => 1
}

def prompt(msg)
  puts "=> #{msg}"
end

def stylize(msg)
  puts "\n** #{msg} **"
  print "\n"
end

def greeting
  clear_screen
  puts GREETING
  print "\n"
  puts EXPLANATION
end

def clear_screen
  system('clear')
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

def display_game_status(hands, answer=nil, busted=nil)
  greeting
  player_hand = joinor(hands[:player], ', ', 'and')
  prompt action_message(answer) if answer
  stylize busted_message(busted) if busted
  prompt("Dealer has: #{hands[:dealer][0]} and Unknown Card")
  prompt("You have: #{player_hand} (Total: #{get_hand_score(hands[:player])})")
  print "\n"
end

def action_message(answer)
  return 'You said "Hit me"!' if answer == '1'
  return 'You chose to stay' if answer == '2'
end

# Makes listing arrays nice and pretty
def joinor(array, delim, final)
  most_words = all_but_last(array)
  if most_words.empty?
    array.last.to_s
  elsif array.size == 2
    "#{array[0]} #{final} #{array[1]}"
  else
    "#{most_words.join(delim)}#{delim}#{final} #{array[-1]}"
  end
end

# Helper for joinor
def all_but_last(array)
  most_words = []
  array.each_with_index do |word, idx|
    most_words << word if idx < array.size - 1
  end
  most_words
end

def get_hand_score(hand)
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
    # Ace can be 11 or 1, defaults to 11
    if card_values[index] == CARD_VALUES['Ace']
      card_values[index] = CARD_VALUES[:low_ace]
    end
    break if card_values.sum <= MAX_POINTS
    index += 1
  end
  card_values.sum
end

def busted?(score)
  return true if score > MAX_POINTS
  false
end

def busted_message(who)
  if who == 'player'
    "You busted!"
  else
    "The dealer busted!"
  end
end

def update_score(scores, new_score, player)
  scores[player] = new_score
end

def calculate_scores(hands, scores)
  hands.keys.each do |hand|
    scores[hand] = get_hand_score(hands[hand])
  end
end

def player_turn(deck, hands, scores)
  total = scores[:player]
  loop do
    answer = player_choice
    if answer == '2' # Player chooses to stay
      break
    else
      hit_me(deck, hands[:player])
      total = get_hand_score(hands[:player])
      display_game_status(hands, answer) # Update so player can see their hand
      break if busted?(total)
    end
  end
  update_score(scores, total, :player)
  total
end

def player_choice
  loop do
    prompt("1) Hit or 2) Stay?")
    answer = gets.chomp
    return answer if valid_player_choice?(answer)
    prompt("Sorry, I didn't understand that")
  end
end

def valid_player_choice?(choice)
  return true if choice == '1'
  return true if choice == '2'
  false
end

def hit_me(deck, hand)
  loop do
    card = deck.keys.sample
    unless deck[card] == 0
      hand << card
      deck[card] -= 1
      break
    end
  end
end

def dealer_turn(deck, hands, scores)
  total = scores[:dealer]
  until total >= 17
    hit_me(deck, hands[:dealer])
    total = get_hand_score(hands[:dealer])
    break if busted?(total)
  end
  update_score(scores, total, :dealer)
  total
end

def determine_winner(scores, player_wins, dealer_wins)
  player = scores[:player]
  dealer = scores[:dealer]
  return nil if player_wins || dealer_wins # Already determined if one is true
  return 'player wins' if player > dealer
  return 'dealer wins' if dealer > player
  'tie'
end

def display_final_hands(hands, scores, busted=nil)
  greeting
  player_hand = joinor(hands[:player], ', ', 'and')
  dealer_hand = joinor(hands[:dealer], ', ', 'and')
  stylize busted_message(busted) if busted
  prompt("Dealer had: #{dealer_hand}, totaling #{scores[:dealer]}")
  prompt("You had: #{player_hand}, totaling #{scores[:player]}")
end

def display_winner(player_wins, dealer_wins)
  if player_wins
    stylize('Congratulations, you win!')
  elsif dealer_wins
    stylize('The dealer won. Better luck next time!')
  else
    stylize("It's a tie!")
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

# Main loop
loop do
  # Initialize deck and refresh variables on new round
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
  busted = nil # Used for final outcome message specificity

  # Game starts here
  greeting

  deal_cards(draw_cards(deck), hands)
  display_game_status(hands)
  calculate_scores(hands, scores)

  player_turn(deck, hands, scores)
  dealer_wins = true if busted?(scores[:player])
  busted = 'player' if dealer_wins

  dealer_turn(deck, hands, scores) unless dealer_wins
  player_wins = true if busted?(scores[:dealer])
  busted = 'dealer' if player_wins

  case determine_winner(scores, player_wins, dealer_wins)
  when 'player wins' then player_wins = true
  when 'dealer wins' then dealer_wins = true
  end

  display_final_hands(hands, scores, busted)
  display_winner(player_wins, dealer_wins)

  break unless play_again?
end

clear_screen
goodbye
