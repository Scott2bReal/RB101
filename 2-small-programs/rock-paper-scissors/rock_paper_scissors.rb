# Up top because RULES needs this
def who_beats_who
  <<-MSG
  Here are the rules:

  Scissors cuts paper. Paper covers rock. Rock crushes lizard. Lizard poisons
  Spock. Spock smashes scissors. Scissors decapitates lizard. Lizard eats paper.
  Paper disproves Spock. Spock vaporizes rock. Rock crushes scissors.

  MSG
end

MAX_WINS = 3

RULES = {
  'explanation' => who_beats_who,
  'Rock' => %w(Lizard Scissors),
  'Paper' => %w(Rock Spock),
  'Scissors' => %w(Paper Lizard),
  'Spock' => %w(Rock Scissors),
  'Lizard' => %w(Spock Paper)
}

VALID_CHOICES = RULES.keys

WINNER_MESSAGE = {
  player: 'You win the match, congratulations!',
  computer: 'The computer wins the match! Better luck next time.'
}

def prompt(message)
  puts("=> #{message}")
end

def greeting
  prompt("Welcome to Rock Paper Scissors Spock Lizard!")
  prompt("You will be playing the computer. First to 3 wins is the victor")
  print "\n"
  prompt(RULES['explanation'])
  print "\n"
end

def display_choices
  <<-MSG
  Choose one of the following:
  1) Rock
  2) Paper
  3) Scissors
  4) Spock
  5) Lizard

  MSG
end

def new_round
  system('clear')
  greeting
end

def player_choice
  loop do
    prompt(display_choices)
    print '=> '

    choice = translate_choice(gets.chomp)

    if VALID_CHOICES.include?(choice)
      return choice
    else
      prompt("That's not a valid choice (select using 1-5)")
    end
  end
end

def translate_choice(str)
  case str
  when '1' then 'Rock'
  when '2' then 'Paper'
  when '3' then 'Scissors'
  when '4' then 'Spock'
  when '5' then 'Lizard'
  end
end

def win?(first, second)
  RULES[first].include?(second)
end

def outcome(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'The computer won!'
  else
    "It's a tie"
  end
end

def update_score(result, tally)
  if result == 'You won!'
    tally[:player] += 1
  elsif result == 'The computer won!'
    tally[:computer] += 1
  end
end

def play_again?
  loop do
    prompt('Press y to play again, or press n to exit')
    print "=> "
    answer = gets.chomp
    return true if answer.downcase == 'y'
    return false if answer.downcase == 'n'
    prompt("Sorry, that wasn't a valid choice")
  end
end

def ultimate_winner(score)
  return WINNER_MESSAGE[:player] if score[:player] == MAX_WINS
  return WINNER_MESSAGE[:computer] if score[:computer] == MAX_WINS
  nil
end

def new_game(score)
  score[:player] = 0
  score[:computer] = 0
  new_round
end

# Game starts here
system('clear')
greeting
score = { player: 0, computer: 0 }
loop do
  choice = player_choice

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice}; The computer chose: #{computer_choice}")

  winner = outcome(choice, computer_choice)

  update_score(winner, score)

  new_round

  prompt("** #{winner} **")

  prompt("The score is Player: #{score[:player]} Computer: #{score[:computer]}")

  if ultimate_winner(score)
    puts ultimate_winner(score)
    break unless play_again?
    new_game(score)
  end
end

prompt('Thanks for playing. Good bye!')
