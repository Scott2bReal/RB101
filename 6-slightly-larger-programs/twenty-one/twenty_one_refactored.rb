ROUNDS_TO_WIN = 5
MAX_POINTS = 21
DEALER_LIMIT = 17
INITIAL_DEAL = 2
NUMBER_OF_PLAYERS = 2

GREETING = "*~ Welcome to #{MAX_POINTS}! ~*"

EXPLANATION = <<-MSG
***

  The goal of #{MAX_POINTS} is to get as close to #{MAX_POINTS} points as possible, without
going over. If you go over, it's a "bust" and you lose. The player with the
highest amount of points without going over wins the round.

  The first player to reach #{ROUNDS_TO_WIN} wins is the winner of the match.

  You will be playing against the "dealer". Both you and the dealer are initially
dealt 2 cards. You can always see all of your cards, but will only see one of
the dealer's cards.  

  The number cards are worth their face value, face cards are
all worth 10 points, and aces are worth 11, but are only worth one if they cause
the player to bust.  

  On your turn you will be prompted to either "hit" or "stay". Hitting draws
another card from the deck, while staying means you will compare your current
and with the dealer's hand, after they take their turn.  

***

MSG

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

def scoreboard_header(msg)
  puts "      ### #{msg} ###"
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
  drawn_cards = []
  until drawn_cards.size == INITIAL_DEAL * NUMBER_OF_PLAYERS
    card = Hash.new('')
    card[:card] = deck.keys.sample
    next if deck[card[:card]][:amount] == 0
    assign_suit!(deck, card)
    drawn_cards << card
    deck[card[:card]][:amount] -= 1
  end
  drawn_cards
end

def assign_suit!(deck, card)
  available_suits = deck[card[:card]][:suits].shuffle!
  card[:suit] = available_suits.pop
  card
end

def display_game_status(hands, scores, rounds_won, answer=nil, busted=nil)
  greeting
  player_hand = joinor(translate_hand(hands[:player]), ', ', 'and')
  dealer_hand = translate_hand(hands[:dealer])
  display_rounds_won(rounds_won)
  prompt action_message(answer) if answer
  stylize busted_message(busted) if busted
  prompt("Dealer has: #{dealer_hand.first} and ???")
  prompt("You have: #{player_hand} (Total: #{scores[:player]})")
  print "\n"
end

def translate_hand(hand)
  hand_strings = []
  hand.each do |card|
    name = card[:card]
    suit = card[:suit]
    hand_strings << "[#{suit} #{name}]"
  end
  hand_strings
end

def action_message(answer)
  return 'You said "Hit me"!' if answer == '1'
  return 'You chose to stay' if answer == '2'
end

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

def all_but_last(array)
  most_words = []
  array.each_with_index do |word, idx|
    most_words << word if idx < array.size - 1
  end
  most_words
end

def get_hand_score(hand)
  card_values = hand.map { |card| CARD_VALUES[card[:card]] }
  total = card_values.sum
  if busted?(total) && card_values.include?(CARD_VALUES['Ace'])
    total = calculate_aces(card_values)
  end
  total
end

def calculate_aces(card_values)
  index = 0
  until index == card_values.size
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

def update_score!(scores, new_score, player)
  scores[player] = new_score
end

def calculate_scores(hands, scores)
  hands.keys.each do |hand|
    scores[hand] = get_hand_score(hands[hand])
  end
end

def player_turn(deck, hands, scores, rounds_won)
  total = scores[:player]
  loop do
    answer = player_choice
    if answer == '2' # Player chooses to stay
      break
    else
      hit_me!(deck, hands[:player])
      total = get_hand_score(hands[:player])
      update_score!(scores, total, :player)
      display_game_status(hands, scores, rounds_won, answer)
      break if busted?(total)
    end
  end
  update_score!(scores, total, :player)
  total
end

def player_choice
  loop do
    prompt("1) Hit or 2) Stay?")
    answer = gets.chomp
    return answer if valid_player_choice?(answer)
    prompt("Sorry, I didn't understand that. Please enter 1 or 2")
  end
