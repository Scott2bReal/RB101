require 'pry'

EXPLANATION =
  <<-MSG
  ---
  Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn
  and marks a square on the board. First player to reach 3 squares in a row,
  including diagonals, wins. If all 9 squares are marked and no player has 3
  squares in a row, then the game is a tie. You (X) will be playing the computer (O).
  The first to 5 wins is the ultimate winner.
  ---

  MSG

WINNING_COMBOS = [
  %w(1 2 3),
  %w(4 5 6),
  %w(7 8 9),
  %w(1 4 7),
  %w(2 5 8),
  %w(3 6 9),
  %w(1 5 9),
  %w(3 5 7)
]

DANGER_SQUARES = {
  '1' => [%w(2 3), %w(4 7), %w(5, 9)],
  '2' => [%w(1 3), %w(5 8)],
  '3' => [%w(1 2), %w(6 9), %w(5 7)],
  '4' => [%w(1 7), %w(5 6)],
  '5' => [%w(1 9), %w(3 7), %w(4 6), %w(2 8)],
  '6' => [%w(4 5), %w(3 9)],
  '7' => [%w(8 9), %w(1 4), %w(3 5)],
  '8' => [%w(7 9), %w(2 5)],
  '9' => [%w(7 8), %w(3 6), %w( 1 5)]
}

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system('clear')
end

def greeting
  prompt("Welcome to Tic Tac Toe!")
  print("\n")
  puts(EXPLANATION)
end

def refresh_score
  { player: 0, computer: 0 }
end

def new_round
  clear_screen
  greeting
end

def initialize_board
  new_board = { filled: 0, squares: {} }
  (1..9).each { |num| new_board[:squares][num] = num.to_s }
  new_board
end

def display_board(board)
  box = <<-MSG
  *-----------*
  | #{board[:squares][1]} | #{board[:squares][2]} | #{board[:squares][3]} |
  |---+---+---|
  | #{board[:squares][4]} | #{board[:squares][5]} | #{board[:squares][6]} |
  |---+---+---|
  | #{board[:squares][7]} | #{board[:squares][8]} | #{board[:squares][9]} |
  *-----------*

  MSG
  puts box
end

def display_score(score)
  prompt("** Player: #{score[:player]}, Computer: #{score[:computer]} **")
end

def user_move(board_state)
  answer = ''
  loop do
    prompt("Please enter the number of the box you would like to fill")
    answer = gets.chomp
    if validate_choice(answer, board_state) == 'filled'
      prompt('Sorry, that box has already been filled')
      next
    elsif validate_choice(answer, board_state) == 'bad'
      prompt("Sorry, that doesn't look like a valid box number")
      next
    end
    board_state[:squares][answer.to_i] = 'X'
    break
  end
  answer
end

def validate_choice(choice, board_state)
  square = board_state[:squares][choice.to_i]
  return 'bad' unless choice.match?(/[1-9]/) && choice.size == 1
  return 'filled' if square == 'X' || square == 'O'
  'good'
end

def update_player_squares(board, choice, player_squares)
  player_squares << choice
  player_squares.sort!
  board[:filled] += 1
end

def update_computer_squares(board, choice, computer_squares)
  computer_squares << choice
  computer_squares.sort!
  board[:filled] += 1
end

def update_board(board_state, choice, player)
  board_state[:squares][choice.to_i] = player
end

def update_score(score, player_wins, computer_wins)
  if player_wins
    score[:player] += 1
  elsif computer_wins
    score[:computer] += 1
  end
end

def computer_move(board_state, player_squares)
  available_squares = []
  board_state[:squares].values.each do |square|
    unless square == 'X' || square == 'O'
      available_squares << square
    end
  end
  choice = available_squares.sample
  available_squares.each do |square|
    player_squares.combination(2) do |combo|
      choice = square if DANGER_SQUARES[square].include?(combo)
    end
  end
  choice
end

def player_wins?(player)
  wins = false
  WINNING_COMBOS.each do |combo|
    player.sort.combination(3) { |perm| wins = true if perm == combo }
  end
  wins
end

def computer_wins?(computer)
  wins = false
  WINNING_COMBOS.each do |combo|
    computer.sort.combination(3) { |perm| wins = true if perm == combo }
  end
  wins
end

def board_full?(filled)
  return true if filled == 9
  false
end

def display_winner(winner)
  prompt('Congratulations, you win!') if winner == 'player'
  prompt('The computer wins. Better luck next time!') if winner == 'computer'
  prompt("It's a tie!") if winner == 'tie'
end

def ultimate_winner?(score)
  return true if score[:player] == 5
  return true if score[:computer] == 5
end

def play_again?
  loop do
    prompt("Play again? Press 'y' to play again or 'n' to quit")
    answer = gets.chomp
    if answer.downcase == 'y'
      return true
    elsif answer.downcase == 'n'
      return false
    else
      prompt("Sorry, I didn't understand that")
    end
  end
end

def goodbye
  prompt('Thanks for playing, goodbye!')
end

# Game starts here
# Score needs initialize before main loop
score = { player: 0, computer: 0 }
loop do
  # Fresh variables for a new game
  board_status = initialize_board
  user_squares = []
  computer_squares = []
  player_wins = false
  computer_wins = false
  if ultimate_winner?(score)
    score = refresh_score
  end

  loop do
    new_round

    display_board(board_status)

    display_score(score)

    user_choice = user_move(board_status)

    update_player_squares(board_status, user_choice, user_squares)

    update_board(board_status, user_choice, 'X')

    # player_wins needs to be set before board_full break
    player_wins = player_wins?(user_squares)

    break if board_full?(board_status[:filled])

    break if player_wins

    computer_choice = computer_move(board_status, user_squares)

    update_computer_squares(board_status, computer_choice, computer_squares)

    update_board(board_status, computer_choice, 'O')

    computer_wins = computer_wins?(computer_squares)

    break if computer_wins
  end
  new_round

  display_board(board_status)

  if player_wins
    display_winner('player')
  elsif computer_wins
    display_winner('computer')
  else
    display_winner('tie')
  end

  update_score(score, player_wins, computer_wins)
  display_score(score)

  if ultimate_winner?(score)
    break unless play_again?
  end
end

goodbye
