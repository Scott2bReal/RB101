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
| #{board[0]} | #{board[1]} | #{board[2]} |
|---|---|---|
| #{board[3]} | #{board[4]} | #{board[5]} |
|---|---|---|
| #{board[6]} | #{board[7]} | #{board[8]} |
*---+---+---*

MSG
puts box
end

def user_move(board_state)
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
    board_state[answer.to_i - 1] = 'X'
    break
  end
end

def validate_choice(choice, board_state)
  square = board_state[choice.to_i - 1]
  return 'bad' unless choice.match?(/[1-9]/)
  return 'filled' if square == 'X' || square == 'O'
  true
end

def update_board(board_state, choice, player)
  board_state[choice.to_i - 1] = player
end

def computer_move(board_state)
  loop do
    choice = board_state.sample
    return choice 
end

def winner?
  TODO
end

def board_full?
  TODO
end

def play_again?
  TODO
end

def goodbye
  TODO
end

# Game starts here
loop do
new_round

squares = %w(1 2 3 4 5 6 7 8 9)

display_board(squares)
  loop do
    binding.pry

    user_choice = user_move(squares)

    update_board(squares, user_choice, 'X')

    binding.pry

    display_board(squares)

    computer_choice = computer_move(squares)

    update_board(squares, computer_choice, 'O')

    display_board(squares)

    if winner?
      display_winner
      break
    elsif board_full?
      display_tie
      break
    end
  end
  break unless play_again?
  new_round
end

goodbye
