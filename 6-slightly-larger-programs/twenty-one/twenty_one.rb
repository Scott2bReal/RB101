MAX_POINTS = 21
FACE_CARDS = [:jack, :queen, :king]

def prompt(msg)
  puts "=> #{msg}"
end

def deal_cards(cards, hands)
  hands.keys.map do |hand|
    card = cards.sample
    hands[hand] << card
    cards.delete(card)
  end
  hands
end

def draw_cards(deck)
  dealt_cards = []
  until dealt_cards.size == 2
    card = deck.keys.sample
    next if deck[card] == 0
    dealt_cards << card
  end
  dealt_cards
end

def calculate_aces(score)
end

def deck_score(decks, score)
end

def player_turn(decks, score)
end

def dealer_turn(decks, score)
end

def goodbye
  prompt 'Thanks for playing. Goodbye!'
end

# 1. Initialize deck
deck = {
    2 => 4,
    3 => 4,
    4 => 4,
    5 => 4,
    6 => 4,
    7 => 4,
    8 => 4,
    9 => 4,
    jack: 4, 
    queen: 4, 
    king: 4,
    ace: 4
}

hands = { player: [], dealer: [] }

score = { player: 0, dealer: 0 }
loop do
  loop do
    # 2. Deal cards to player and dealer
    deal_cards(draw_cards(deck), hands)
    break

    ## 3. Player turn: hit or stay
    ##   - Repeat until bust or 'stay'
    #player_turn(decks, score[:player])

    ## 4. If player bust, dealer wins
    #if score[:player] > MAX_POINTS
      #break
    #end

    ## 5. Dealer turn: hit or stay
    #dealer_turn(decks, score[:dealer])

    ## 6. If dealer bust, player wins
    #if score[:dealer] > MAX_POINTS
      #break
    #end

    ## 7. Compare cards and declare winner
    #break if winner?(score)
  #end
  #break unless play_again?
  end
  break
end

goodbye
