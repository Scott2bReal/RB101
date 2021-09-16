MAX_POINTS = 21

def prompt(msg)
  puts "=> #{msg}"
end

def calculate_aces(score)
end

def deck_score(decks, score)
end

def deal_cards(decks)
  card = decks[:deck].keys.sample
  TODO
end

def goodbye
  prompt 'Thanks for playing. Goodbye!'
end

# 1. Initialize deck
decks = {
  deck: {
    1 => 4,
    2 => 4,
    3 => 4,
    4 => 4,
    5 => 4,
    6 => 4,
    7 => 4,
    8 => 4,
    9 => 4,
    10 => { jack: 4, queen: 4, king: 4 },
    11 => { ace: 4 }
  },
  player: {
    1 => 0,
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0,
    7 => 0,
    8 => 0,
    9 => 0,
    10 => { jack: 0, queen: 0, king: 0 },
    11 => { ace: 0 }
  },
  dealer: {
    1 => 0,
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0,
    7 => 0,
    8 => 0,
    9 => 0,
    10 => { jack: 0, queen: 0, king: 0 },
    11 => { ace: 0 }
  }
}

score = { player: 0, dealer: 0 }
loop do
  loop do
    # 2. Deal cards to player and dealer
    deal_cards(decks)

    # 3. Player turn: hit or stay
    #   - Repeat until bust or 'stay'
    player_turn(decks, score[:player])

    # 4. If player bust, dealer wins
    if score[:player] > MAX_POINTS
      break
    end

    # 5. Dealer turn: hit or stay
    dealer_turn(decks, score[:dealer])

    # 6. If dealer bust, player wins
    if score[:dealer] > MAX_POINTS
      break
    end

    # 7. Compare cards and declare winner
    break if winner?(score)
  end
  break unless play_again?
end
goodbye
