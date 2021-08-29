RULES = {
  'Rock' => %w(Lizard Scissors),
  'Paper' => %w(Rock Spock),
  'Scissors' => %w(Paper Lizard),
  'Spock' => %w(Rock Scissors),
  'Lizard' => %w(Spock Paper)
}

VALID_CHOICES = RULES.keys

score = { player: 0, computer: 0 }

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  RULES[first].include?(second)
end

def outcome(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie"
  end
end

def keep_score(result, tally)
  if result == 'You won!'
    tally[:player] += 1
  elsif result == 'Computer won!'
    tally[:computer] += 1
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

def play_again?
  prompt('Press y to play again, or any key to exit')
  answer = gets.chomp
  answer.downcase == 'y'
end

def greeting
  prompt("Welcome to Rock Paper Scissors Spock Lizard!")
  prompt("You will be playing the computer. First to 3 wins is the victor")
  print "\n"
end

def new_game(score)
  score[:player] = 0
  score[:computer] = 0
  system('clear')
end

def player_choice
  loop do
    prompt("Choose one: 1) Rock 2) Paper 3) Scissors 4) Spock 5) Lizard")

    choice = translate_choice(gets.chomp)

    if VALID_CHOICES.include?(choice)
      return choice
    else
      prompt("That's not a valid choice (select using 1-5)")
    end
  end
end

# Game starts here
system('clear')
greeting
loop do
  choice = player_choice

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  winner = outcome(choice, computer_choice)

  prompt(winner)

  keep_score(winner, score)

  prompt("The score is Player: #{score[:player]} Computer: #{score[:computer]}")

  if score[:player] == 3
    prompt('You win the match! Congratulations!')
    break unless play_again?
    new_game(score)
    greeting
  elsif score[:computer] == 3
    prompt('The computer wins! Better luck next time.')
    break unless play_again?
    new_game(score)
    greeting
  end
end

prompt('Thanks for playing. Good bye!')
