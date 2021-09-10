require 'pry'

EXPLANATION = 
  <<-MSG
  ---
  Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn
  and marks a square on the board. First player to reach 3 squares in a row,
  including diagonals, wins. If all 9 squares are marked and no player has 3
  squares in a row, then the game is a tie. You (X) will be playing the computer (O).
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

def new_round
  clear_screen
  greeting
end

def display_board(board)
box = <<-MSG
*---+---+---*
| #{board[:squares][1]} | #{board[:squares][2]} | #{board[:squares][3]} |
|---|---|---|
| #{board[:squares][4]} | #{board[:squares][5]} | #{board[:squares][6]} |
|---|---|---|
| #{board[:squares][7]} | #{board[:squares][8]} | #{board[:squares][9]} |
*---+---+---*

MSG
puts box
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
  return 'bad' unless choice.match?(/[1-9]/)
  return 'filled' if square == 'X' || square == 'O'
  return 'good'
end

def update_filled_squares(board, choice, player, user_squares, computer_squares)
  user_squares[choice.to_i] = choice if player == 'user'
  computer_squares[choice.to_i] = choice if player == 'computer'
  board[:filled] += 1
end

def update_board(board_state, choice, player)
  board_state[:squares][choice.to_i] = player
end

def computer_move(board_state)
  squares = board_state[:squares].values
  loop do
    choice = squares.sample
    return choice if validate_choice(choice, board_state) == 'good'
  end
end

def winner?
  TODO
end

def board_full?(filled)
  return true if filled == 9
  false
end

def play_again?
  TODO
end

def goodbye
  prompt('Thanks for playing, goodbye!')
end

# Game starts here
loop do

board_status = { 
  :squares => {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
  },
  :filled => 0
}
user_squares = []
computer_squares = []

  loop do
    new_round

    display_board(board_status)

    user_choice = user_move(board_status)

    update_filled_squares(board_status, user_choice, 'player', user_squares, computer_squares)

    update_board(board_status, user_choice, 'X')

    board_full?(board_status[:filled])

    computer_choice = computer_move(board_status)

    update_filled_squares(board_status, computer_choice, 'computer', user_squares, computer_squares)

    update_board(board_status, computer_choice, 'O')

#     if winner?
#       display_winner
#       break
#     elsif board_full?
#       display_tie
#       break
#     end
#   end
#   break unless play_again?
#   new_round
  end
end

goodbye
