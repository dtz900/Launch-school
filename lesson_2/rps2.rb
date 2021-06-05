ABBREVIATIONS = {
  r: :rock,
  p: :paper,
  sc: :scissors,
  l: :lizard,
  sp: :spock
}

WIN_LOGIC = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  spock: [:scissors, :rock],
  lizard: [:spock, :paper]
}

# WINNING_MOVES = {
#   'paper' => { 'rock' => 'covers', 'Spock' => 'disproves' },
#   'scissors' => { 'paper' => 'cuts', 'lizard' => 'decapitates' },
#   'lizard' => { 'paper' => 'eats', 'Spock' => 'poisons' },
#   'Spock' => { 'scissors' => 'smashes', 'rock' => 'vaporizes' },
#   'rock' => { 'scissors' => 'crushes', 'lizard' => 'smashes' }
# }

WIN_SCORE = 5

VALID_Y_OR_N = ['y', 'yes', 'n', 'no']

def clear_screen
  system('clear')
end

def prompt(message)
  puts "=> #{message}"
end

def display_greeting
  greeting = <<-MSG
  *** Welcome to Rock, Paper, Scissors, Lizard, Spock! ***
  MSG
  puts(greeting)
end

def display_rules
  puts <<-MSG
  
  **************************RULES****************************
  |                                                         |
  | Rock crushes Scissors,      Rock crushes Lizard,        |
  | Paper covers Rock,          Paper disproves Spock,      |
  | Scissors cuts Paper,        Scissors decapitates Lizard,|
  | Lizard poisons Spock,       Lizard eats Paper,          |
  | Spock smashes Scissors,     Spock vaporizes Rock,       |
  |                                                         |
  ***********************************************************
  
  MSG
end

def display_choices(player_choice, computer_choice)
  prompt "You chose: #{player_choice}; Computer chose: #{computer_choice}."
end

def display_result(round_winner)
  if round_winner == :player
    prompt "You won!"
  elsif round_winner == :computer
    prompt "You lost."
  else
    prompt "It's a tie."
  end
end

def display_scoreboard(score)
  scoreboard = <<-MSG
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Player wins: #{score[:player]} | Computer wins: #{score[:computer]}
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  MSG
  puts scoreboard
end

def display_overall_winner(score)
  if score[:player] == WIN_SCORE
    prompt "Congratulations you won!"
  else
    prompt "The Computer won, better luck next time."
  end
end

def goodbye_message
  prompt "Thanks for playing. Goodbye!"
end

def game_over?(score)
  score[:player] == WIN_SCORE || score[:computer] == WIN_SCORE
end

def win?(first, second)
  WIN_LOGIC[first].include?(second)
end

def win_round(player_choice, computer_choice)
  if win?(player_choice, computer_choice)
    :player
  elsif win?(computer_choice, player_choice)
    :computer
  end
end

def increment_score(winner, score)
  score[winner] += 1 unless winner.nil?
end

def get_player_choice
  loop do
    prompt "Please make your selection:
      --Enter 'r' for rock, 'p' for paper', 'sc' for scissors,
      --'l' for lizard, and 'sp' for spock."
    player_choice = gets.chomp.downcase.strip.to_sym
    if WIN_LOGIC.keys.include?(player_choice)
      return player_choice
    elsif ABBREVIATIONS.keys.include?(player_choice)
      return ABBREVIATIONS[player_choice]
    end
    prompt "That's not a valid choice"
  end
end

def play_again
  loop do
    prompt "Would you like to play agian? (Y/N)"
    input = gets.chomp.strip.downcase
    if VALID_Y_OR_N.include?(input)
      return input.start_with?('y')
    end
    prompt "Please enter Y or N."
  end
end

def play_round(score)
  player_choice = get_player_choice
  computer_choice = WIN_LOGIC.keys.sample
  round_winner = win_round(player_choice, computer_choice)
  increment_score(round_winner, score)
  clear_screen
  display_rules
  display_choices(player_choice, computer_choice)
  sleep 1
  display_result(round_winner)
  sleep 1
  display_scoreboard(score)
end

loop do
  clear_screen
  display_greeting
  sleep 2.5
  display_rules
  score = { player: 0, computer: 0 }
  until game_over?(score)
    play_round(score)
  end
  sleep 1.5
  display_overall_winner(score)
  break unless play_again
end

goodbye_message
