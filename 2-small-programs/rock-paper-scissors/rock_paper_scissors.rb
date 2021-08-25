# Some variables for use later

VALID_CHOICES = %w(rock paper scissors spock lizard)

RULES = {
  'rock' => %w(lizard scissors),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'spock' => %w(rock scissors),
  'lizard' => %w(spock paper)
}

score = {player: 0, computer: 0}

# Methods for to do stuff
def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  RULES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie"
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  puts results(choice, computer_choice)



  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing. Good bye!')
