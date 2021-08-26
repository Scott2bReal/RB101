# Some variables for use later

VALID_CHOICES = %w(rock paper scissors spock lizard)

RULES = {
  'rock' => %w(lizard scissors),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'spock' => %w(rock scissors),
  'lizard' => %w(spock paper)
}

score = { player: 0, computer: 0 }

# Methods for to do stuff

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
  if str.start_with?('r')
    'rock'
  elsif str.start_with?('p')
    'paper'
  elsif str.start_with?('sc')
    'scissors'
  elsif str.start_with?('sp')
    'spock'
  elsif str.start_with?('l')
    'lizard'
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")

    choice = translate_choice(gets.chomp)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  winner = outcome(choice, computer_choice)

  prompt(winner)

  keep_score(winner, score)

  prompt("The score is Player: #{score[:player]} Computer: #{score[:computer]}")

  if score[:player] == 3
    prompt('You win the match! Congratulations!')
    break
  elsif score[:computer] == 3
    prompt('The computer wins! Better luck next time.')
    break
  end
end

prompt('Thanks for playing. Good bye!')