end

def valid_player_choice?(choice)
  return true if choice == '1'
  return true if choice == '2'
  false
end

def hit_me!(deck, hand)
  loop do
    card = Hash.new('')
    card[:card] = deck.keys.sample
    unless deck[card[:card]][:amount] == 0
      assign_suit!(deck, card)
      hand << card
      deck[card[:card]][:amount] -= 1
      break
    end
  end
end

def dealer_turn(deck, hands, scores)
  total = scores[:dealer]
  until total >= DEALER_LIMIT
    hit_me!(deck, hands[:dealer])
    total = get_hand_score(hands[:dealer])
    break if busted?(total)
  end
  update_score!(scores, total, :dealer)
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

def display_final_hands(hands, scores, rounds_won, busted=nil)
  greeting
  player_hand = joinor(translate_hand(hands[:player]), ', ', 'and')
  dealer_hand = joinor(translate_hand(hands[:dealer]), ', ', 'and')
  display_rounds_won(rounds_won)
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

def display_rounds_won(rounds_won)
  player = rounds_won[:player]
  dealer = rounds_won[:dealer]
  scoreboard_header("ROUNDS WON")
  draw_scoreboard(player, dealer)
end

def continue?
  prompt("Press ENTER to continue")
  answer = gets.chomp
  return true if answer
end

def draw_scoreboard(player, dealer)
  scoreboard = <<-MSG
  *-----------*-----------*
  |           |           |
  | Player: #{player} | Dealer: #{dealer} |
  |           |           |
  *-----------*-----------*
  MSG
  puts scoreboard
end

def update_rounds_won!(rounds_won, player_wins, dealer_wins)
  rounds_won[:player] += 1 if player_wins
  rounds_won[:dealer] += 1 if dealer_wins
end

def ultimate_winner?(rounds_won)
  return true if rounds_won[:player] == ROUNDS_TO_WIN
  return true if rounds_won[:dealer] == ROUNDS_TO_WIN
  false
end

def determine_ultimate_winner(rounds_won)
  player = rounds_won[:player]
  dealer = rounds_won[:dealer]
  player > dealer ? 'player' : 'dealer'
end

def display_ultimate_winner(winner)
  if winner == 'player'
    stylize("Congratulations, you won the whole match!")
  elsif winner == 'dealer'
    stylize("The dealer won the match. Better luck next time!")
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

# Match loop
loop do
  rounds_won = { player: 0, dealer: 0 }

  # Round loop
  loop do
    deck = {
      '2' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '3' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '4' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '5' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '6' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '7' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '8' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      '9' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      'Jack' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      'Queen' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      'King' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) },
      'Ace' => { amount: 4, suits: %w(♠ ♥ ♣ ♦) }
    }

    hands = { player: [], dealer: [] }
    scores = { player: 0, dealer: 0 }
    dealer_wins = false
    player_wins = false

    busted = nil

    deal_cards(draw_cards(deck), hands)
    calculate_scores(hands, scores)
    display_game_status(hands, scores, rounds_won)

    player_turn(deck, hands, scores, rounds_won)
    dealer_wins = true if busted?(scores[:player])
    busted = 'player' if dealer_wins

    dealer_turn(deck, hands, scores) unless dealer_wins
    player_wins = true if busted?(scores[:dealer])
    busted = 'dealer' if player_wins

    case determine_winner(scores, player_wins, dealer_wins)
    when 'player wins' then player_wins = true
    when 'dealer wins' then dealer_wins = true
    end

    update_rounds_won!(rounds_won, player_wins, dealer_wins)
    display_final_hands(hands, scores, rounds_won, busted)
    display_winner(player_wins, dealer_wins)
    continue?

    break if ultimate_winner?(rounds_won)
  end

  display_ultimate_winner(determine_ultimate_winner(rounds_won))
  break unless play_again?
end

clear_screen
goodbye
